# README

## How to install this proyect local 
### Install Ruby on Rails:
First, we will update our system packages by running:

##### sudo apt update

Then, we will install the updates of our programs, executing:

##### sudo apt upgrade

### Install RVM. 
The cURL command is short for Client URL and is designed to transfer data. To install it we must execute:

##### sudo apt install curl

#### Installing RVM
Now we are going to install RVM (Ruby Version Manager), to manage Ruby versions. In addition, we will take advantage of configuring the Ruby version.

##### \curl -sSL https://get.rvm.io | bash

We must modify the bash to start RVM every time we open the terminal by executing the following:

##### echo 'source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc

If you have any question,follow the instructions in the following link:
https://github.com/rvm/ubuntu_rvm

After having installed RVM we ask the same tool to update and install the programs that are missing from our system.

##### rvm requirements 

### Installing Ruby
With RVM installed inside the terminal we will write:

##### rvm install ruby 

This project uses ruby version 3.1.0p0, to leave that version by default we will write the following command:
##### rvm --default use 3.1.0p0 

### Installing Rails 7
This project uses Rails 7. To install it we must execute:

##### gem install rails 

Then we can verify that Rails has been installed using:
##### rails -v

### Cloning the repository
After making the corresponding installations, we will proceed to download the repository.

1.- On GitHub.com, navigate to the main page of the repository.

2.- Above the list of files, click Code.

3.- Copy the URL of the repository.(ssh)

4.- Open Terminal.

5.- Change the current working directory to the location where you want to clone the directory.

6.- Type git clone and paste the URL you copied earlier. For this case the specific command is:

##### $ git clone git@github.com:Gabynavarro2525/veterinary.git

7.- Press Enter to create the local clone.

9.- Then go to the project folder using your terminal

10.- install postgres. version 12.12

11.- Then, for the installation of the gems that the project already includes, execute the following command:

##### bundle install

### DataBase

After the bundle install, we need create the DataBase, the commands are:

rake db:create

rake db:migrate

### How to run the rake task to fill DataBase

In this proyect exist one file called rake task, this file can help us to fill the data base, to run this file, we run the next command:

rake create_products:products

### Start the server

After complete  all the steps, we can stast the server, we need use the next command:

rails s
