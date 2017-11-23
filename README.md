[![Windows build status](https://ci.appveyor.com/api/projects/status/github/tonerdo/dotnet-env?branch=master&svg=true)](https://ci.appveyor.com/project/tonerdo/dotnet-env)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![NuGet version](https://badge.fury.io/nu/DotNetEnv.svg)](https://www.nuget.org/packages/DotNetEnv)
# dotnet-env

A .NET library to load environment variables from .env files. Supports .NET Core and .NET Framework

## Installation

Available on [NuGet](https://www.nuget.org/packages/DotNetEnv/)

Visual Studio:

```powershell
PM> Install-Package DotNetEnv
PM> Install-Package DotNetEnv.AspNetCore #if you're working on an asp.net core project
```

.NET Core CLI:

```bash
dotnet add package DotNetEnv
dotnet add package DotNetEnv.AspNetCore #if you're working on an asp.net core project
```

```bash
```

## Usage

### Load env file

Will automatically look for a `.env` file in the current directory
```csharp
DotNetEnv.Env.Load();
```

You can also specify the path to the `.env` file
```csharp
DotNetEnv.Env.Load("./path/to/.env");
```

The variables in the `.env` can then be accessed through the `System.Environment` class
```csharp
System.Environment.GetEnvironmentVariable("IP")
```

## Usage (with ASP.NET Core)

In your Startup.cs file, add the following imports:

```cs
using DotNetEnv;
using DotNetEnv.AspNetCore;
```

In your `Configure` method, add the following:

```cs
app.UseDotNetEnv(); // to load the variables from the .env file
```

## Issue Reporting

If you have found a bug or if you have a feature request, please report them at this repository issues section.

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file for more info.
