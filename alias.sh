# ==================================
# Magento 2 Developement Alias Tools
# ==================================

# Configuration vars
# ------------------
PROJECT_PATH='/var/www/project'
PROJECT_NAME='Project' # project folder name in pub/static/frontend 
LOG_FILE='/var/log/apache2/error.log'
MAGE_USER='www-data'
MAGE_GROUP='www-data'

# Unix colors
# -----------
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Alias definitions
# -----------------
# Display Magento commands list
alias @m='magento'
# Edit this file
alias @edit='nano ~/.bashrc'
alias @e='@edit'
# Watch log
alias @w='echo -e "${YELLOW}tail -f $LOG_FILE${NC}"
tail -f $LOG_FILE'
# Read log
alias @r='echo -e "${YELLOW}nano $LOG_FILE${NC}"
nano $LOG_FILE'
# Apply open permission on var folder
alias @c7='echo -e "${YELLOW}chmod -R 777 $PROJECT_PATH/var/*${NC}"
chmod -R 777 $PROJECT_PATH/var/*
echo -e "${YELLOW}chown -R $MAGE_USER:$MAGE_GROUP $PROJECT_PATH/*${NC}"
chown -R $MAGE_USER:$MAGE_GROUP $PROJECT_PATH/*'
#  Clean cahe
alias @cc='echo -e "${YELLOW}magento cache:clean${NC}"
magento ca:cl
@c7'
# Flush cache
alias @cf='echo -e "${YELLOW}magento cache:flush${NC}"
magento ca:fl
@c7'
# Remove cache folder
alias @rc='echo -e "${YELLOW}rm -rf var/page_cache/* var/cache/* var/generation/* var/di/*${NC}"
rm -rf $PROJECT_PATH/var/page_cache/* $PROJECT_PATH/var/cache/* $PROJECT_PATH/var/generation/* $PROJECT_PATH/var/di/*'
# Remove generated styles folder
alias @rs='echo -e "${YELLOW}rm -rf var/view_preprocessed/*${NC}"
rm -rf $PROJECT_PATH/var/view_preprocessed/*
echo -e "${YELLOW}rm -rf pub/static/frontend/$PROJECT_NAME/default/en_US/css/*${NC}"
rm -rf $PROJECT_PATH/pub/static/frontend/$PROJECT_NAME/default/en_US/css/*
echo -e "${YELLOW}rm -rf pub/static/frontend/$PROJECT_NAME/default/fr_FR/css/*${NC}"
rm -rf $PROJECT_PATH/pub/static/frontend/$PROJECT_NAME/default/fr_FR/css/*
echo -e "${YELLOW}rm -rf pub/static/frontend/$PROJECT_NAME/default/en_US/js/*${NC}"
rm -rf $PROJECT_PATH/pub/static/frontend/$PROJECT_NAME/default/en_US/js/*
echo -e "${YELLOW}rm -rf pub/static/frontend/$PROJECT_NAME/default/fr_FR/js/*${NC}"
rm -rf $PROJECT_PATH/pub/static/frontend/$PROJECT_NAME/default/fr_FR/js/*
echo -e "${YELLOW}rm -rf var/di/* var/generation/*${NC}"
rm -rf $PROJECT_PATH/var/di/* $PROJECT_PATH/var/generation/*'
# Remove generated styles folder and deploy static content
alias @rsd='echo -e "${YELLOW}Remove style files (@rs)${NC}"
@rs
echo -e "${YELLOW}magento setup:static-content:deploy en_GB${NC}"
magento setup:static-content:deploy en_GB
echo -e "${YELLOW}magento setup:static-content:deploy en_US${NC}"
magento setup:static-content:deploy en_US
echo -e "${YELLOW}magento setup:static-content:deploy fr_FR${NC}"
magento setup:static-content:deploy fr_FR
echo -e "${YELLOW}magento cache:flush${NC}"
@cf'
# Recompile Magento
alias @sdc='echo -e "${YELLOW}magento setup:di:compile${NC}"
magento setup:di:compile
@cf'
# Upgrade all Magento modules
alias @su='echo -e "${YELLOW}magento setup:upgrade${NC}"
magento setup:upgrade
@cf'
# Deploy static contents
alias @sscd='echo -e "${YELLOW}magento setup:static-content:deploy${NC}"
magento setup:static-content:deploy
@cf'
# List all installed langages
alias @ill='echo -e"${YELLOW}magento info:language:list${NC}"
magento info:language:list'
# Alias Git
alias @gl='echo -e "${YELLOW}git log${NC}"
git log'
alias @glp='echo -e "${YELLOW}git lg${NC}"
git lg'
alias @gb='echo -e "${YELLOW}git branch --all${NC}"
git branch --all'
alias @gf='echo -e "${YELLOW}git fetch${NC}"
git fetch'
alias @gfd='echo -e "${YELLOW}git fetch -p${NC}"
git fetch -p'
alias @gs='echo -e "${YELLOW}git status${NC}"
git status'
alias @ga='echo -e "${YELLOW}git add .${NC}"
git add .'
alias @gc='echo -e "${YELLOW}git checkout .${NC}"
git checkout .'
alias @gd='echo -e "${YELLOW}git diff${NC}"
git diff'
# Display help text
alias @help='
echo -e "${LIGHTRED}Magento 2${NC} ${GREEN}Developement Alias Tools - by asubit${NC}

${YELLOW}Usage:${NC}
 @[alias]

${YELLOW}Available commands:${NC}
 ${GREEN}@help${NC}  Display this help text with all availables alias
 ${GREEN}@edit${NC}  Open .bashrc script to add alias
${YELLOW}cache${NC}
 ${GREEN}@cc${NC}    Clean the Magento cache
 ${GREEN}@cf${NC}    Flush the Magento cache
 ${GREEN}@rc${NC}    Remove the cache
 ${GREEN}@rs${NC}    Remove the Magento generated style files
 ${GREEN}@rsd${NC}   Remove the Magento generated style files and deploy static content
${YELLOW}debug${NC}
 ${GREEN}@w${NC}     Watch the log file Apache Magento errors
 ${GREEN}@r${NC}     Open the log file Apache Magento errors
${YELLOW}git${NC}
 ${GREEN}@gl${NC}    Show logs
 ${GREEN}@glp${NC}   Show logs pretty
 ${GREEN}@gb${NC}    Show branches
 ${GREEN}@gf${NC}    Fetch branches
 ${GREEN}@gfd${NC}   Fetch and delete old branches
 ${GREEN}@gs${NC}    Status local
 ${GREEN}@ga${NC}    Add all local changes
 ${GREEN}@gc${NC}    Checkout all local changes
 ${GREEN}@gd${NC}    Show difference between HEAD and local
${YELLOW}information${NC}
 ${GREEN}@m${NC}     List all availables Magento commands
 ${GREEN}@ill${NC}   List all installed langages
${YELLOW}permission${NC}
 ${GREEN}@c7${NC}    Apply 777 chmod on Magento var folder
${YELLOW}setup${NC}
 ${GREEN}@sdc${NC}   Compile the setup Magento di files
 ${GREEN}@su${NC}    Upgrade the setup Magento database
 ${GREEN}@sscd${NC}  Deploy static content
${NC}"'
alias @h='@help'

# Just for fun
# ------------
alias @fun='
i=0
while true
do
    echo -en "\r\e[1;3${i}mHappy Coding !\e[0m"
    i=$(((i+1)%8))
    sleep 0.25
done
'
alias @ascii1='echo -e "${LIGHTRED}
OO\      OO\                                          OO\                      OOOOOO\
OOO\    OOO |                                         OO |                    OO  __OO\
OOOO\  OOOO | OOOOOO\   OOOOOO\   OOOOOO\  OOOOOOO\ OOOOOO\    OOOOOO\        \__/  OO |
OO\OO\OO OO | \____OO\ OO  __OO\ OO  __OO\ OO  __OO\\_OO  _|  OO  __OO\        OOOOOO  |
OO \OOO  OO | OOOOOOO |OO /  OO |OOOOOOOO |OO |  OO | OO |    OO /  OO |      OO  ____/
OO |\O  /OO |OO  __OO |OO |  OO |OO   ____|OO |  OO | OO |OO\ OO |  OO |      OO |
OO | \_/ OO |\OOOOOOO |\OOOOOOO |\OOOOOOO\ OO |  OO | \OOOO  |\OOOOOO  |      OOOOOOOO\
\__|     \__| \_______| \____OO | \_______|\__|  \__|  \____/  \______/       \________|
                       OO\   OO |
                       \OOOOOO  |
                        \______/                                                        ${NC}"
'
alias @ascii2='echo -e "${LIGHTRED}
  __  __                        _          ____  
 |  \/  | __ _  __ _  ___ _ __ | |_ ___   |___ \ 
 | |\/| |/ _\ |/ _\ |/ _ \ \_ \| __/ _ \    __) |
 | |  | | (_| | (_| |  __/ | | | || (_) |  / __/ 
 |_|  |_|\__,_|\__, |\___|_| |_|\__\___/  |_____|
               |___/                              
${NC}"
'

# Run on session start
# --------------------
cd $PROJECT_PATH
clear
@ascii2
echo -e "
${LIGHTRED}╔═════════════════════════════════════╗${NC}
${LIGHTRED}║${NC} ${YELLOW}   Welcome on Magento 2 project    ${NC} ${LIGHTRED}║${NC}
${LIGHTRED}╚═════════════════════════════════════╝${NC}"
echo -e "${LIGHTCYAN}The current directorie is : ${NC}"
pwd
echo -e "${LIGHTCYAN}The current Git branch is : ${NC}"
git branch
echo -e "${LIGHTCYAN}Happy Coding !${NC}"
