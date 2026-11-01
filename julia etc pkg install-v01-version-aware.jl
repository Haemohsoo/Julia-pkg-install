using Pkg
include(joinpath(@__DIR__, "julia_pkg_install_helper.jl"))
println("Installing packages for Julia ", VERSION)
####################################################
# https://juliapackages.com/

####################################################
# https://github.com/JunoLab/Weave.jl
# Weave is a scientific report generator/literate programming tool for the Julia programming language.
# It resembles Pweave, knitr, R Markdown, and Sweave.
# Citing Weave: Pastell, Matti. 2017. Weave.jl: Scientific Reports Using Julia. The Journal of Open Source Software. http://dx.doi.org/10.21105/joss.00204
install_compatible("Weave")
# Load packages in your project when needed (avoids namespace conflicts): using Weave
# [ Info: Precompiling Weave [44d3d7a6-8a23-5bf8-98c5-b353f8df5ec9]
# WARNING: Method definition latex(IO, Markdown.LaTeX) in module Markdown at C:\buildbot\worker\package_win64\build\usr\share\julia\stdlib\v1.5\Markdown\src\IPython\IPython.jl:28 overwritten in module WeaveMarkdown at D:\Julia\.julia\packages\Weave\BarbQ\src\WeaveMarkdown\markdown.jl:10.
#  ** incremental compilation may be fatally broken for this module **

# https://github.com/JuliaLang/IJulia.jl
# IJulia is a Julia-language backend combined with the Jupyter interactive environment (also used by IPython).
install_compatible("IJulia")
# Load packages in your project when needed (avoids namespace conflicts): using IJulia

# https://juliapackages.com/p/pluto
# https://github.com/fonsp/Pluto.jl
# Writing a notebook is not just about writing the final document
install_compatible("Pluto")
# Load packages in your project when needed (avoids namespace conflicts): using Pluto
# ] add Pluto
# To run the notebook server:
# julia> import Pluto
# julia> Pluto.run()

####################################################
# https://arrow.apache.org/install/
install_compatible("Arrow")
# Load packages in your project when needed (avoids namespace conflicts): using Arrow




####################################################

####################################################
# Additional recommended packages (optional; uncomment to install)
# Pkg.add("Literate")

# Installation summary
julia_install_report()
