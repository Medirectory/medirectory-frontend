## Medirectory example front-end README

Medirectory is a prototype healthcare directory, built to explore the technical aspects of building a directory. Medirectory

* Is populated using the National Plan & Provider Enumeration System (NPPES) provider and organization data sets, along with the Physician Compare data set

* Provides a robust RESTful interface, designed for machine-to-machine communication, providing

  * search by basic information like name, location, specialty, and National Provider Identifier (NPI)

  * complex queries using organizational relationships

  * search using boolean operators such as OR, AND, and NOT

  * geospatial search, searching within a radius

* Includes a web interface to demonstrate interactions with the RESTful interface, essentially a JavaScript client to the RESTful interface

* Provides initial support for an IHE HPD interface

* Provides initial support for a FHIR interface, supporting the Practitioner FHIR resource

This repository contains the example front-end web interface. The backend is in a [separate repository](https://github.com/Medirectory/medirectory).

### License

Copyright 2015 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.


## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM)
* [Bower](http://bower.io/)
* [Ember CLI](http://www.ember-cli.com/)
* [PhantomJS](http://phantomjs.org/)

## Installation

* `git clone https://github.com/Medirectory/medirectory-frontend.git`
* `cd medirectory-frontend`
* `npm install`
* `bower install`

## Running / Development

* Make sure the backend service is running
* `ember server --proxy http://localhost:3000`
* Visit your app at [http://localhost:4200](http://localhost:4200).

### Running Tests

* `ember test`
* `ember test --server`

### Building

* `ember build` (development)
* `ember build --environment production` (production)

## Further Reading / Useful Links

* [ember.js](http://emberjs.com/)
* [ember-cli](http://www.ember-cli.com/)
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

