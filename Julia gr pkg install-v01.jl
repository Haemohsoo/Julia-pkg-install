using Pkg
####################################################
# https://juliapackages.com/

####################################################

####################################################
# julia plotting package
# https://juliastats.org/
# https://github.com/JuliaPlots
#
# Julia REPL(Shell)에서는 우 대괄호( ] )를 치면 바로 Package Manager 환경으로 진입
# https://stackoverflow.com/questions/51800232/error-using-pyplot-in-julia-v1-0-in-windows-10-x64
#(v1.0) pkg> add LaTeXStrings#master
# (v1.0) pkg> add PyPlot


# https://stackoverflow.com/questions/52175184/julia-1-0-0-on-windows-10-error-from-using-pyplot-the-python-package-matplot
# ENV["PYTHON"] = "c:\\full\\path\\to\\anaconda\\bin\\python"
# ENV["PYTHON"] = "D:\\Anaconda3\\pkgs\\python-3.8.5-h5fd99cc_1"
# using Pkg
# Pkg.build("PyCall")
# using PyPlot

# https://stackoverflow.com/questions/46399480/julia-runtime-error-when-using-pyplot


# https://github.com/JuliaPy/PyPlot.jl/issues/278

# https://github.com/JuliaPy/PyCall.jl/issues/730
Pkg.add("Conda")
using Conda
ENV["PATH"] = Conda.bin_dir(Conda.ROOTENV) * ";" * ENV["PATH"]
Pkg.add("PyPlot")
using PyPlot

# https://github.com/JuliaPy/Conda.jl/pull/170


# https://scpo-compecon.github.io/CoursePack/Html/getting_started
# ] add IJulia InstantiateFromURL; precompile


#############################################################################
# https://github.com/jheinen/GR.jl
Pkg.add("GR")
Pkg.update("GR")
using GR
# ] up GR
# histogram(randn(10000))

# https://docs.juliaplots.org/latest/install/
# https://github.com/JuliaPlots/Plots.jl
Pkg.add("Plots")
using Plots

# https://github.com/JuliaPlots/StatsPlots.jl
Pkg.add("StatsPlots")
using StatsPlots

Pkg.add("PyCall")
# already?
Pkg.build("PyCall")
using PyCall




# https://docs.juliaplots.org/latest/install/
# Pkg.add("PyPlot")
# using PyPlot
# pyplot()

# Pkg.add("PlotlyJS"); Pkg.add("ORCA")
# Note that you only need to add this if you need electron windows and
# additional output formats,
# https://docs.juliaplots.org/latest/install/
# using PlotlyJS
# using ORcA

# https://github.com/samuelcolvin/Bokeh.jl
# discontinued
# Pkg.add("Bokeh")
# using Bokeh

# https://gadflyjl.org/stable/
Pkg.add("Gadfly")
using Gadfly
# plot(y=[1,2,3])

# https://docs.juliaplots.org/latest/install/
# Tier 2 support backends:
Pkg.add("UnicodePlots")
using UnicodePlots

# Info: InspectDR not known to be compatible with current version of Plots.jl.
# Pkg.add("InspectDR")
# using InspectDR





# https://juliapackages.com/p/winston
# Winston: 2D Plotting for Julia
# WARNING: using Winston.plot in module Main conflicts with an existing identifier.
# Pkg.add("Winston")
# using Winston


# Note that you only need to add this if you need electron windows and
# additional output formats,
# https://docs.juliaplots.org/latest/install/
# using PlotlyJS
# using ORcA

# https://github.com/samuelcolvin/Bokeh.jl
# discontinued
# Pkg.add("Bokeh")
# using Bokeh

# https://gadflyjl.org/stable/
Pkg.add("Gadfly")
using Gadfly
# plot(y=[1,2,3])


# https://docs.juliaplots.org/latest/install/
# Tier 2 support backends:
Pkg.add("UnicodePlots")
using UnicodePlots
# WARNING: using UnicodePlots.histogram in module Main conflicts with an existing identifier.

# https://github.com/ma-laforge/InspectDR.jl
# Smith chart
# Info: InspectDR not known to be compatible with current version of Plots.jl.
# Pkg.add("InspectDR")
# using InspectDR


# https://juliapackages.com/p/winston
# Winston: 2D Plotting for Julia
# WARNING: using Winston.plot in module Main conflicts with an existing identifier.
Pkg.add("Winston")
using Winston

# https://juliapackages.com/p/opencv

# https://juliapackages.com/p/makie
# https://github.com/JuliaPlots/Makie.jl
#  GLMakie.jl, CairoMakie.jl and WGLMakie.jl (the backends);
# AbstractPlotting.jl (the bulk of the package); and StatsMakie.jl
Pkg.add("Makie")
using Makie



# GKS: character ignored due to unicode error
# https://github.com/JuliaPlots/Plots.jl/issues/791
ENV["GKS_ENCODING"] = "utf-8"
