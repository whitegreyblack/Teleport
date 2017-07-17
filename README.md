# Teleport
Small bash script to enable quick cds using folder nicknames

## Manually Install

Linux/MAC: ```Copy tp into your /usr/bin folder and chmod a+x tp ```

Windows: ```Copy tp into a folder accessible by path```
## Command Line Install
### Linux/MAC
```
$ git clone https://github.com/whitegreyblack/Teleport.git
$ install
```
### Windows with Bash Shell or Command
```
$ git clone https://github.com/whitegreyblack/Teleport.git
$ sh install
```
## Design
Using alias commands, teleport imports directory paths into shell to use as shortcuts

Example:
```
$ tp -g [directory nickname]
``` 
would call load from inside tp and search for an alias that matches the dir nickname
