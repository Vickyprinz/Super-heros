## Heroes API
This is a Rails API backend for tracking heroes and their superpowers.

Table of Contents
- Overview
- Models and Relationships
- Validations
- Routes
- Getting Started
- Usage
- Contributing
- License
- Overview
This API allows you to track heroes and their superpowers. The following resources are available:

## Heroes
Powers
HeroPowers (a join table between Heroes and Powers)
With this API, you can perform the following actions:

Get a list of all heroes
Get a specific hero by ID
Get a list of all powers
Get a specific power by ID
## Update a power
Create a new hero power (associating a hero with a power)
Models and Relationships
The following relationships exist between the models:

A Hero has many Powers through HeroPower
A Power has many Heros through HeroPower
A HeroPower belongs to a Hero and belongs to a Power
The following models are available:

## Hero
A Hero represents a superhero and has the following attributes:

name (string): the hero's real name
super_name (string): the hero's superhero name
A Hero has many HeroPowers and many Powers through HeroPower.
## Power
A Power represents a superpower and has the following attributes:

name (string): the name of the power
description (text): a description of the power
A Power has many HeroPowers and many Heros through HeroPower.

## HeroPower
A HeroPower represents the relationship between a Hero and a Power and has the following attributes:

strength (string): the strength level of the power for the hero (valid values are 'Strong', 'Weak', and 'Average')
A HeroPower belongs to a Hero and belongs to a Power.

## Validations
The following validations are in place:

## HeroPower
strength must be one of the following values: 'Strong', 'Weak', 'Average'
Power
description must be present and at least 20 characters long
Routes
The following routes are available:

## Heroes
GET /heroes
Returns a list of all heroes in the following format:


GET /heroes/:id
Returns the hero with the specified ID in the following format:
Getting Started

Clone the repository
git clone 

    git@github.com:Vickyprinz/Super-heros.git
Install the required gems

     bundle install
Create the database and run the migrations
   
    rails db:create
    rails db:migrate
Seed the database with some sample data
   
    rails db:seed
Start the server
   
   rails s
Usage
To use this API, you can send requests to the available routes using a tool like cURL or Postman. Here are some example requests:

- Get a list of all heroes:
curl http://localhost:3000/heroes

- Get a specific hero by ID:
curl http://localhost:3000/heroes/1

- Get a list of all powers:
curl http://localhost:3000/powers

- Get a specific power by ID:
curl http://localhost:3000/powers/1

- Create a new hero power:
curl -X POST -H "Content-Type: application/json" -d '{"hero_id": 1, "power_id": 2, "strength": "Strong"}' http://localhost:3000/heropowers


## Author: VICTOR KARIUKI
## License
This project is licensed under the MIT License. See the LICENSE file for details.

