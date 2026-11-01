using Pkg
include(joinpath(@__DIR__, "julia_pkg_install_helper.jl"))
println("Installing packages for Julia ", VERSION)
####################################################
# https://juliapackages.com/

####################################################
# https://dataframes.juliadata.org/stable/
# Its design and functionality are similar to those of pandas (in Python) and data.frame,
# data.table and dplyr (in R)
install_compatible("DataFrames")
# Load packages in your project when needed (avoids namespace conflicts): using DataFrames

# https://github.com/JuliaData/CSV.jl
# A fast, flexible delimited file reader/writer for Julia.
#] add CSV
install_compatible("CSV")
# Load packages in your project when needed (avoids namespace conflicts): using CSV


# https://juliapackages.com/p/excelfiles
# https://github.com/queryverse/ExcelFiles.jl
# after dataframe
install_compatible("ExcelFiles")
# using ExcelFiles, DataFrames
# Load packages in your project when needed (avoids namespace conflicts): using ExcelFiles


# https://felipenoris.github.io/XLSX.jl/stable/
install_compatible("XLSX")
# Load packages in your project when needed (avoids namespace conflicts): using XLSX

# https://github.com/queryverse/ExcelReaders.jl
# Optional legacy package; disabled to avoid compatibility failures: Pkg.add("ExcelReaders")
# Optional legacy package; disabled: using ExcelReaders



# https://github.com/JuliaData/RData.jl
# Read R data files (.rda, .RData) and optionally convert the contents into Julia equivalents.
install_compatible("RData")
# Load packages in your project when needed (avoids namespace conflicts): using RData



####################################################
# https://github.com/JuliaHealth/PubMedMiner.jl
# This package provides a set of tools and examples to study co-occurrences/comorbidities in PubMed/Medline articles
install_compatible("FortranFiles")
# Load packages in your project when needed (avoids namespace conflicts): using FortranFiles

####################################################

####################################################
# Additional recommended packages (optional; uncomment to install)
# Pkg.add("JSON3")
# Pkg.add("Parquet2")
# Pkg.add("JLD2")
# Pkg.add("HDF5")
# Pkg.add("MAT")
# Pkg.add("HTTP")
# Pkg.add("Tables")

# Installation summary
julia_install_report()
