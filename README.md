## Compilation of Bash Scripts for Push Notification

## Overview
This repository contains Bash Scripts that can be used for sending Push Notifications using the following providers
- [Pushover](https://pushover.net)
- [Pushbullet](https://www.pushbullet.com)

## Pushover
- Latest Version : **0.1.0**
- Release Date : 28-Nov-2015

### Installation
- Download and Set execute permission
```shell
wget https://raw.githubusercontent.com/arnabghosal/bash_push_notifications/master/notif_pushover.sh
chmod +x notif_pushover.sh
```

### Usage
Command line arguments are as follows
```
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

### Sample Usage
_To do_

### Dependency
- Curl
- Pushover APP

## Pushbullet
- Latest Version : **0.1.0**
- Release Date : 28-Nov-2015

### Installation
- Download and Set execute permission
```shell
wget https://raw.githubusercontent.com/arnabghosal/bash_push_notifications/master/notif_pushover.sh
chmod +x notif_pushbullet.sh
```
### Usage
Command line arguments are as follows
```
Valid Arguments
-h|--help  : Show help text
-u|--user  : Set User Token
-m|--msg   : Set Message
-t|--title : Set Title
```
User and Application token are by default referenced from config file and can be overwritten by passing the necessary argument

### Config File
Location - ~/.push.rc
```shell
PB_USR=""  # Pushbullet User Token
```

### Sample Usage
_To do_

### Dependency
- Curl
- Pushbullet APP

## License
All scripts are released under MIT License
