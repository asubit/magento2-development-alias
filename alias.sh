NC='\033[0m' # No Color
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

# Magento 2 alias tools
alias @m='magento'
alias @edit='nano ~/.bashrc'
alias @e='@edit'

# Display help text
alias @help='
echo -e "${LIGHTRED}Magento 2${NC} ${GREEN}Developement Alias Tools${NC}

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
 ${GREEN}@up${NC}    Update project
${NC}"'
alias @h='@help'

alias @up='sh /var/www/webshop/scripts/update.sh'

# LOG WATCH
alias @w='echo -e "${YELLOW}tail -f /var/log/apache2/error.log${NC}"
tail -f /var/log/apache2/error.log'

# LOG READ WATCH
alias @r='echo -e "${YELLOW}nano /var/log/apache2/error.log${NC}"
nano /var/log/apache2/error.log'

#  CACHE CLEAN
alias @cc='echo -e "${YELLOW}magento cache:clean${NC}"
magento ca:cl'

#  FLUSH CACHE
alias @cf='echo -e "${YELLOW}magento cache:flush${NC}"
magento ca:fl'

#  RM CACHE
alias @rc='echo -e "${YELLOW}rm -rf var/page_cache/* var/cache/* var/generation/* var/di/*${NC}"
rm -rf var/page_cache/* var/cache/* var/generation/* var/di/*'

#  RM STYLE
alias @rs='echo -e "${YELLOW}rm -rf var/view_preprocessed/*${NC}"
rm -rf var/view_preprocessed/*
echo -e "${YELLOW}rm -rf pub/static/frontend/Roche/default/en_US/css/*${NC}"
rm -rf pub/static/frontend/Roche/default/en_US/css/*
echo -e "${YELLOW}rm -rf pub/static/frontend/Roche/default/fr_FR/css/*${NC}"
rm -rf pub/static/frontend/Roche/default/fr_FR/css/*
echo -e "${YELLOW}rm -rf pub/static/frontend/Roche/default/en_US/js/*${NC}"
rm -rf pub/static/frontend/Roche/default/en_US/js/*
echo -e "${YELLOW}rm -rf pub/static/frontend/Roche/default/fr_FR/js/*${NC}"
rm -rf pub/static/frontend/Roche/default/fr_FR/js/*
echo -e "${YELLOW}rm -rf var/di/* var/generation/*${NC}"
rm -rf var/di/* var/generation/*'

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

alias=@rs-FR='echo-e"magento setup:static-content:deploy fr_FR --exclude-theme=Magento/blank --exclude-theme=Magento/luma --exclude-theme=Magento/backend"
magento setup:static-content:deploy fr_FR --exclude-theme="Magento/blank" --exclude-theme="Magento/luma" --exclude-theme="Magento/backend"'

# CACHE PERMISSION 777
alias @c7='echo -e "${YELLOW}chmod -R 777 var/*${NC}"
chmod -R 777 var/*'

# DI COMPILE
alias @sdc='echo -e "${YELLOW}magento setup:di:compile${NC}"
magento setup:di:compile
@cf
@c7'

# UPGRADE DATABASE
alias @su='echo -e "${YELLOW}magento setup:upgrade${NC}"
magento setup:upgrade'

# LIST LANGAGE INFO
alias @ill='echo -e"${YELLOW}magento info:language:list${NC}"
magento info:language:list'

# GIT ALIAS
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

# JUST FOR FUN
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
cd /var/www/magento
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
echo "Happy Coding !"
 
