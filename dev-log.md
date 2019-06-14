# GLOBETROTTER DEV LOG
## A REACT APP WITH A RAILS API BACKEND

## 2019-05-28

Goals:

- establish a domain (an app idea)
- IDEAS:
  - surfboard app - has been done in student app
  - Jay Leno's garage
  - fresh direct (online grocery shopping)
  - home renos - project management x
  - restaurant reservations
  - travel app/trip xxxx
- establish user stories
- establish models & relationships
- build out our Rails API back end, at least a first round
- add serializers
- if we get through all of the above, we may get started on wire-framing our app layout on the front end -- including at least an idea of the components we will be using
- again, if we get through all of the above, we will use `create-react-app` to begin to scaffold our front end
- unlikely, but possible, that we get all the way to establishing our Redux store... if not, that will be part 2 on Friday

Overview

We will build a travel/destinations app that lists destinations and allows users to add destinations and comment/suggest on them.
Some stretch goals:
- add trip planning functionality
- add suggestion engines


User stories
Users should be able to...
- sign up and log in (NOT a requirement of the final project)
- look up destinations
- add destinations <-- external API?
- leave comments/suggestions/reviews of destinations
  - leave 'things to do'
  - add ratings?
- look for places to visit
- see relative cost of trips/destinations
- have favorites
- add pictures
- look up airlines to specific destinations <-- external API?
- stretch: have planned trips
- stretch feature: suggestion engine


# MODELS
_________________
## _USER_
### Attributes

- name
- username
- password

### Relationships

- belongs_to :hometown, class_name: "Location"
- has_many :trips
- has_many :attractions, through: :trips

_________________
## _LOCATION_
### Attributes

- city
- state/province/region
- country

### Relationships

- has_many :attractions

_________________
## _ATTRACTION_
### Attributes

- name
- description

### Relationships

- belongs_to :location

_________________
## _COMMENT_

### Attributes

- content

### Relationships

- belongs_to :user
- belongs_to :attraction

___________________
## _TRIP_

### Attributes

- date (range?)
- planned or completed?

### Relationships

- belongs_to :user
- belongs_to :location
- has_many :attractions ???

# 2019-05-31

## I WILL NEED TO DELETE UNUSED FILES AND ACTIONS FROM USING A SCAFFOLD GENERATOR ***

- add some seed data and double-check our models in a rails console DONE
- add a serializers -- fast JSON api DONE
- mock user login -- add current_user to app controller DONE
- create a React app, using create-react-app DONE
- add Redux and establish our store -- at least a first draft DONE
- start thinking about/drafting what our app will look like -- think about components
- add a couple components

# 2019-06-7

add login functionality using sessions

# 2019-06-11

- add logout functionality DONE (for now -- later we will move this component around )
  What does logout mean?
  clearing session@!  (that was easy) prob delete /logout

  How do we make this happen????

# 2019-06-13

LET's NOT GET ALL THE USER INFO!  LIKE, NO password_DIGEST *DONE
WHERE WE ARE -- just updated trips index controller action
so that we can get the current user's trips on load....
NEXT UP - ^^ add actions/reducers/state/props needed for this to happen

- we can add signup functionality
- we can think about our initial layout
- we can think about routes -- adding react router
- we can think about bringing in a 3rd party css library }
