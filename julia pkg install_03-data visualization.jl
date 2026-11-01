using Pkg
include(joinpath(@__DIR__, "julia_pkg_install_helper.jl"))
println("Installing packages for Julia ", VERSION)
####################################################
# https://juliapackages.com/

####################################################

####################################################
# julia plotting package
# https://juliastats.org/
# https://github.com/JuliaPlots
#
# In the Julia REPL, press the right square bracket (]) to enter Package Manager mode.
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
# Moved to julia pkg install_05-languages.jl: install_compatible("Conda")
# Load packages in your project when needed (avoids namespace conflicts): using Conda
# Disabled automatic environment modification: ENV["PATH"] = Conda.bin_dir(Conda.ROOTENV) * ";" * ENV["PATH"]
install_compatible("PyPlot")
# Load packages in your project when needed (avoids namespace conflicts): using PyPlot

# https://github.com/JuliaPy/Conda.jl/pull/170


# https://scpo-compecon.github.io/CoursePack/Html/getting_started
# ] add IJulia InstantiateFromURL; precompile


#############################################################################
# https://github.com/jheinen/GR.jl
install_compatible("GR")
# Disabled automatic environment modification: Pkg.update("GR")
# Load packages in your project when needed (avoids namespace conflicts): using GR
# ] up GR
# histogram(randn(10000))

# https://docs.juliaplots.org/latest/install/
# https://github.com/JuliaPlots/Plots.jl
install_compatible("Plots")
# Load packages in your project when needed (avoids namespace conflicts): using Plots

# https://github.com/JuliaPlots/StatsPlots.jl
install_compatible("StatsPlots")
# Load packages in your project when needed (avoids namespace conflicts): using StatsPlots

# Moved to julia pkg install_05-languages.jl: install_compatible("PyCall")
# already?
# Disabled automatic environment modification: Pkg.build("PyCall")
# Load packages in your project when needed (avoids namespace conflicts): using PyCall




# https://docs.juliaplots.org/latest/install/
# using PyPlot
# pyplot()

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
install_compatible("Gadfly")
# Load packages in your project when needed (avoids namespace conflicts): using Gadfly
# plot(y=[1,2,3])

# https://docs.juliaplots.org/latest/install/
# Tier 2 support backends:
install_compatible("UnicodePlots")
# Load packages in your project when needed (avoids namespace conflicts): using UnicodePlots

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
# Disabled duplicate installation: Pkg.add("Gadfly")
# Load packages in your project when needed (avoids namespace conflicts): using Gadfly
# plot(y=[1,2,3])


# https://docs.juliaplots.org/latest/install/
# Tier 2 support backends:
# Disabled duplicate installation: Pkg.add("UnicodePlots")
# Load packages in your project when needed (avoids namespace conflicts): using UnicodePlots
# WARNING: using UnicodePlots.histogram in module Main conflicts with an existing identifier.

# https://github.com/ma-laforge/InspectDR.jl
# Smith chart
# Info: InspectDR not known to be compatible with current version of Plots.jl.
# Pkg.add("InspectDR")
# using InspectDR


# https://juliapackages.com/p/winston
# Winston: 2D Plotting for Julia
# WARNING: using Winston.plot in module Main conflicts with an existing identifier.
# Optional legacy package; disabled to avoid compatibility failures: Pkg.add("Winston")
# Optional legacy package; disabled: using Winston

# https://juliapackages.com/p/opencv

# https://juliapackages.com/p/makie
# https://github.com/JuliaPlots/Makie.jl
#  GLMakie.jl, CairoMakie.jl and WGLMakie.jl (the backends);
# AbstractPlotting.jl (the bulk of the package); and StatsMakie.jl
install_compatible("Makie")
# Load packages in your project when needed (avoids namespace conflicts): using Makie



# GKS: character ignored due to unicode error
# https://github.com/JuliaPlots/Plots.jl/issues/791
ENV["GKS_ENCODING"] = "utf-8"

####################################################
# Additional recommended packages (optional; uncomment to install)

####################################################
# Additional recommended packages - enabled
# Julia Pkg resolves versions compatible with the current Julia environment.
# Individual failures are logged by install_compatible and do not stop this script.

# Plotly interactive plotting and export
install_compatible("PlotlyJS")
install_compatible("PlotlyBase")
install_compatible("PlotlyKaleido")

# Makie backends and grammar of graphics
install_compatible("CairoMakie")
install_compatible("GLMakie")
install_compatible("WGLMakie")
install_compatible("AlgebraOfGraphics")

# Scientific figures and formatting
install_compatible("LaTeXStrings")
install_compatible("ColorSchemes")
install_compatible("Colors")
install_compatible("ColorTypes")
install_compatible("PGFPlotsX")
install_compatible("Measures")
install_compatible("Contour")

# Additional plotting tools
install_compatible("VegaLite")
install_compatible("GraphMakie")
install_compatible("GeoMakie")
install_compatible("PairPlots")

# Note: PlotlyJS provides interactive plots; PlotlyKaleido is for static exports.
# The historical ORCA backend is intentionally not enabled.

# ggplot2-style plotting in native Julia
# Gadfly is already installed above; TidierPlots provides ggplot2-like syntax.
install_compatible("TidierPlots")
# RCall interfaces with the actual R ggplot2 package (requires a separate R installation).
# Optional: uncomment if you want to use R's ggplot2 directly from Julia.
# install_compatible("RCall")

# Additional scientific visualization packages (2026 recommendations)
# PythonPlot uses PythonCall, while the existing PyPlot uses PyCall.
# Keep PyPlot/PyCall for backward compatibility.
# Moved to julia pkg install_05-languages.jl: install_compatible("PythonCall")
install_compatible("PythonPlot")

# Publication-quality scientific figures and vector graphics
install_compatible("MakiePublication")
install_compatible("GMT")
install_compatible("Luxor")
install_compatible("PlotThemes")
install_compatible("UnitfulRecipes")

# Specialized scientific, image, and mesh visualization
install_compatible("ComplexPlots")
install_compatible("ImageView")
install_compatible("ImageShow")
install_compatible("MeshViz")
install_compatible("DelaunayTriangulation")

# Network and graph visualization
install_compatible("NetworkLayout")
install_compatible("GraphRecipes")

# Interactive exploration and animation
install_compatible("DataVoyager")
install_compatible("Javis")

# Installation summary
julia_install_report()
