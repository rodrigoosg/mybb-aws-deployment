#!/bin/bash

# Configuration variables
CONFIG="./config"
MYBB_PACKAGE="./mybb_1809.zip"
DEPLOYMENT_DIR="/var/www/html"

# Clean-up and copy files.
rm -rf "$DEPLOYMENT_DIR"/*
unzip "$MYBB_PACKAGE"
cp -r ./Upload/* "$DEPLOYMENT_DIR"/

# Prepare and copy dynamic configuration files.
sed -e "s/MYBB_ADMINEMAIL/${MYBB_ADMINEMAIL}/g" \
    -e "s/MYBB_DOMAINNAME/${MYBB_DOMAINNAME}/g" \
    "${CONFIG}/settings.php" > "${DEPLOYMENT_DIR}/inc/settings.php"

sed -e "s/MYBB_DBNAME/${MYBB_DBNAME}/g" \
    -e "s/MYBB_DBUSERNAME/${MYBB_DBUSERNAME}/g" \
    -e "s/MYBB_DBPASSWORD/${MYBB_DBPASSWORD}/g" \
    -e "s/MYBB_DBHOSTNAME/${MYBB_DBHOSTNAME}/g" \
    -e "s/MYBB_DBPORT/${MYBB_DBPORT}/g" \
    "${CONFIG}/config.php" > "${DEPLOYMENT_DIR}/inc/config.php"

# Set proper ownership and permissions.
cd "$DEPLOYMENT_DIR"
chmod 666 inc/config.php inc/settings.php
chmod 666 inc/languages/english/*.php inc/languages/english/admin/*.php
chmod 777 cache/ cache/themes/ uploads/ uploads/avatars/
chmod 777 cache/ cache/themes/ uploads/ uploads/avatars/ admin/backups/