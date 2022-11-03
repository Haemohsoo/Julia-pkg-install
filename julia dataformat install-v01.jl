using Pkg
####################################################
# https://juliapackages.com/

####################################################
# https://dataframes.juliadata.org/stable/
# Its design and functionality are similar to those of pandas (in Python) and data.frame,
# data.table and dplyr (in R)
Pkg.add("DataFrames")
using DataFrames

# https://github.com/JuliaData/CSV.jl
# A fast, flexible delimited file reader/writer for Julia.
#] add CSV
Pkg.add("CSV")
using CSV


# https://juliapackages.com/p/excelfiles
# https://github.com/queryverse/ExcelFiles.jl
# after dataframe
Pkg.add("ExcelFiles")
# using ExcelFiles, DataFrames
using ExcelFiles


# https://felipenoris.github.io/XLSX.jl/stable/
Pkg.add("XLSX")
using XLSX

# https://github.com/queryverse/ExcelReaders.jl
Pkg.add("ExcelReaders")
using ExcelReaders



# https://github.com/JuliaData/RData.jl
# Read R data files (.rda, .RData) and optionally convert the contents into Julia equivalents.
Pkg.add("RData")
using RData



####################################################
# https://github.com/JuliaHealth/PubMedMiner.jl
# This package provides a set of tools and examples to study co-occurrences/comorbidities in PubMed/Medline articles
Pkg.add("FortranFiles")
using FortranFiles

####################################################
