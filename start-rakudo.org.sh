#!/bin/bash
. /var/www/rakudo.perl6.org/perl5/perlbrew/etc/bashrc
set -e -x
echo 'Starting rakudo.org update'
date
cd ~/rakudo.org/

git fetch
before=$(git rev-parse HEAD)
git checkout origin/master
after=$(git rev-parse HEAD)
cp update-rakudo.org.sh ../
cp start-rakudo.org.sh  ../

if [ "$before" != "$after" ]
then
    echo "Got new commits"
fi

echo "Starting the app"
set +e
hypnotoad app.pl
set -e

echo 'Done'
