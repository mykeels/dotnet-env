dotnet test .\test\DotNetEnv.Tests\DotNetEnv.Tests.csproj
if ($LastExitCode -ne 0) { $host.SetShouldExit($LastExitCode) }