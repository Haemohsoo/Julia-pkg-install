using Pkg
include(joinpath(@__DIR__, "julia_pkg_install_helper.jl"))
println("Installing language interoperability packages for Julia ", VERSION)
####################################################
# Language interoperability: Python, R, and Java
# These packages are installed here rather than in the graphics installer.
# PythonPlot and PyPlot remain in the graphics installer because they are plotting packages.
# PythonCall and PyCall can use different Python environments; configure them as needed.

# Python interoperability
# Conda is used by PyCall/PyPlot for Python environment management.
install_compatible("Conda")
# PythonCall: call Python modules and functions from Julia.
install_compatible("PythonCall")
# PyCall: established Python bridge used by PyPlot.
install_compatible("PyCall")

# R interoperability
# RCall requires a separately installed, compatible R environment.
install_compatible("RCall")

# Java interoperability
# JavaCall requires a compatible Java/JVM installation and may have
# platform- or Julia-version-specific limitations.
install_compatible("JavaCall")

# Installation summary
julia_install_report()
