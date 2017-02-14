# Magento 2 Developement Alias Tools

## Installation

Download the `alias.sh` file and replace your `.bashrc` with it.

```
cp alias.sh ~/.bashrc
```

## Configuration
Open `alias.sh` and edit the following configuration variables.
 - `PROJECT_PATH` : Replace with the asolute path on your Magento instance project location
 - `PROJECT_NAME` : Replace with the generated folder name in `pub/static/frontend` (your own project namespace)
 - `LOG_FILE` : Replace with absolute path to your log favorite file
 - `MAGE_USER` : Replace with the Magento server user
 - `MAGE_GROUP` : Replace with the Magento server group

## Usage
```
@[alias]
 ```

## Available commands
 - **@help** : Display this help text with all availables alias
 - **@edit** : Open .bashrc script to add alias
 
### Cache
 - **@cc** : Clean the Magento cache
 - **@cf** : Flush the Magento cache
 - **@rc** : Remove the cache
 - **@rs** : Remove the Magento generated style files
 - **@rsd** : Remove the Magento generated style files and deploy static content
 
### Debug
 - **@w** : Watch the log file Apache Magento errors
 - **@r** : Open the log file Apache Magento errors
 
### Git
 - **@gl** : Show logs
 - **@glp** : Show logs pretty (need "git lg" alias created, see [Git alias](https://github.com/asubit/git-alias/tree/master) repository
 - **@gb** : Show branches
 - **@gf** : Fetch branches
 - **@gfd** : Fetch and delete old branches
 - **@gs** : Status local
 - **@ga** : Add all local changes
 - **@gc** : Checkout all local changes
 - **@gd** : Show difference between HEAD and local
 
### Information
 - **@m** : List all availables Magento commands
 - **@ill** : List all installed langages
 
### Permission
 - **@c7** : Apply 777 chmod on Magento var folder
 
### Setup
 - **@sdc** : Compile the setup Magento di files
 - **@su** : Upgrade the setup Magento database
 - **@sscd** :  Deploy static content
 - **@up** : Update project
