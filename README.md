# Makefile Example

This is an example of multi-language, research-oriented programming structured by `makefiles`. The following software is required: 

- `GNU Make`, which is present on all Unix machines. 
- `python` with the `pandas` module
- `R` with the `ggplot2` package

After cloning into a directory, open a terminal in that directory and type `make all`. The following things should happen: 

- A sequence of commands executes in your terminal
- A number of directories are created and populated
- One of these is pdf, which contains `paper.pdf`. This is the "final product."

The file `paper.pdf` contains some further reflections on the benefits of makefiles. 

This repository is heavily informed by Jenny Bryan's [excellent materials](http://stat545.com/automation04_make-activity.html) on automating data pipelines in her Stat 545 course. 