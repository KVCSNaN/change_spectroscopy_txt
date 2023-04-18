# Change spectroscopy output txt file

## Purpose

The script changes all "," in the txt files to "." and rewrite the original file in the current working directory

## Usage

### Linux: 
Rscript /directory/spektroszkop.R

- Copy into current working directory
- You may specify where the R script located

### Rgui:  
setwd("C:/working_directory/")   
system(command="Rscript C:/spektroszkop.R") 

- You may change to the directory where the txt files are located
- You have to give the path of the R script to run the system command
