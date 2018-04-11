#GIT
alias g='git'
alias gs='g status'
alias gpul='g pull'
alias gb='g branch'
alias gaa='g add --all'
alias gac='g commit -am'
alias gco='g checkout'
alias gc='g commit -m'
alias gf='g fetch'
alias gp='g push'
alias amend='g commit --amend'

#COMPOSER
alias cu='composer update'
alias ci='composer install'
alias cda='composer dump-autoload -o'
alias c='composer'
alias cr='composer require'
alias update-global-composer='cd ~/.composer && composer update'
alias composer-update-global='update-global-composer'

#PHP
alias pini='cd && sudo gedit /etc/php/7.1/cli/php.ini'

#LARAVEL
alias pa='php artisan'
alias laravel-installer='composer create-project --prefer-dist laravel/laravel'
alias artisan="php artisan"
alias cclear='php artisan cache:clear'
alias serve='pa serve'

#APACHE
alias apache-start='sudo service apache2 start'
#alias restart-apache= 'sudo systemctl restart apache2'
alias apache-restart='echo "Restarting Apache2..." && sudo service apache2 restart && sudo systemctl restart apache2 && sudo /etc/init.d/apache2 reload && echo "Restart Done...Showing Status Now...." && sudo systemctl status apache2'
alias edit-apache-conf='sudo vi /etc/apache2/apache2.conf'
alias apache-dir='cd /etc/apache2'
alias apache-logs='cd /var/log/apache2'

alias edit-hosts='sudo vi /etc/hosts'
alias edit-tr-conf='sudo vi /etc/apache2/sites-available/tr-lms.conf'
alias edit-phpmyadmin-conf='sudo vi /etc/dbconfig-common/phpmyadmin.conf'

#TOMCAT
alias tomcat-start='sudo systemctl start tomcat && tomcat-status'
alias tomcat-restart='sudo systemctl restart tomcat && tomcat-status'
alias tomcat-status='sudo systemctl status tomcat'
alias tomcat-users='sudo vi /opt/tomcat/conf/tomcat-users.xml'

#Shortcuts
alias edit-aliases='sudo vi ~/.bash_aliases'
alias edit-hosts="cd && sudo vi /etc/hosts"
alias edit-bashrc="cd && sudo vi ~/.bashrc"

#Traliant
alias tr-login-dev="cd && cd $HOME/projects/traliant/AWS_KEYS && ./traliant-LMS_DEV.sh"
alias tr-login-qa="cd && cd $HOME/projects/traliant/AWS_KEYS && ./traliant-LMS_QA.sh"
alias tr-login-prod="cd && cd $HOME/projects/traliant/AWS_KEYS && ./traliant-LMS_PROD.sh"
alias tr-moodle="cd && cd projects/traliant/lms-moodle && gs"
alias tr-service="cd && cd projects/traliant/lms-service && gs"
alias tr-client="cd && cd projects/traliant/lms-client && nvm use && gs"

#SYSTEM
alias chrome="/opt/google/chrome/google-chrome"
alias cls='clear'
alias fhere="find . -name "
alias histg="history | grep"
alias cd..='cd ..'
alias ..="cd .."
alias lsl='ls -lhFA | less'
alias sl='ls'
alias lt='ls -At1 && echo "------Oldest--"'
alias ltr='ls -Art1 && echo "------Newest--"'
#make our process table searchable
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias top="htop"
alias myip="curl http://ipecho.net/plain; echo"
alias h.='history'
alias hf='history | grep $1'
alias pf='ps -e | grep $1'
alias laravel='~/.composer/vendor/bin/laravel'

alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
alias studio3T='cd && cd Downloads/studio-3t-5.6.3-linux-x64 && ./bin/studio-3t.sh'
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

# update on one command
alias update='sudo apt-get update && sudo apt-get -y upgrade'

#Get system memory, cpu usage, and gpu memory info quickliy

## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

##############################################################
# FUNCTIONS
##############################################################
mkcdir ()
{
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}
