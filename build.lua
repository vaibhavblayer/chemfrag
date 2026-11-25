-- build.lua for chemfrag (l3build)
module  = "chemfrag"
version = "1.0.0"
date    = "2026-11-25"

-- sources live in tex/, documentation in doc/
sourcefiledir = "tex"
sourcefiles   = {"*.sty", "*.code.tex"}
installfiles  = {"*.sty", "*.code.tex"}
unpackfiles   = {}

docfiledir    = "doc"
docfiles      = {"chemfrag-doc.tex", "chemfrag-gallery.tex"}
typesetfiles  = {"chemfrag-doc.tex"}
typesetexe    = "pdflatex"
typesetopts   = "-interaction=nonstopmode -halt-on-error"
typesetruns   = 3

textfiles     = {"README.md", "CHANGELOG.md"}

-- tests: testfiles/*.lvt
checkengines  = {"pdftex", "luatex"}
checkruns     = 1
stdengine     = "pdftex"

tdsroot       = "latex"
packtdszip    = false

uploadconfig = {
  pkg         = "chemfrag",
  version     = version .. " " .. date,
  author      = "Vaibhav Blayer",
  license     = "lppl1.3c",
  summary     = "Ready-made rings, chains and functional groups for chemfig",
  ctanPath    = "/macros/latex/contrib/chemfrag",
  topic       = {"chemistry"},
  repository  = "https://github.com/vaibhavblayer/chemfrag",
  bugtracker  = "https://github.com/vaibhavblayer/chemfrag/issues",
  description = [[
chemfrag adds ready-made building blocks to chemfig: rings (benzene,
cyclohexane, pyridine, furan, ...), zigzag chains and functional groups.
Every fragment is an ordinary chemfig submolecule that expands to plain
chemfig code, so fragments and hand-written chemfig code mix freely inside
\chemfig{...}. Rings take options for substituents by position, the atom
from which drawing continues, numbering, aromatic circles and atom names
for \chemmove.
]],
  update      = false,
}
