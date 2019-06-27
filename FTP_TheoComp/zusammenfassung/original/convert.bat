

@ECHO OFF
SET INK_PATH = "C:\Program Files\Inkscape"
SET PATH=%INK_PATH%;%PATH%

::inkscape -D -z --file=overview_p1.svg --export-pdf=overview_p1_svg-tex.pdf --export-latex
inkscape -D -z --file=overview_p1.svg --export-pdf=overview_p1_svg.pdf