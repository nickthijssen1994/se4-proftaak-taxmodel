# Proftaak SE4 TaxModel
Angular Frontend and .NET Core Backend Project for Software Semester 4 2020.

# Git Guidelines

## Commits

In general, commit often and keep changes small. Don't change to many files and/or lines at the same time. This will prevent merge conflicts and other issues.

Just as with the source code, commit names and descriptions should be in English.

Give commits detailed names and descriptions that explain what changed, was added or removed.

- Good example: `Fixed login form not showing error message when invalid email-adress is entered.`
- Bad example: `Login form fix.`
- Very bad example: `lolXD`

## Branching

When starting working on a feature, create a feature branch based on the develop branch.
Name the new feature branch according to what the feature is, for example `feature-login`.
The branch should be named as in the example, so lowercase and `-` between seperate words.
When the feature is complete, merge the branch with develop.
When all tests pass, request a merge with the master branch.

[More Info On Git Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

# Code Guidelines

- All code and comments are writen in English, no exceptions.
- When naming directories and/or other files, don't use spaces. Use `-` or `_`. Using spaces can cause issues with CI/CD systems.
- Don't use abbreviations and give classes, methods and variables names that immediatly make clear what they are or do.
- Images and other assets should be in lowercase and use `-` or `_` between words instead of spaces.
- When multiple files exists from the same image, but in different resolutions, add `-small` or `-medium`.
- When working with logos, especially when they are square, add the resolution to it's name, for example `main-logo-512`.

# Docker

Do not change the Dockerfiles, they are used by the CI/CD server.

## Angular Dockerfile

Build Image
`docker build -t frontend-proftaak-image .`
Run Image
`docker run --name frontend-proftaak-container -d -p 8888:80 frontend-proftaak-image`

## .NET Core Dockerfile

Build Image
`docker build -t backend-proftaak-image .`
Run Image
`docker run --name backend-proftaak-container -d -p 5000:80 backend-proftaak-image`

## C#

See [C# Code Conventions](https://github.com/ktaranov/naming-convention/blob/master/C%23%20Coding%20Standards%20and%20Naming%20Conventions.md) for class, variable and method naming conventions.

## Angular, HTML, CSS and TypeScript

### Material Design

All attributes should use Angular Material for their design.

More Info: [Angular Material](https://material.angular.io/components/categories).

### Localization

The Angular i18n attribute marks translatable content. Place it on every element tag whose fixed text is to be translated.

Example: `<h1 i18n>Hello i18n!</h1>`

More Info: [Angular Internationalization](https://angular.io/guide/i18n).

# SonarQube

After installation, execute the following commands:

1. [SonarScanner installation path]\sonar-scanner-msbuild-4.7.1.2311-net46\SonarScanner.MSBuild.exe begin /k:"TaxBreak" /d:sonar.host.url="http://localhost:9000" /d:sonar.login=[login key]

2. "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /t:Rebuild [project path]\backend.sln   

3. [SonarScanner installation path]\sonar-scanner-msbuild-4.7.1.2311-net46\SonarScanner.MSBuild.exe end /d:sonar.login=[login key]

Project will now scan and appear in SonarQube.
