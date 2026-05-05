# README #

This README would normally document whatever steps are necessary to get your application up and running.

### What is this repository for? ###

* Quick summary
* Version
* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)

### How do I get set up? ###

* Summary of set up
* Configuration
* Dependencies
* Database configuration
* How to run tests
* Deployment instructions

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Repo owner or admin
* Other community or team contact

### How to run Docker and Examples ###

The project uses a fully isolated Linux container with SPIN pre-installed. The recommended workflow is to use an interactive shell inside the container so you can freely navigate the examples and run verification commands.

## 1. Build the Docker Image ##

Run this command from the root of the repository to build the image (you only need to do this once, or when dependencies change):

**BUILD:**

``` bash 
docker build -t fmaise-spin . 
```

**RUN:**

``` bash
 docker run -it --rm fmaise-spin /bin/bash  
```
### Project Structure & Navigation ###

Once you start the interactive Docker container using the `run` command, you are placed inside the `/app` directory, which is a perfect mirror of this repository. You can move freely across the folders using standard Linux commands (like `cd` and `ls`).

The core of the project is located in the `seminars` directory. It is organized into multiple sub-folders, one for each seminar session (`seminar-1`, `seminar-2`, etc.). 

Every seminar folder follows this exact same structure:

```text
/app
└── seminars/
    ├── seminar-1/
    │   ├── presentation/  # PDF slides for the seminar
    │   ├── examples/      # Promela (.pml) source models discussed in the slides
    │   └── scripts/       # Shell/Python scripts to easily compile and run the examples
    ├── seminar-2/
    │   ├── presentation/
    │   ├── examples/
    │   └── scripts/
    └── ...
```

You can move to the specific seminar's script folder:

``` bash
cd seminars/seminar-2/scripts/
```

And execute a script:

``` bash
./run_tsp_1000.sh 
```
