# testing instructions
source: https://chocolatey.org/courses/creating-chocolatey-packages/building-testing-and-pushing
run
- choco pack
- choco install packageName -dv -s .
