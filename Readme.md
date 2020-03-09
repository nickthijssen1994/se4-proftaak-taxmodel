# Proftaak SE4 TaxModel
Angular Frontend and .NET Core Backend Project for Software Semester 4 2020.

# Git Guidelines

## Commits

In general, commit often and keep changes small. Don't change to many files and/or lines at the same time. This will prevent merge conflicts and other issues.

Just as with the source code, commit names and descriptions should be in English.

Give commits detailed names and descriptions that explain what changed, was added or removed.

Good example: `Fixed login form not showing error message when invalid email-adress is entered.`
Bad example: `Login form fix.`
Very bad example: `lolXD`

## Branching

When starting working on a feature, create a feature branch based on the develop branch.
Name the new feature branch according to what the feature is, for example `feature-login`.
The branch should be named as in the example, so lowercase and `-` between seperate words.
When the feature is complete, merge the branch with develop.
Then merge the develop branch with the testing branch.
When all tests pass, request a merge with the master branch.

[More Info On Git Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

# Code Guidelines

- All code and comments are writen in English, no exceptions.
- When naming directories and/or other files, don't use spaces. Use `-` or `_`. Using spaces can cause issues with CI/CD systems.
- Don't use abbreviations and give classes, methods and variables names that immediatly make clear what they are or do.

## C#

[C# Code Conventions](https://github.com/ktaranov/naming-convention/blob/master/C%23%20Coding%20Standards%20and%20Naming%20Conventions.md)

- See above link for class, variable and method naming conventions.

## Angular

# Frontend

The frontend Angular code can be found in de ClientApp directory.
This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 6.0.0.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Material Design

All attributes should use Angular Material for their design.

More Info: [Angular Material](https://material.angular.io/components/categories).

## Localization

The Angular i18n attribute marks translatable content. Place it on every element tag whose fixed text is to be translated.

Example: `<h1 i18n>Hello i18n!</h1>`

More Info: [Angular Internationalization](https://angular.io/guide/i18n).