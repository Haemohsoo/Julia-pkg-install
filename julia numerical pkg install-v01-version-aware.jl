using Pkg
include(joinpath(@__DIR__, "julia_pkg_install_helper.jl"))
println("Installing packages for Julia ", VERSION)
####################################################
# https://juliapackages.com/

####################################################


# https://juliastats.org
# https://github.com/JuliaStats

# https://github.com/SciML/DifferentialEquations.jl
# DifferentialEquations.jl: Scientific Machine Learning (SciML) Enabled Simulation and Estimation
install_compatible("DifferentialEquations")
# Load packages in your project when needed (avoids namespace conflicts): using DifferentialEquations

# https://github.com/JuliaDiff/ForwardDiff.jl
install_compatible("ForwardDiff")
# Load packages in your project when needed (avoids namespace conflicts): using ForwardDiff

# https://github.com/JuliaDiff/ReverseDiff.jl
install_compatible("ReverseDiff")
# Load packages in your project when needed (avoids namespace conflicts): using ReverseDiff

# https://github.com/JuliaDiff/TaylorSeries.jl
install_compatible("TaylorSeries")
# Load packages in your project when needed (avoids namespace conflicts): using TaylorSeries


# https://github.com/JuliaDiff/ChainRules.jl
install_compatible("ChainRules")
# Load packages in your project when needed (avoids namespace conflicts): using ChainRules


# https://github.com/JuliaDiff/FiniteDifferences.jl
install_compatible("FiniteDifferences")
# Load packages in your project when needed (avoids namespace conflicts): using FiniteDifferences

# https://github.com/JuliaDiff/ChainRulesCore.jl
install_compatible("ChainRulesCore")
# Load packages in your project when needed (avoids namespace conflicts): using ChainRulesCore

####################################################



# https://www.gen.dev/
# Gen is a general-purpose probabilistic programming system, embedded in Julia.
# pkg> add https://github.com/probcomp/Gen
# using Pkg; Pkg.test("Gen")
install_compatible("Gen")
# Load packages in your project when needed (avoids namespace conflicts): using Gen

####################################################
# statistics

# https://github.com/JuliaStats/StatsKit.jl
# Bootstrap, CategoricalArrays, Clustering, CSV, DataFrames, Distances, Distributions,
# GLM, HypothesisTests, KernelDensity, Loess, MultivariateStats, StatsBase, TimeSeries
install_compatible("StatsKit")
# Load packages in your project when needed (avoids namespace conflicts): using StatsKit

# https://github.com/JuliaStats/StatsModels.jl
#  Basic functionality for specifying, fitting, and evaluating statistical models in Julia.
install_compatible("StatsModels")
# Load packages in your project when needed (avoids namespace conflicts): using StatsModels


# https://github.com/jump-dev/JuMP.jl
# JuMP is a domain-specific modeling language for mathematical optimization embedded in Julia
install_compatible("JuMP")
# Load packages in your project when needed (avoids namespace conflicts): using JuMP





####################################################


# https://github.com/denizyuret/Knet.jl
# Knet (pronounced "kay-net") is the Koç University deep learning framework implemented
# in Julia by Deniz Yuret and collaborators.
# Optional legacy package; disabled to avoid compatibility failures: Pkg.add("Knet")
# Optional legacy package; disabled: using Knet

# https://juliapackages.com/p/tensorflow
# ERROR: LoadError: TensorFlow.jl does not support Windows.



####################################################
# GPU related
# https://juliagpu.org/

# Yao Extensible, Efficient Quantum Algorithm Design for Humans.
# https://github.com/QuantumBFS/Yao.jl
install_compatible("Yao")
# Load packages in your project when needed (avoids namespace conflicts): using Yao

# Support for writing loop-based code that executes both on CPU and GPU
# https://github.com/vchuravy/GPUifyLoops.jl/
# GPU
# Optional legacy package; disabled to avoid compatibility failures: Pkg.add("GPUifyLoops")
# Optional legacy package; disabled: using GPUifyLoops


# https://github.com/JuliaGPU/KernelAbstractions.jl
install_compatible("KernelAbstractions")
# Load packages in your project when needed (avoids namespace conflicts): using KernelAbstractions


# https://github.com/SciML/DiffEqGPU.jl
# Pkg.add("DiffEqGPU")
# using DiffEqGPU
# install error

####################################################
# Julia has built-in BLAS support, so you generally do not need to install a separate BLAS package.
#
# BLAS (Basic Linear Algebra Subprograms) provides optimized operations such as matrix multiplication, 
#  matrix-vector multiplication, and vector operations.



####################################################

####################################################
# Additional recommended packages (optional; uncomment to install)
# Pkg.add("CUDA")
# Pkg.add("AMDGPU")

####################################################
# Additional recommended packages - enabled
# Julia Pkg resolves versions compatible with the current Julia environment.
# Individual failures are logged by install_compatible and do not stop this script.

# Numerical linear algebra and transforms
install_compatible("LinearSolve")
install_compatible("NonlinearSolve")
install_compatible("IterativeSolvers")
install_compatible("Krylov")
install_compatible("Arpack")
install_compatible("FFTW")
install_compatible("SpecialFunctions")
install_compatible("QuadGK")
install_compatible("HCubature")

# Optimization and equation solvers
install_compatible("Optim")
install_compatible("Optimization")
install_compatible("OptimizationOptimJL")
install_compatible("Roots")
install_compatible("NLsolve")
install_compatible("HiGHS")
install_compatible("Ipopt")

# Differential equations and scientific computing
install_compatible("OrdinaryDiffEq")
install_compatible("StochasticDiffEq")
install_compatible("DelayDiffEq")
install_compatible("BoundaryValueDiffEq")
install_compatible("ModelingToolkit")
install_compatible("SciMLSensitivity")

# Statistics and automatic differentiation
install_compatible("Distributions")
install_compatible("StatsBase")
install_compatible("HypothesisTests")
install_compatible("GLM")
install_compatible("Zygote")
install_compatible("Enzyme")

# Machine learning and quantum simulation
install_compatible("Flux")
install_compatible("Turing")
install_compatible("QuantumOptics")
install_compatible("QuantumToolbox")

# Optional hardware-dependent GPU packages (enable only when needed):
# install_compatible("CUDA")
# install_compatible("AMDGPU")

# Installation summary
julia_install_report()
