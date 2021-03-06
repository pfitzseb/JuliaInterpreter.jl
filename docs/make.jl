using Documenter, JuliaInterpreter

makedocs(
    modules = [JuliaInterpreter],
    clean = false,
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    sitename = "JuliaInterpreter.jl",
    authors = "Keno Fischer, Tim Holy, and others",
    linkcheck = !("skiplinks" in ARGS),
    pages = [
        "Home" => "index.md",
        "ast.md",
        "internals.md",
        "dev_reference.md",
    ],
)

deploydocs(
    repo = "github.com/JuliaDebug/JuliaInterpreter.jl.git",
)
