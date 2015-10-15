Need1More API Server
=========
This is the API for Need1More. It authenticates via JSON Web Tokens and is meant to be used in conjuction with another frontend application.

Pre-requisites
---------------
- [Have a functioning development environment](http://tutorials.jumpstartlab.com/topics/environment/environment.html)

Installation
--------------
Clone the repo and install its dependencies:
```sh
$ git clone git@github.com:Diasporism/need1more_api.git
$ cd need1more/
$ bundle
$ rake db:create db:migrate
```

Run the Server
---------------
Just type:
```sh
$ rails s
```
or
```sh
$ puma
```
and visit [localhost:3000](http://localhost:3000).

Run the Specs
---------------
Simply type:
```sh
$ rspec
```
from the root of the project.
