# X-CMS

## Name

X-CMS is a temporary name which I want to replace by something cool in a near future. Something without both X and CMS in the name, some kind of proper noun.

## Purpose

It is an Open Source experiment aiming to build a next generation Open Source CMS solution merging together many new approaches:

- Headless CMS
- API GraphQL perhaps REST too
- Git repository as a content database
- Content model configuration
- Clean, modern, mobile friendly backoffice
- Static site generation
- JavaScript front end with server side rendering
- Website pages configuration

## Similar solutions

There is a lot of similar solutions in the wild. One of the key differences of this project will be the Open Source, downloadable, "not only SaaS" kind. Yet if anyone find a really similar Open Source solution, please let me know, I could have missed it.

To trace all references, here is the list of considered solutions
- Contentful https://www.contentful.com/ (Saas)
- Prismic https://prismic.io/ (Saas)
- Keystone http://keystonejs.com/ (OS, Node, Express, MongoDb)

## Packaging

At this point, the project is not organized as a packaged solution. It would be to dificult to reason about and to test each features If I had already to clearly split what is a generic packaged feature and what is specific of the site using the solution. At one point later, when the features exists and the limit will be clear, I'll do the work of packaging a reusable solution.

## Architecture

The project is organized in three sub projects.

- [x-server](tree/master/x-server) is a Node/Hapi server containing the storage layer in a Git repository (called GitAsDb) and the GraphQL API.
- [x-backoffice](tree/master/x-backoffice) is a React application of the Back Office. It uses the GraphQL API to read and write the content.
- [x-frontoffice](tree/master/x-frontoffice) is a React application of the Front Office. The target is to package a lib to help build such an app and not a package app. Waiting for the packaging step of the project it's one project containing both what will be the lib, and what will be the specific part of the app.