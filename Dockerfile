
FROM ruby:2.3.1

#update the system and install required applications. Here we are installing db clients.
RUN apt-get update && apt-get install -y postgresql-client mysql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

#create a directory inside the docker container
RUN mkdir -p /usr/src/app

#set the path as work directory
WORKDIR /usr/src/app

#copy the whole project into the docker container
COPY . /usr/src/app/

#run bundle install to setup gems
RUN bundle install

#run asset pre-compile when you move the app to production
#RUN RAILS_ENV=production bundle exec rake assets:precompile --trace

#start the server
CMD ["rails","server"]

