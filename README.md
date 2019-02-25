# Draculous 

Draculous is a counter as a service. It can (and should be) easily hosted on Heroku. 

Set your own up with this button: 
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

There are three API methods, all accept GET or POST

1. `/create` => Returns the ID (guid) of the counter. All counters start at zero.
1. `/incr/:id/:by` => Returns the current count of the counter + 1 (or the optional :by parameter)
1. `/next/:id` => Returns the next counter (only +1) a Crockford base 32 encoding

## Local Set Up 

1. Git pull the repo 
1. bundle install
1. create a Postgresql DB (`createdb counter`)
1. Set an ENV variable called DATABASE\_URL (`DATABASE_URL=postgres://localhost/counter`)
1. bundle exec rake setup 
1. rackup config.ru

There is currently no security/API\_KEY requirements/etc. Sorry in advance, but no tests either.
