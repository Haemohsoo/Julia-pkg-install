# To call or include another Julia file inside a Julia file, you use the include() function. This function evaluates the contents of the specified file within the context of the current file, effectively acting as if you copied and pasted the code directly.

# Include the file from the same directory using a relative path
include(joinpath(@__DIR__, "julia pkg install_01-essential.jl"))

include(joinpath(@__DIR__, "julia pkg install_02-dataformat.jl"))

include(joinpath(@__DIR__, "julia pkg install_03-data visualization.jl"))

include(joinpath(@__DIR__, "julia pkg install_04-numerical.jl"))

include(joinpath(@__DIR__, "julia pkg install_10-etc.jl"))