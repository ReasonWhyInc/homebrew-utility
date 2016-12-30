# homebrew-utility
Homebrew repository for [suhirotaka/utility](https://github.com/suhirotaka/utility "suhirotaka/utility")

- [shell/ecs_login_by_service_name.sh](#item1)
- [shell/command_bookmarks.sh](#item2)

<br />
<br />

## <a name="item1"></a>shell/ecs_login_by_service_name.sh
ecs_login_by_service_name.sh logins you to ECS instance or container by ECS service name.

### Installation
```
brew tap suhirotaka/utility
brew install ecslogin
```

### Usage
```
Usage:
  ecslogin [-f PRIVATE_KEY_FILE_NAME] [-c ECS_CLUSTER_NAME] [-d] ECS_SERVICE_NAME

Options:
  -f private key file name
  -c ECS cluster name
  -d directly login to ECS container
  -h print this
```

### System dependencies
- [jq](https://stedolan.github.io/jq/ "jq")
- [AWS CLI](https://aws.amazon.com/cli/ "AWS CLI")

### Motivation
It is not an easy thing to login to ECS container of a desired ECS service name, because we need complicated steps to look up which EC2 instance is running specific ECS container. I was so frustrated that I wrote this script.

<br />
***
<br />

## <a name="item2"></a>shell/command_bookmarks.sh
command_bookmarks.sh adds command bookmark functionality to your console.

Bookmarks are saved at ~/.commandBookmarks.

### Installation
```
brew tap suhirotaka/utility
brew install cmdbm
```

### Usage
```
Usage: cmdbm [<action>] [<options>]

Actions:
  add <command>     Add command to bookmark
  ls                List bookmarks with their IDs
  edit              Edit bookmarks
  rm <ID>           Delete a bookmark of the specified ID looked up by "ls" action
  run <ID>          Run a command of the specified ID looked up by "ls" action

Options:
  --help     Print this
  --version  Show version
```
