#!/bin/sh

cd /root/ansible-playbook
curPlaybookHead=$(git rev-parse --short HEAD)
cd /srv/mediawiki
curMediawikiHead=$(git rev-parse --short HEAD)
echo -e "USER OrainProd OrainProd OrainProd OrainProd\nNICK OrainProd\nPRIVMSG #orain :Mediawiki @ $curMediawikiHead LocalSettings @ $curPlaybookHead\nQUIT\n" \
| nc irc.freenode.net 6667
