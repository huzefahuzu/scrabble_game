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

