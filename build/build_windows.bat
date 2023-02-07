rem Compile to PDF on Windows
@echo off
set "project-name=swim"
set "project-name-ext=swim.tex"

cd..

xelatex %project-name-ext%
biber   %project-name%
xelatex %project-name-ext%
xelatex %project-name-ext%