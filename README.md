# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

    Use Ruby 2.3.1

* System dependencies
  
    Rails 5.1.4

    Docker:

      To install docker follow the steps

      1) curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
      2) sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
      3)sudo apt-get update
      4)apt-cache policy docker-ce
      5)sudo apt-get install -y docker-ce

* Configuration

    Navigate to the application folder and run below commands.

    1)Build the docker to make necessary rails setup

       sudo docker-compose build

    2)Compose the docker

       sudo docker-compose up

    3)Run DB migrations

       docker exec rake db:migrate

    4)Populate seed data

       sudo docker exec employee<container_name> rake db:seed


    Some useful docker commands:

    1)To start docker containers

       sudo docker-compose start

    2)To stop docker containers

       sudo docker-compose stop

    3)To list avilable containers

       sudo docker ps

    4)To remove a container

       sudo docker rm <container id>

    5)To login into a container

       sudo docker exec -it mysql_container<container name> bash


* How to run the test suite

    1)Login into the app container.

    2)Run rake db:create RAILS_ENV=test

    3)Run rspec spec/models/contact_spec.rb  <the path of your spec file>


* ...
