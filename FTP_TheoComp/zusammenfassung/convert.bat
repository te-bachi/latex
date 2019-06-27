

::@ECHO OFF
SET INK_PATH = "C:\Program Files\Inkscape"
SET PATH=%INK_PATH%;%PATH%

::inkscape -D -z --file=overview_p1.svg --export-pdf=overview_p1_svg-tex.pdf --export-latex
::inkscape -D -z --file=overview_p1.svg --export-pdf=overview_p1_svg.pdf
::inkscape -D -z --file=automata_p1.svg --export-area=0:0:793:1122 --export-pdf=automata_p1.pdf
::inkscape -D -z --file=automata_p1.svg --export-width=210mm --export-height=297 --export-pdf=automata_p1.pdf
::inkscape -D -z --file=automata_p2.svg --export-width=210mm --export-height=297 --export-pdf=automata_p2.pdf
::inkscape -D -z --file=overview_p1b.svg --export-width=210mm --export-height=297 --export-pdf=overview_p1b.pdf

inkscape -D -z --file=automata_p1.svg --export-pdf=automata_p1.pdf
inkscape -D -z --file=automata_p2.svg --export-pdf=automata_p2.pdf
inkscape -D -z --file=overview_p1b.svg --export-pdf=overview_p1b.pdf