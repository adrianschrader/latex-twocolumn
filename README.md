# latex-twocolumn
A project prototype for a basic scientific paper with two columns. Some packages for the bibliography, syntax highlighting, font settings and figure management are already configured.

You will need a LaTeX distribution (especially ```latexmk```, ```xelatex```, and ```chktex```) and the UNIX ```make``` tool. The current Makefile is only tested on macOS Sierra and has the following build targets:
```bash
make pdf        # Generate pdf file from sources
make show       # Generate pdf file from sources and open standard pdf viewer
make lint       # Run chktex to find tex errors and warnings

make clean      # Remove all temporary files with "latexmk -c"
make purge      # Remove ALL generated files, including pdf files

make all        # Rebuild all files and open pdf. Executes purge,
                # then show.
```
