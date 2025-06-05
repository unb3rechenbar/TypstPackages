# Introduction
This repository contains code to design typst documents the way I did using LaTeX. Since Typst has a lot of potential, I decided to translate some of my LaTeX definitions to Typst. This repository is a work in progress and will be updated as I continue to work on it.

# Table of Contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [Versions](#versions)
4. [Examples](#examples)

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
to use the package `boxdef` in version `0.1.0` from the namespace `environments`. The `*` is a wildcard to import all definitions contained in the package. You can also import specific definitions by replacing `*` with the name of the definition you want to use.


# Versions
Notice that there are multiple versions of the same package available, as you can see in the repository tree. My intent is to assure backwards compatibility by introducing legacy code, which may not always be possible.

# Examples
A quick example for the definition environment in `boxdef` could be:
```
#import "@environments/boxdef:0.2.1": *

#mdef("My First Definition")[
   We call a manifold $M$ _my way_ if it has _this_ fancy property.
]

```
