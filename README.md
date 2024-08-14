# Introduction
This repository contains code to design typst documents the way I did using LaTeX. Since Typst has a lot of potential, I decided to translate some of my LaTeX definitions to Typst. This repository is a work in progress and will be updated as I continue to work on it.

# Table of Contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [Examples](#examples)

# Installation
To install the package, clone the repository to your local Typst installation. The path usually follows `{data-dir}/typst/packages/{namespace}/{name}/{version}`, where `{data-dir}` is given depending on your operating system. See
- `$XDG_DATA_HOME` or `~/.local/share` on Linux
- `~/Library/Application Support` on macOS
- `%APPDATA%` on Windows

This specific repository is at the level of `packages` in the above path and therefore contains _namespaces_ with their respective _names_ and _versions_. For more detail see the official Typst documentation for [local packages](https://github.com/typst/packages?tab=readme-ov-file#local-packages). 

# Usage
The packages usage is straightforward, using Typst package management system. Just type 
```
#import "@environments/boxdef:0.1.0": *
```
to use the package `boxdef` in version `0.1.0` from the namespace `environments`. The `*` is a wildcard to import all definitions from the package.


# Examples
A quick example for the definition environment in `boxdef` could be:
```
#import "@environments/boxdef:0.1.0": *

#set heading(numbering: "1.")

#definitionsbox(
  "Neue Definition",
  [
    Das hier ist eine Definition, welche die vordefinierte Box nutzt, *OHNE* jemals speziell in diesem Dokment definiert worden zu sein.
  ]
)
```