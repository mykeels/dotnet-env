param(
    [string]$p1 = "Debug"
)

dotnet restore
dotnet build ".\src\DotNetEnv" -c $p1=
dotnet build ".\test\DotNetEnv.Tests" -c $p1