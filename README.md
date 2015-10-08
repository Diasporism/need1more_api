Need1More Auth Server
=========
This is a JWT authorization server for Need1More. It holds the users table and just enough information to authenticate and authorize users. It's meant to be used in conjunction with the Need1More API.

After authenticating a user, the JWT Auth Server sends a JWT (JSON Web Token) back to the client. The client stores this JWT and sends it back to the server with every subsequent request in the Authorization header.

You can read more about the JWT specification at [jwt.io](http://jwt.io).

Egghead.io has a great (and short) series of videos explaining how the client and server interact using JWTs. You can view them [here](https://egghead.io/series/angularjs-authentication-with-jwt).

Pre-requisites
---------------
- [Have a functioning development environment](http://tutorials.jumpstartlab.com/topics/environment/environment.html)

Installation
--------------
Simply clone the repo and install its dependencies:
```sh
$ git clone git@github.com:Diasporism/need1more.git
$ cd need1more/
$ bundle
$ rake db:create db:migrate
```

Run the Server
---------------
Just type...
```sh
$ rails s
```
and visit [localhost:3000](http://localhost:3000).

Run the Specs
---------------
Just type...
```sh
$ rspec
```
from the root of the project.
