# Teleport
Small bash script to enable quick cds using folder nicknames for use in current and future shells

## Manually Install

Linux/MAC: ```Copy tp into your /usr/bin folder and chmod a+x tp ```

Windows: ```Copy tp into a folder accessible by path```
## Command Line Install
### Linux/MAC
```
$ git clone https://github.com/whitegreyblack/Teleport.git
$ ./install
```
### Windows with Bash Shell or Command
```
$ git clone https://github.com/whitegreyblack/Teleport.git
$ sh install
```
## Script Usage
Using alias commands, teleport imports directory paths into shell to use as shortcuts
```
# Commands: add, subtract, print
$ tp -a [nickname] [optional: directory] # if directory not given, uses current working directory
$ tp -s [nickname]
$ tp -p [nickname]
```
Example: adding a directory nickname and using the nickname in the same shell
```
whitegreyblack@local ~/Documents/examplefolder/examplesubfolder
$ tp -a sub  # add cwd to tp alias list and to current shell environment
$ alias
alias sub='cd ~/Documents/examplefolder/examplesubfolder/'

whitegreyblack@local ~/Documents/examplefolder/examplesubfolder
$ cd ~

whitegreyblack@local ~
$ sub

whitegreyblack@local ~/Documents/examplefolder/examplesubfolder
$           # directory changed to current example folder
``` 
