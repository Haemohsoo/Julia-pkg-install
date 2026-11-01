using Pkg
include(joinpath(@__DIR__, "julia_pkg_install_helper.jl"))
println("Installing packages for Julia ", VERSION)
####################################################

# Debugger
# https://github.com/JuliaDebug/Debugger.jl
install_compatible("Debugger")
# Load packages in your project when needed (avoids namespace conflicts): using Debugger


# Revise
# https://github.com/timholy/Revise.jl
install_compatible("Revise")
# Load packages in your project when needed (avoids namespace conflicts): using Revise

# https://github.com/timholy/ProfileView.jl
install_compatible("ProfileView")
# Load packages in your project when needed (avoids namespace conflicts): using ProfileView

# https://github.com/JuliaPerf/PProf.jl
install_compatible("PProf")
# Load packages in your project when needed (avoids namespace conflicts): using Profile



# https://github.com/davidanthoff/ProfileVega.jl
# Optional legacy package; disabled to avoid compatibility failures: Pkg.add("ProfileVega")
# Optional legacy package; disabled: using ProfileVega


# https://github.com/tkluck/StatProfilerHTML.jl
# Optional legacy package; disabled to avoid compatibility failures: Pkg.add("StatProfilerHTML")
# Optional legacy package; disabled: using StatProfilerHTML



# https://github.com/kimikage/ProfileSVG.jl
# Optional legacy package; disabled to avoid compatibility failures: Pkg.add("ProfileSVG")
# Optional legacy package; disabled: using ProfileSVG


# https://github.com/JuliaMath/GSL.jl
# Julia wrapper for the GNU Scientific Library (GSL), for Julia v1.0+. Currently uses GSL v2.7.
install_compatible("GSL")
# Load packages in your project when needed (avoids namespace conflicts): using GSL

####################################################

####################################################
# Additional recommended packages (optional; uncomment to install)

####################################################
# Additional recommended packages - enabled
# Julia Pkg resolves versions compatible with the current Julia environment.
# Individual failures are logged by install_compatible and do not stop this script.

# Benchmarking and performance
install_compatible("BenchmarkTools")
install_compatible("TimerOutputs")
install_compatible("FlameGraphs")

# Debugging and inspection
install_compatible("Infiltrator")
install_compatible("Cthulhu")

# Static analysis and testing
install_compatible("JET")
install_compatible("Aqua")
install_compatible("TestEnv")
install_compatible("ReTestItems")

# Development and documentation
install_compatible("JuliaFormatter")
install_compatible("Documenter")
install_compatible("PkgTemplates")
install_compatible("PrecompileTools")
install_compatible("Preferences")
install_compatible("LoggingExtras")
install_compatible("OhMyREPL")

# Installation summary
julia_install_report()
