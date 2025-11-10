# Seasonal Difference-Equation (QR-only) — Starter

This repository is a minimal, **QR-only** MATLAB starter for the project described in this [PDF](./problem/main.pdf).

## About the Starter Code

You are strongly advised to **clone this repository**, read all the files, and understand their purpose.

## Beware: the code does not solve the posed problem

The code provided solves a restricted version of the problem. Figure our what the
limitation is and modify the supplied code to solve the correct problem.

### Repository Structure

The layout of the top folder in the repository promotes good coding practices by discouraging "spaghetti code":

- **src**: This folder implements all supporting ("library") code. Each piece of code is encapsulated in a function with a clear interface (inputs and outputs), and no global variables are used.

- **scripts**: This folder implements "drivers" for the code in the `src` folder. These files are intended for tasks such as visualization and obtaining final results.

- **tests**: This folder contains unit tests, which test the smallest units of functionality (typically, the functions in the `src` folder). 
  - MATLAB unit tests are run using the command `runtests`. 
  - Ensure that your code passes all unit tests and add new tests as necessary.
  - Note that the MATLAB unit testing framework resembles `pytest` in Python; by issuing one command, all unit tests will be executed.

## Autograding

Please examine the file [grade.m](./scripts/grade.m). 

In particular, ensure that an autograder can call **all functions** referenced in this file, and that the semantics of these functions remain unchanged. The actual autograder will be similar, but it may use different data. Your code should be capable of automatically handling different cities as listed here: [City Data](https://zenodo.org/records/7826348). The actual data is here: [Utility Data](https://github.com/reneeobringer/ClimateAnalogs_WEN/tree/v1.0.0/UtilityData).
