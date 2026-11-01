# Shared package installer for Julia 1.13.3 and other Julia versions.
# Julia's resolver checks package and dependency compatibility with VERSION.
using Pkg

if !isdefined(@__MODULE__, :JULIA_INSTALL_ATTEMPTED)
const JULIA_INSTALL_ATTEMPTED = Set{String}()
const JULIA_INSTALL_FAILED = String[]
const JULIA_INSTALL_SKIPPED = String[]

function install_compatible(name::AbstractString; min_julia=v"1.6.0", max_julia=nothing)
    pkg = String(name)
    if VERSION < min_julia || (max_julia !== nothing && VERSION >= max_julia)
        println("[SKIP] ", pkg, ": Julia ", VERSION, " outside requested range")
        push!(JULIA_INSTALL_SKIPPED, pkg)
        return false
    end
    if pkg in JULIA_INSTALL_ATTEMPTED
        println("[SKIP] ", pkg, ": already processed in this session")
        return true
    end
    push!(JULIA_INSTALL_ATTEMPTED, pkg)
    try
        # Pkg.dependencies() includes direct and transitive dependencies.
        # Only direct project dependencies count as explicitly installed.
        project = Pkg.project()
        if haskey(project.dependencies, pkg)
            println("[SKIP] ", pkg, ": already a direct dependency")
            return true
        end
        println("[INSTALL] ", pkg, " on Julia ", VERSION)
        # Do not pin an arbitrary package version. Pkg resolves compatible versions.
        Pkg.add(Pkg.PackageSpec(name=pkg))
        return true
    catch err
        push!(JULIA_INSTALL_FAILED, pkg)
        @warn "Package installation failed; continuing" package=pkg julia_version=string(VERSION) exception=(err, catch_backtrace())
        return false
    end
end

function julia_install_report()
    println("Julia version: ", VERSION)
    println("Failed packages: ", isempty(JULIA_INSTALL_FAILED) ? "none" : join(JULIA_INSTALL_FAILED, ", "))
    println("Version-skipped packages: ", isempty(JULIA_INSTALL_SKIPPED) ? "none" : join(JULIA_INSTALL_SKIPPED, ", "))
end

end # helper already loaded
