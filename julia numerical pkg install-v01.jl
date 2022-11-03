using Pkg
####################################################
# https://juliapackages.com/

####################################################


# https://juliastats.org
# https://github.com/JuliaStats

# https://github.com/SciML/DifferentialEquations.jl
# DifferentialEquations.jl: Scientific Machine Learning (SciML) Enabled Simulation and Estimation
Pkg.add("DifferentialEquations")
using DifferentialEquations

# https://github.com/JuliaDiff/ForwardDiff.jl
Pkg.add("ForwardDiff")
using ForwardDiff

# https://github.com/JuliaDiff/ReverseDiff.jl
Pkg.add("ReverseDiff")
using ReverseDiff

# https://github.com/JuliaDiff/TaylorSeries.jl
Pkg.add("TaylorSeries")
using TaylorSeries


# https://github.com/JuliaDiff/ChainRules.jl
Pkg.add("ChainRules")
using ChainRules


# https://github.com/JuliaDiff/FiniteDifferences.jl
Pkg.add("FiniteDifferences")
using FiniteDifferences

# https://github.com/JuliaDiff/ChainRulesCore.jl
Pkg.add("ChainRulesCore")
using ChainRulesCore

####################################################



# https://www.gen.dev/
# Gen is a general-purpose probabilistic programming system, embedded in Julia.
# pkg> add https://github.com/probcomp/Gen
# using Pkg; Pkg.test("Gen")
Pkg.add("Gen")
using Gen

####################################################
# statistics

# https://github.com/JuliaStats/StatsKit.jl
# Bootstrap, CategoricalArrays, Clustering, CSV, DataFrames, Distances, Distributions,
# GLM, HypothesisTests, KernelDensity, Loess, MultivariateStats, StatsBase, TimeSeries
Pkg.add("StatsKit")
using StatsKit

# https://github.com/JuliaStats/StatsModels.jl
#  Basic functionality for specifying, fitting, and evaluating statistical models in Julia.
Pkg.add("StatsModels")
using StatsModels


# https://github.com/jump-dev/JuMP.jl
# JuMP is a domain-specific modeling language for mathematical optimization embedded in Julia
Pkg.add("JuMP")
using JuMP





####################################################


# https://github.com/denizyuret/Knet.jl
# Knet (pronounced "kay-net") is the Koç University deep learning framework implemented
# in Julia by Deniz Yuret and collaborators.
Pkg.add("Knet")
using Knet

# https://juliapackages.com/p/tensorflow
# ERROR: LoadError: TensorFlow.jl does not support Windows.



####################################################
# GPU related
# https://juliagpu.org/

# Yao Extensible, Efficient Quantum Algorithm Design for Humans.
# https://github.com/QuantumBFS/Yao.jl
Pkg.add("Yao")
using Yao

# Support for writing loop-based code that executes both on CPU and GPU
# https://github.com/vchuravy/GPUifyLoops.jl/
# GPU
Pkg.add("GPUifyLoops")
using GPUifyLoops


# https://github.com/JuliaGPU/KernelAbstractions.jl
Pkg.add("KernelAbstractions")
using KernelAbstractions


# https://github.com/SciML/DiffEqGPU.jl
# Pkg.add("DiffEqGPU")
# using DiffEqGPU
# install error

####################################################




####################################################
