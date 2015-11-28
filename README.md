## Compilation of Bash Scripts for Push Notification

## Overview
This repository contains Bash Scripts that can be used for sending Push Notifications using the following providers
- [Pushover](https://pushover.net)
- [Pushbullet](https://www.pushbullet.com)

## Pushover

### Installation
- Download and Set execute permission
```shell
wget https://raw.githubusercontent.com/arnabghosal/bash_push_notifications/master/notif_pushover.sh
chmod +x notif_pushover.sh
```
### Usage
Command line arguments are as follows
```shell
Valid Arguments
-h|--help  : Show help text
-u|--user  : Set User Token
-a|--app   : Set Application Token
-m|--msg   : Set Message
-t|--title : Set Title
```
User and Application token are by default referenced from config file and can be overwritten by passing the necessary argument

### Config File
Location - ~/.push.rc
```shell
PO_USR=""  # Pushover User Token
PO_APP=""  # Pushover Application Token
```

### Dependency
- Curl
- Pushover APP

## Pushbullet (under Development)

### Installation
- Download and Set execute permission
```shell
wget 
chmod +x notif_pushbullet.sh
```
### Usage


### Config File
Location - ~/.push.rc
```shell
```

### Dependency
- Curl
- Pushbullet APP

## License
All scripts are released under MIT License
