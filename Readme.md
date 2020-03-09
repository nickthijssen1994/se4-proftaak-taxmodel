# Proftaak SE4 TaxModel
Angular Frontend and .NET Core Backend Project for Software Semester 4 2020.

# Git Guidelines

When starting working on a feature, create a feature branch based on the develop branch.
Name the new feature branch according to what the feature is, for example `feature-login`.
The branch should be named as in the example, so lowercase and `-` between seperate words.
When the feature is complete, merge the branch with develop.
Then merge the develop branch with the testing branch.
When all tests pass, request a merge with the master branch.

[More Info On Git Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

# Code Guidelines

## C#

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