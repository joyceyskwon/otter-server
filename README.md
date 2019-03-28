# Otter: The Back End

![otter-logo](https://github.com/joyceyskwon/otter-client/blob/master/src/assets/otter-black.svg)

Thank you for using Otter. This Ruby on Rails app is designed to handle the database and API for its eponym Otter, a budgeting visualizer that helps users manage their personal finance through visual demonstration of their monthly spendings.

View [demo](https://youtu.be/73MHGAAkCm8)

## Contents

- [Installation](#installation)
- [Models & Relationship](#models--relationship)
- [Future Development](#future-development)

## Installation

To get started with Otter back-end, fork and clone this repository to your local machine, ```cd``` into the project, and run ```bundle install```. Then, run ```rake db:setup``` to seed the database. Make sure you have [postgreSQL](https://postgresapp.com/) installed and running on your local machine. Also make sure you change all the necessary URL variables in the [React application](https://github.com/joyceyskwon/otter-client) so that the changes made locally will reflect your own database.

## Models & Relationship

Otter uses total of three models:

### User

The ```user``` model has many-to-many relationship with the ```category``` model, and one-to-many relationship with the ```transaction``` model. User is able to have many categories through transaction.

### Category

The ```category``` model has many-to-many relationship with the ```user``` model, and one-to-many relationship with ```transaction``` model. Category has many users through transaction. There are fixed number of categories for some control over categorical database.

### Transaction

The ```transaction``` model is a join table between a ```user``` instance and a ```category``` instance. When a logged-in user creates a new transaction with a selected category, a ```transaction``` instance is created in the database. When a logged-in user updates an existing transaction, the front-end sends a ```PATCH``` request to the back-end. Once the back-end receives the request, the database searches for that particular ```transaction``` instance with its ```id``` number and updates it. User is also able to send a ```DELETE``` request to the back-end and delete a particular ```transaction``` instance.

## Future Development

This repository welcomes contributions, so feel free to submit a pull request.
