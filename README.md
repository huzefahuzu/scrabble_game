# Scrabble Game

## Description

A scrabble club requires a system to store members’ information and provide leader boards to show their top performing players. For members we would want to store information such as the date they joined the club and their contact details.

All recorded scrabble games are head to head matches between 2 players, the
player with the highest score at the end of the game wins.


## Requirements

This demo currently works with:

* Rails 6.0.x
* Ruby  2.6.x
* PostgreSQL

## Installation

To run the application on your local machine, please follow below steps:

1.  Clone the repository
```
git clone git@github.com:huzefahuzu/scrabble_game.git
```
2. Check your Ruby version, install ruby 2.6.3 if not installed already
```
ruby -v | rvm install 2.6.3
```
3. Install dependencies
```
bundle install
```
4. Initialize the database
```
rails db:create db:migrate
```
5. run application
```
rails s
```

## Application Features.

The app has following features included:

1. It will allow to create a player profile by entering the common details like name, email etc.
2. After that, we can create multiple games which are played between this players where we also display who won the game after the game creation.
3. We display a detailed leadboard where Top 10 highest scorers are displayed.
4. On the member player listing page, we display detailed information of a player like total wins, loss, average score and highest score against whom and when.


## Security Point.

We have added the CSRF token in requests by adding `protect_from_forgery` in the application controller.

## Application UI/UX
  * Welcome Page

    * [Welcome Page](https://ibb.co/brJQ9cz)

  * Leader board Screen

    * [Leader board](https://ibb.co/vZ2XMqy)

  * Player Details/Flow Screens

    * [List Player Details](https://ibb.co/QQrm2py)
    * [Add new Player](https://ibb.co/tpPP5Gp)
    * [Player Details](https://ibb.co/D5d19T0)

  * Game Creation Flows

    * [Games List](https://ibb.co/GkJmRbH)
    * [New Game](https://ibb.co/dgjXJV6)
    * [Game details](https://ibb.co/QCRjPDb)

