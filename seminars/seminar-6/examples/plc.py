import sys
import subprocess
import os

# Define the strictly valid states for each tank based on the Promela process logic
VALID_STATES = {
    "B1": ["cempty", "sol42C", "sol84C"],
    "B2": ["cempty", "water28C", "water56C"],
    "B3": ["cempty", "sol42C", "water28C", "sol70C"],
    "B4": ["cempty", "sol70C", "sol140C"],
    "B5": ["cempty", "sol70C", "sol42H"],
    "B6": ["cempty", "water28C", "water56C", "water28H", "water56H"],
    "B7": ["cempty", "sol42C", "sol84C", "sol42H", "sol84H"]
}

# Define pre-selected configurations (Presets)
PRESETS = {
    "1": {
        "name": "Default (Paper Configuration)",
        "desc": "B1 has half solution, B2 has half water. Rest empty.",
        "states": {
            "B1": "sol42C", "B2": "water28C", "B3": "cempty",
            "B4": "cempty", "B5": "cempty", "B6": "cempty", "B7": "cempty"
        }
    },
    "2": {
        "name": "Empty Start",
        "desc": "All tanks are completely empty.",
        "states": {
            "B1": "cempty", "B2": "cempty", "B3": "cempty",
            "B4": "cempty", "B5": "cempty", "B6": "cempty", "B7": "cempty"
        }
    },
    "3": {
        "name": "Maximum Capacity Start",
        "desc": "B1 and B2 are completely full. Rest empty.",
        "states": {
            "B1": "sol84C", "B2": "water56C", "B3": "cempty",
            "B4": "cempty", "B5": "cempty", "B6": "cempty", "B7": "cempty"
        }
    },
    "4": {
        "name": "Mid-Cycle Pipeline",
        "desc": "Fluids are already processing in Buffer (B4) and Coolers (B6).",
        "states": {
            "B1": "cempty", "B2": "cempty", "B3": "cempty",
            "B4": "sol140C", "B5": "cempty", "B6": "water56H", "B7": "cempty"
        }
    }
}

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def get_user_choice():
    """Displays an interactive menu and captures the user's choice."""
    while True:
        clear_screen()
        print("=========================================================")
        print("      PLC Schedule Verification - Configuration Menu     ")
        print("=========================================================\n")
        
        for key, preset in PRESETS.items():
            print(f"  [{key}] {preset['name']}")
            print(f"      - {preset['desc']}\n")
            
        print("  [5] Custom Tank Configuration")
        print("      - Manually enter the state for each of the 7 tanks.\n")
        print("  [0] Exit")
        print("=========================================================")
        
        choice = input("\nEnter your choice (0-5): ").strip()
        
        if choice == '0':
            print("Exiting...")
            sys.exit(0)
        elif choice in PRESETS:
            return PRESETS[choice]["states"]
        elif choice == '5':
            return get_custom_config()
        else:
            input("Invalid choice. Press Enter to try again...")

def get_custom_config():
    """Allows the user to manually enter states for all 7 tanks."""
    clear_screen()
    print("=========================================================")
    print("                Custom Tank Configuration                ")
    print("=========================================================\n")
    
    custom_states = {}
    for tank, valid_choices in VALID_STATES.items():
        while True:
            print(f"Valid states for {tank}: {', '.join(valid_choices)}")
            choice = input(f"Enter state for {tank} [default: {valid_choices[0]}]: ").strip()
            
            if choice == "":
                custom_states[tank] = valid_choices[0]
                break
            elif choice in valid_choices:
                custom_states[tank] = choice
                break
            else:
                print(f"--> Error: '{choice}' is not valid for {tank}.\n")
                
    print("\nCustom configuration saved.\n")
    return custom_states


    return max_depth, mem_limit_mb

def generate_promela_model(states, template_path="plc.pml", output_path="run_model.pml"):
    """Reads a Promela template, injects the initial configuration, and saves the executable model."""
    print("\n[+] Generating Promela Model...")
    try:
        with open(template_path, 'r') as file:
            promela_code = file.read()
    except FileNotFoundError:
        print(f"Error: Could not find template file '{template_path}'.")
        sys.exit(1)
        
    init_state_str = " ; ".join([f"{tank}={state}" for tank, state in states.items()])
    promela_code = promela_code.replace("@@INIT_STATE@@", init_state_str)
    
    with open(output_path, 'w') as file:
        file.write(promela_code)
        
    print(f"[+] Model generated successfully: {output_path}")
    return output_path

def run_spin_verification(model_path, max_depth, mem_limit_mb):
    """Runs SPIN safety verification with custom bounds."""
    print(f"\n[1/3] Translating {model_path} to C verifier using SPIN...")
    try:
        subprocess.run(["spin", "-a", model_path], check=True, stdout=subprocess.DEVNULL)
    except FileNotFoundError:
        print("Error: 'spin' command not found. Please ensure SPIN is installed.")
        sys.exit(1)
    except subprocess.CalledProcessError as e:
        print(f"SPIN Translation Error: {e}")
        sys.exit(1)

    print(f"[2/3] Compiling the verifier with a {mem_limit_mb}MB memory limit...")
    try:
        gcc_command = ["gcc", "-O2", f"-DMEMLIM={mem_limit_mb}", "-o", "pan", "pan.c"]
        subprocess.run(gcc_command, check=True, stdout=subprocess.DEVNULL)
    except FileNotFoundError:
        print("Error: 'gcc' compiler not found.")
        sys.exit(1)
    except subprocess.CalledProcessError as e:
        print(f"Compilation Error: {e}")
        sys.exit(1)

    print(f"[3/3] Executing safety verification (Max Depth: {max_depth})...")
    print("---------------------------------------------------\n")
    try:
        pan_command = ["./pan", f"-m{max_depth}"]
        result = subprocess.run(pan_command, capture_output=True, text=True, check=True)
        print(result.stdout)
        
        if result.stderr:
            print("\nWarnings/Errors during execution:")
            print(result.stderr)
            
    except subprocess.CalledProcessError as e:
        print(f"Verification encountered a deadlock or assertion violation:\n")
        print(e.stdout)

if __name__ == "__main__":
    # 1. Get the Tank Configuration from the User
    tank_states = get_user_choice()
    
    # 2. Get the Search Depth and Memory Limits
    max_depth, mem_limit_mb = 100000, 4096  # Default values
    
    # 3. Generate the Promela Code
    output_model = generate_promela_model(tank_states)
    
    # 4. Run the Verification Pipeline
    run_spin_verification(output_model, max_depth=max_depth, mem_limit_mb=mem_limit_mb)