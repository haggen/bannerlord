# Ledger

> Trading ledger mod for Mount & Blade II Bannerlord.

# Development

Copy `env.example.xml` to `env.xml` and change the settings according to your environment.

Run `dotnet build -p:Configuration=Debug|Release` to build the project.

The `PostBuild.ps1` script will assemble the distribution directory with the module folder inside. On `Debug` configuration it'll automatically copy the module into the Modules directory within the game files and run the game.

# Legal

MIT ₢ 2020 Arthur Corenzan

This modification is not created by, affiliated with or sponsored by TaleWorlds Entertainment or its affiliates. The Mount & Blade II Bannerlord and related logos are intelectual property of TaleWorlds Entertainment. All rights reserved.