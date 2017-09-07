# Magento 2 Developement Alias Tools

## Installation

Clone this repository from Github with Git.
```
git clone https://github.com/asubit/magento2-development-alias.git
```
If Git isn't install on your machine get the archive of this repository and extract it.
```
wget https://github.com/asubit/magento2-development-alias/archive/master.zip
unzip master.zip
```
Replace your `.bashrc` with the `alias.sh` file.
```
cp magento2-development-alias/alias.sh ~/.bashrc
```

## Configuration
Open `~/.bashrc` and edit the following configuration variables.
 - `PROJECT_PATH` : Replace with the asolute path on your Magento instance project location
 - `PROJECT_NAME` : Replace with the generated folder name in `pub/static/frontend` (your own project namespace)
 - `LOG_FILE` : Replace with absolute path to your log favorite file (`/var/log/apache2/error.log` by default)
 - `MAGE_USER` : Replace with the Magento server user (`www-data` by default)
 - `MAGE_GROUP` : Replace with the Magento server group (`www-data` by default)

## Usage
```
@[alias]
 ```

## Available alias commands
 
|Category|Alias|Command|Description|
|--------|-----|-------|-----------|
|General|**@help**<br>**@h**| |Display this help text with all availables alias|
|General|**@edit**<br>**@e**|`nano ~/.bashrc`|Open .bashrc script to add alias|
|General|**@m**|`magento`|Display Magento CLI|
|Cache|**@cc**|`magento cache:clean`|Clean the Magento cache|
|Cache|**@cf**|`magento cache:flush`|Flush the Magento cache|
|Cache|**@rc**|`rm -rf var/page_cache/* var/cache/* var/generation/* var/di/*`|Remove cache folder|
|Cache|**@rs**|`rm -rf var/view_preprocessed/*`|Remove the Magento generated style files|
|Cache|**@rsd**|`@rs && magento setup:static-content:deploy`|Remove the Magento generated style files and deploy static content|
|Debug|**@w**|`tail -f $LOG_FILE`|Watch the log file Apache Magento errors|
|Debug|**@r**|`nano $LOG_FILE`|Open the log file Apache Magento errors|
|Git|**@gl**|`git log`|Show logs|
|Git|**@glp**|`git lg`|Show logs pretty (need "git lg" alias created, see [Git alias](https://github.com/asubit/git-alias/tree/master) repository|
|Git|**@gb**|`git branch --all`|Show all branches|
|Git|**@gf**|`git fetch`|Fetch branches|
|Git|**@gfd**|`git fetch -p`|Fetch and delete old branches|
|Git|**@gs**|`git status`|Status local|
|Git|**@ga**|`git add .`|Add all local changes|
|Git|**@gc**|`git checkout .`|Checkout all local changes|
|Git|**@gd**|`git diff`|Show difference between HEAD and local|
|Info|**@ill**|`magento info:language:list`|List all installed langages|
|Permision|**@c7**|`chmod -R 777 $PROJECT_PATH/var/* && chown -R $MAGE_USER:$MAGE_GROUP $PROJECT_PATH/*`|Apply 777 chmod on Magento var folder|
|Setup|**@sdc**|`magento setup:di:compile`|Compile the setup Magento di files|
|Setup|**@su**|`magento setup:upgrade`|Upgrade the setup Magento database|
|Setup|**@sscd**|`magento setup:static-content:deploy`|Deploy static content|
