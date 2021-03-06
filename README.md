# meteor-please for centos 6
[![npm version](https://badge.fury.io/js/mplz.svg)](http://badge.fury.io/js/mplz)
### Simple Meteor Deployment for CentOS 6+

## Installation
````
npm install -g mplzc6
````

## Usage
##### 1. Initialise
Simply run in your Meteor project's directory:
````
mplzc6
````
You'll get a prompt to automatically configure a `mplz.json` for your project.

##### 2. Setup Your Environment
Once you've got a configuration file, you can spin up your server, then use this command inside your project directory to install the production environment (nodejs, mongodb, nginx):
````
mplzc6 setup
````

Now go grab a coffee, because it will probably take some time for all the things to install.

##### 3. Deploy Your App
After the server setup is done, you can run this command to deploy your app:
````
mplzc6 deploy
````

Easy!

## Commands
__mplzc6 init__ Reconfigures your app's `mplz.json` settings file.

__mplzc6 setup__ Sets up your server according to your `mplz.json` settings.

__mplzc6 deploy__ Deploys your app according to your `mplz.json` settings.

__mplzc6 reconfig__ Apply any configuration changes if your `mplz.json` has been modified since last setup.

__mplzc6 start__ Starts your app. (systemd)

__mplzc6 stop__ Stops your app. (systemd)

__mplzc6 restart__ Restarts your app. (systemd)

__mplzc6 delete__ Deletes your app from the deployment directory.

## TODOs
- SSL
- Multiple instances/load balancing/oplog tailing
- Prompt cleanup/validation
- Support for node apps
- Exclude folders
