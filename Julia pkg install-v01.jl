# To call or include another Julia file inside a Julia file, you use the include() function. This function evaluates the contents of the specified file within the context of the current file, effectively acting as if you copied and pasted the code directly.

# Include the file from the same directory using a relative path
include(joinpath(@__DIR__, "julia essential pkg install-v01-version-aware.jl"))

include(joinpath(@__DIR__, "julia dataformat install-v01-version-aware.jl"))

include(joinpath(@__DIR__, "julia numerical pkg install-v01-version-aware.jl"))

include(joinpath(@__DIR__, "Julia gr pkg install-v01-version-aware.jl"))

include(joinpath(@__DIR__, "julia etc pkg install-v01-version-aware.jl"))