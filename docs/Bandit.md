#CTF #CaptureTheFlag #Wargames #OverTheWire #Bandit 

Before we start, it would be very time-saving to create a text file containing all the ssh commands from the very first level to the last one so you can copy and paste them without retyping or changing the user all the time. To do so, execute this script in your terminal:

```sh
for i in {1..32}
do
	echo "ssh -p 2220 bandit$i@bandit.labs.overthewire.org" >> ssh.txt
done
cat ssh.txt
```
## Pre-0 and 0:
Bandit Level 0

Level Goal

The goal of this level is for you to log into the game using SSH. The host to which you need to connect is **bandit.labs.overthewire.org**, on port 2220. The username is **bandit0** and the password is **bandit0**. Once logged in, go to the [Level 1](https://overthewire.org/wargames/bandit/bandit1.html) page to find out how to beat Level 1. The password for the next level is stored in a file called **readme** located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.

 Commands you may need to solve this level: 
 [ls](https://man7.org/linux/man-pages/man1/ls.1.html) , [cd](https://man7.org/linux/man-pages/man1/cd.1p.html) , [cat](https://man7.org/linux/man-pages/man1/cat.1.html) , [file](https://man7.org/linux/man-pages/man1/file.1.html) , [du](https://man7.org/linux/man-pages/man1/du.1.html) , [find](https://man7.org/linux/man-pages/man1/find.1.html), [ssh](https://man7.org/linux/man-pages/man1/ssh.1.html)
Helpful Reading Material

- [Secure Shell (SSH) on Wikipedia](https://en.wikipedia.org/wiki/Secure_Shell)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

### Solution

```bash 
ssh -p 2220 bandit0@bandit.labs.overthewire.org # and type in bandit0 as password
ls # find out about readme file
cat readme # print out the readme file
```

## 1:
`NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL`
```bash
ssh -p 2220 bandit1@bandit.labs.overthewire.org
```
 Bandit Level 1 → Level 2

Level Goal

The password for the next level is stored in a file called **-** located in the home directory

Commands you may need to solve this level:  [ls](https://man7.org/linux/man-pages/man1/ls.1.html) , [cd](https://man7.org/linux/man-pages/man1/cd.1p.html) , [cat](https://man7.org/linux/man-pages/man1/cat.1.html) , [file](https://man7.org/linux/man-pages/man1/file.1.html) , [du](https://man7.org/linux/man-pages/man1/du.1.html) , [find](https://man7.org/linux/man-pages/man1/find.1.html)

 Helpful Reading Material

- [Google Search for “dashed filename”](https://www.google.com/search?q=dashed+filename)
- [Advanced Bash-scripting Guide - Chapter 3 - Special Characters](http://tldp.org/LDP/abs/html/special-chars.html)

### Solution

```sh
ls # find out about - file
cat ./- # print out the - file using ./ meaning the file - in current directory
```

## 2:
`rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi`
```sh
ssh -p 2220 bandit2@bandit.labs.overthewire.org
```
Bandit Level 2 → Level 3

Level Goal

The password for the next level is stored in a file called **spaces in this filename** located in the home directory

 Commands you may need to solve this level: [ls](https://man7.org/linux/man-pages/man1/ls.1.html) , [cd](https://man7.org/linux/man-pages/man1/cd.1p.html) , [cat](https://man7.org/linux/man-pages/man1/cat.1.html) , [file](https://man7.org/linux/man-pages/man1/file.1.html) , [du](https://man7.org/linux/man-pages/man1/du.1.html) , [find](https://man7.org/linux/man-pages/man1/find.1.html)

 Helpful Reading Material

- [Google Search for “spaces in filename”](https://www.google.com/search?q=spaces+in+filename)

### Solution

```sh
cat "spaces in this filename" # use "" for spaced filename. you can use other methods too
```

## 3:
`aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG`
```sh
ssh -p 2220 bandit3@bandit.labs.overthewire.org
```
Bandit Level 3 → Level 4

Level Goal

The password for the next level is stored in a hidden file in the **inhere** directory.

Commands you may need to solve this level: [ls](https://man7.org/linux/man-pages/man1/ls.1.html) , [cd](https://man7.org/linux/man-pages/man1/cd.1p.html) , [cat](https://man7.org/linux/man-pages/man1/cat.1.html) , [file](https://man7.org/linux/man-pages/man1/file.1.html) , [du](https://man7.org/linux/man-pages/man1/du.1.html) , [find](https://man7.org/linux/man-pages/man1/find.1.html)

### Solution

```sh
ls # find out about inhere dir
cd inhere
ls -a # find out about the secret file (both secret files and folders starts with .)
cat .hidden
```

## 4:
`2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe`
```sh
ssh -p 2220 bandit4@bandit.labs.overthewire.org
```
Bandit Level 4 → Level 5

Level Goal

The password for the next level is stored in the only human-readable file in the **inhere** directory. Tip: if your terminal is messed up, try the “reset” command.

Commands you may need to solve this level

[ls](https://man7.org/linux/man-pages/man1/ls.1.html) , [cd](https://man7.org/linux/man-pages/man1/cd.1p.html) , [cat](https://man7.org/linux/man-pages/man1/cat.1.html) , [file](https://man7.org/linux/man-pages/man1/file.1.html) , [du](https://man7.org/linux/man-pages/man1/du.1.html) , [find](https://man7.org/linux/man-pages/man1/find.1.html)

### Solution

Check for human readable file using the command `file`, human readable file will show as `ASCII text`

```sh
cd inhere
ls
for i in {00..09}
do
	file ./-file$i # find out about evey single file's filetype
done
cat ./file07 # print out the ASCII text
```

## 5:
`lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
```sh
ssh -p 2220 bandit5@bandit.labs.overthewire.org
````
Bandit Level 5 → Level 6

Level Goal

The password for the next level is stored in a file somewhere under the **inhere** directory and has all of the following properties:

- human-readable
- 1033 bytes in size
- not executable

Commands you may need to solve this level

[ls](https://man7.org/linux/man-pages/man1/ls.1.html) , [cd](https://man7.org/linux/man-pages/man1/cd.1p.html) , [cat](https://man7.org/linux/man-pages/man1/cat.1.html) , [file](https://man7.org/linux/man-pages/man1/file.1.html) , [du](https://man7.org/linux/man-pages/man1/du.1.html) , [find](https://man7.org/linux/man-pages/man1/find.1.html)

### Solution

```sh
find . -type f -size 1033c ! -executable # find in this dir files sized 1033 bytes and are not an executable
cat ./maybehere07/.file2
```

## 6:
`P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU`
```sh
ssh -p 2220 bandit6@bandit.labs.overthewire.org
````
Bandit Level 6 → Level 7

Level Goal

The password for the next level is stored **somewhere on the server** and has all of the following properties:

- owned by user bandit7
- owned by group bandit6
- 33 bytes in size

Commands you may need to solve this level: [ls](https://man7.org/linux/man-pages/man1/ls.1.html) , [cd](https://man7.org/linux/man-pages/man1/cd.1p.html) , [cat](https://man7.org/linux/man-pages/man1/cat.1.html) , [file](https://man7.org/linux/man-pages/man1/file.1.html) , [du](https://man7.org/linux/man-pages/man1/du.1.html) , [find](https://man7.org/linux/man-pages/man1/find.1.html) , [grep](https://man7.org/linux/man-pages/man1/grep.1.html)

### Solution

```bash
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null # Find in root dir files owned by bandit7 in group bandit6 and are 33 bytes in size. then output the stderr (2) into /dev/null (to discard it; for ease of finding the actual output)
cat /var/lib/dpkg/info/bandit7.password
```

## 7:
`z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S`
```sh
ssh -p 2220 bandit7@bandit.labs.overthewire.org
````
Bandit Level 7 → Level 8

Level Goal

The password for the next level is stored in the file **data.txt** next to the word **millionth**

Commands you may need to solve this level: [man](https://man7.org/linux/man-pages/man1/man.1.html), grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

### Solution
```sh
cat data.txt | grep millionth # print out the data.txt and pipe it to grep to find certain string
```
## 8:
`TESKZC0XvTetK0S9xNwm25STk5iWrBvP`
```sh
ssh -p 2220 bandit8@bandit.labs.overthewire.org
````

Level Goal

The password for the next level is stored in the file **data.txt** and is the only line of text that occurs only once

Commands you may need to solve this level: grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

Helpful Reading Material

- [Piping and Redirection](https://ryanstutorials.net/linuxtutorial/piping.php)
The password for the next level is stored in the file data.txt and is the only line of text that occurs only once

### Solution

```bash
sort data.txt | uniq -u # sort the data and pipe it to uniq with u flag to display the unique line of text
```

## 9:
`EN632PlfYiZbn3PhVK3XOGSlNInNE00t`
```sh
ssh -p 2220 bandit9@bandit.labs.overthewire.org
```
Bandit Level 9 → Level 10

Level Goal

The password for the next level is stored in the file **data.txt** in one of the few human-readable strings, preceded by several ‘=’ characters.

Commands you may need to solve this level: grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

### Solution

```bash
strings data.txt | grep "="  # Strings print readable/printable char of files (used for binary/executables)
```

## 10:
`G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s`
```sh
ssh -p 2220 bandit10@bandit.labs.overthewire.org
```
Bandit Level 10 → Level 11

Level Goal

The password for the next level is stored in the file **data.txt**, which contains base64 encoded data

Commands you may need to solve this level: grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

Helpful Reading Material

- [Base64 on Wikipedia](https://en.wikipedia.org/wiki/Base64)

### Solution

```sh
base64 -d data.txt # decode the base64 encoded data
```

## 11:
`6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM`
```sh
ssh -p 2220 bandit11@bandit.labs.overthewire.org
```
Bandit Level 11 → Level 12

Level Goal

The password for the next level is stored in the file **data.txt**, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

Commands you may need to solve this level:, grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

Helpful Reading Material

- [Rot13 on Wikipedia](https://en.wikipedia.org/wiki/Rot13)

### Solution

```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' # encode ROT13
```

## 12:
`JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv`
```bash 
ssh -p 2220 bandit12@bandit.labs.overthewire.org
```
Bandit Level 12 → Level 13

Level Goal

The password for the next level is stored in the file **data.txt**, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work using mkdir. For example: mkdir /tmp/myname123. Then copy the datafile using cp, and rename it using mv (read the manpages!)

Commands you may need to solve this level: grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd, mkdir, cp, mv, file

Helpful Reading Material

- [Hex dump on Wikipedia](https://en.wikipedia.org/wiki/Hex_dump)

### Solution

Basically, we detect the filetype using `file`, and we rename the file if needed, and we decompress it using the appropriate app.

bandit12.sh

```bash
xxd -r data.txt > data # xxd can make a hexdump or reverse it into binary form
file -b data  
mv data data.gz/bz2  
gzip -d filename.gz  
bzip2 -d filename.bz2  
tar -xf filename apapun bisa  
tar -xzf filename.tar.gz  
tar -xjf filename.tar.bz2
```

## 13:
`wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw`
```bash
ssh -p 2220 bandit13@bandit.labs.overthewire.org
```
Bandit Level 13 → Level 14

Level Goal

The password for the next level is stored in **/etc/bandit_pass/bandit14 and can only be read by user bandit14**. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. **Note:** **localhost** is a hostname that refers to the machine you are working on

Commands you may need to solve this level: ssh, telnet, nc, openssl, s_client, nmap

Helpful Reading Material

- [SSH/OpenSSH/Keys](https://help.ubuntu.com/community/SSH/OpenSSH/Keys)

### Solution

```sh
ssh -p 2220 -i ./sshkey.private bandit14@localhost 
```

## 14:
`(ssh key)` or `fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq
```sh
ssh -p 2220 bandit14@bandit.labs.overthewire.org
```
Bandit Level 14 → Level 15

Level Goal

The password for the next level can be retrieved by submitting the password of the current level to **port 30000 on localhost**.

Commands you may need to solve this level: ssh, telnet, nc, openssl, s_client, nmap

Helpful Reading Material

- [How the Internet works in 5 minutes (YouTube)](https://www.youtube.com/watch?v=7_LPdttKXPc) (Not completely accurate, but good enough for beginners)
- [IP Addresses](http://computer.howstuffworks.com/web-server5.htm)
- [IP Address on Wikipedia](https://en.wikipedia.org/wiki/IP_address)
- [Localhost on Wikipedia](https://en.wikipedia.org/wiki/Localhost)
- [Ports](http://computer.howstuffworks.com/web-server8.htm)
- [Port (computer networking) on Wikipedia](https://en.wikipedia.org/wiki/Port_(computer_networking))`

### Solution

```sh
echo 'fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq' | nc localhost 30000
```

## 15:
`jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt`
```bash
ssh -p 2220 bandit15@bandit.labs.overthewire.org
```
Bandit Level 15 → Level 16

Level Goal

The password for the next level can be retrieved by submitting the password of the current level to **port 30001 on localhost** using SSL encryption.

**Helpful note: Getting “HEARTBEATING” and “Read R BLOCK”? Use -ign_eof and read the “CONNECTED COMMANDS” section in the manpage. Next to ‘R’ and ‘Q’, the ‘B’ command also works in this version of that command…**

Commands you may need to solve this level: ssh, telnet, nc, openssl, s_client, nmap

Helpful Reading Material

- [Secure Socket Layer/Transport Layer Security on Wikipedia](https://en.wikipedia.org/wiki/Secure_Socket_Layer)
- [OpenSSL Cookbook - Testing with OpenSSL](https://www.feistyduck.com/library/openssl-cookbook/online/ch-testing-with-openssl.html)

### Solution

```sh
echo "jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt" | openssl s_client -connect localhost:30001 -quiet # use quiet to suppress some of the output (filtering useless ones)
```

## 16:
`JQttfApK4SeyHwDlI9SXGR50qclOAil1`
```bash
ssh -p 2220 bandit16@bandit.labs.overthewire.org
```
Bandit Level 16 → Level 17

Level Goal

The credentials for the next level can be retrieved by submitting the password of the current level to **a port on localhost in the range 31000 to 32000**. First find out which of these ports have a server listening on them. Then find out which of those speak SSL and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.

Commands you may need to solve this level: ssh, telnet, nc, openssl, s_client, nmap

Helpful Reading Material

- [Port scanner on Wikipedia](https://en.wikipedia.org/wiki/Port_scanner)

### Solution:

In this solution, I tried some scripting by automating the task:

```sh
#!/bin/bash

# Scan ports 31000-32000 on localhost using nmap
nmap_output=$(nmap -p 31000-32000 localhost)
pw="JQttfApK4SeyHwDlI9SXGR50qclOAil1"
# Extract open ports and store them in an array
mapfile -t port < <(echo "$nmap_output" | grep open | awk '{print $1}' | sed 's|/tcp||g')
# Loop through each open port and attempt to connect using openssl s_client
for i in "${port[@]}"; do
    echo "trying port $i"
    echo "$pw" | timeout 3 openssl s_client -connect localhost:$i -quiet 2>/dev/null
done
```

I learned a lot trying to automate simple thing like this, 2 hours worth spent i guess 😆. A bit more of explanation (thanks gpt 😛):
1. `(echo "$nmap_output"`: This part of the command takes the output of the `nmap` command stored in the variable `$nmap_output` and passes it to the next command in the pipeline.
2. `grep open`: This part of the command filters the input lines to only include lines that contain the word "open". This filters out the lines that represent ports that are open.
3. `awk '{print $1}'`: This part of the command uses `awk` to print only the first column of each line. By default, `awk` splits each input line into fields separated by whitespace. In the output of `nmap`, the first column typically represents the port number. So, this command extracts the port numbers.
4. `sed 's|/tcp||g'`: This part of the command uses `sed` (stream editor) to perform a substitution (`s`) on each line. It replaces occurrences of "/tcp" with nothing (i.e., it removes "/tcp"). The `|` character is used as the delimiter instead of the more common `/` to avoid conflicts with the `/` in "/tcp". The `g` at the end stands for "global" and ensures that all occurrences on each line are replaced, not just the first one.
## 17:
`VwOSWtCA7lRKkTfbr2IDh6awj9RNZM5e` or
```
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
-----END RSA PRIVATE KEY-----
```
if u wanna use RSA key:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
nano bandit17key # copy and paste the RSA private key here
chmod 600 bandit17key
ssh -p 2220 -i bandit17key bandit17@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
else just:
```sh
ssh -p 2220 bandit17@bandit.labs.overthewire.org
```
Bandit Level 17 → Level 18

Level Goal

There are 2 files in the homedirectory: **passwords.old and passwords.new**. The password for the next level is in **passwords.new** and is the only line that has been changed between **passwords.old and passwords.new**

**NOTE: if you have solved this level and see ‘Byebye!’ when trying to log into bandit18, this is related to the next level, bandit19**

Commands you may need to solve this level: cat, grep, ls, diff

### Solution

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
diff passwords.old passwords.new
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
the password can be found in the second output after >

## 18:
`hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit18@bandit.labs.overthewire.org "cat readme"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Bandit Level 18 → Level 19

Level Goal

The password for the next level is stored in a file **readme** in the homedirectory. Unfortunately, someone has modified **.bashrc** to log you out when you log in with SSH.

Commands you may need to solve this level: ssh, ls, cat

### Solution:

The `.bashrc` file of this level has been modifed by adding:
```sh
echo 'Byebye !'
exit 0
```
at the EOF (end of file). so it will exit the session once this file is executed. the way around this is to add argument `"somecommand"` at the end of ssh command to ask it to execute the command immidiately after executing ssh. I got to see the `.bashrc` file by doing a similar thing:
```sh
ssh -p 2220 bandit18@bandit.labs.overthewire.org "cat .bashrc"
```

## 19:
`awhqfNnAbc1naukrpqDYcF95h7HoMTrC`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit19@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bandit Level 19 → Level 20

Level Goal

To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.

Helpful Reading Material

- [setuid on Wikipedia](https://en.wikipedia.org/wiki/Setuid)

To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.

### Solution

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ls -la # find out about SUID binary executable called bandit20-do
./bandit20-do cat /etc/bandit_pass/bandit20 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUID make you do command with privilege of the owner of the SUID file. works kinda like sudo (privilege escalation).

## 20:
`VxCazJaVykI6W36BkBU0mJTCM8rR95XT`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit20@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bandit Level 20 → Level 21

Level Goal

There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

**NOTE:** Try connecting to your own network daemon to see if it works as you think

Commands you may need to solve this level: ssh, nc, cat, bash, screen, tmux, Unix ‘job control’ (bg, fg, jobs, &, CTRL-Z, …)

### Solution:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
tmux
# ctrl b + c to create new window then ctrl b + " or ctrl b + % to split window
#in first tmux window:
nc -lvp 12345 # listen to port 12345, verbose

# use ctrl b + up or down to navigate
# in another tmux window:
./suconnect 12345
# and then input the password

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

it would look something like this:
![[tmux.png]]

## 21:
`NvEJF7oVjkddltPSrdKEFOllh9V1IBcq`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit21@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bandit Level 21 → Level 22

Level Goal

A program is running automatically at regular intervals from **cron**, the time-based job scheduler. Look in **/etc/cron.d/** for the configuration and see what command is being executed.

Commands you may need to solve this level: cron, crontab, crontab(5) (use “man 5 crontab” to access this)

### Solution:

```sh
cd /etc/cron.d 
ls # check all the jobs
cat cronjob_bandit22 # check what this job does
cat /usr/bin/cronjob_bandit22.sh # print out the script
cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv # find the password here
```

## 22:
`WdDozAdTM2z9DiFEQ2mGlwngMfj4EZff`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit22@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bandit Level 22 → Level 23

Level Goal

A program is running automatically at regular intervals from **cron**, the time-based job scheduler. Look in **/etc/cron.d/** for the configuration and see what command is being executed.

**NOTE:** Looking at shell scripts written by other people is a very useful skill. The script for this level is intentionally made easy to read. If you are having problems understanding what it does, try executing it to see the debug information it prints.

Commands you may need to solve this level: cron, crontab, crontab(5) (use “man 5 crontab” to access this)

### Solution

Do similar commands as lvl 21 to check the jobs, and check the `cronjob_bandit23`, and check script it runs.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
myname=$(whoami) # assign current user's username to myname
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1) # assign MD5 hash of the echo msg to mytarget
cat /tmp/$mytarget
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## 23:
`QYw0Y2aiA672PsMmh9puTQuhoz8SyR2G`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit23@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bandit Level 23 → Level 24

Level Goal

A program is running automatically at regular intervals from **cron**, the time-based job scheduler. Look in **/etc/cron.d/** for the configuration and see what command is being executed.

**NOTE:** This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!

**NOTE 2:** Keep in mind that your shell script is removed once executed, so you may want to keep a copy around…

Commands you may need to solve this level: cron, crontab, crontab(5) (use “man 5 crontab” to access this)

### Solution:
After doing steps like from lvl 21, checking the `cronjob_bandit24` and checking the script it runs, we'll try to exploit the running cron job. we need to first understand what it does:

```sh
#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname/foo
echo "Executing and deleting all scripts in /var/spool/$myname/foo:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        owner="$(stat --format "%U" ./$i)"
        if [ "${owner}" = "bandit23" ]; then
            timeout -s 9 60 ./$i
        fi
        rm -f ./$i
    fi
done
```

it basically checks if the one who execute this script is the user `bandit23`,  then it will try running every single file in  `/var/spool/$myname/foo` and then delete them periodically (1 min in this case). we will write a script to exploit this job, the one that will copy the value of `/etc/bandit_pass/bandit24` into a `.txt` file in a `/tmp/somefolder`

[bandit23.sh](../scripts/bandit23.sh)
## 24:
`VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit24@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bandit Level 24 → Level 25

Level Goal

A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.  
You do not need to create new connections each time

### Solution:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~sh
for pin in {0000..9999}; do
    echo "VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar $pin"
done | nc localhost 30002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## 25:
`p7TaowMYrmu23Ol8hiZh9UvD0O9hpx8d`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit25@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

__Level Goal__
Logging in to bandit26 from bandit25 should be fairly easy… The shell for user bandit26 is not /bin/bash, but something else. Find out what it is, how it works and how to break out of it.

**Commands you may need to solve this level**
ssh, cat, more, vi, ls, id, pwd

### Solution

I personally think this is the best bandit level because it had me totally lost 😂 , and it was the most creative IMHO.

```bash
cat /etc/passwd | grep bandit26 # find out that bandit 26 uses /usr/bin/showtext as default shell
cat /usr/bin/showtext # find out that showtext will execute: 
```

`/usr/bin/showtext`:

```sh
#!/bin/sh

export TERM=linux

exec more ~/text.txt
exit 0
```

it executes `more` and prints `~/text.txt`:

```
  _                     _ _ _   ___   __  
 | |                   | (_) | |__ \ / /  
 | |__   __ _ _ __   __| |_| |_   ) / /_  
 | '_ \ / _` | '_ \ / _` | | __| / / '_ \ 
 | |_) | (_| | | | | (_| | | |_ / /| (_) |
 |_.__/ \__,_|_| |_|\__,_|_|\__|____\___/ 
```

 and then exits after displaying it ***FULLY***. this is the key. you gotta exploit the behavior of `more` that will activate interactive mode. It won't be fully displaying the `text.txt` by resizing your terminal to be vertically smaller.

`man more`  read about more, where you will find out that you can open vim from `more` by pressing v

`man vim`  read about `vim`, and you'll find out that you can execute from vim. by using `:e` to open files. or use `:terminal somecommand` (only vim and not vi iirc)

```sh
ssh -p 2220 -i bandit26.sshkey bandit26@localhost
```

and just press v to enter vim

 from vim: `:e /etc/bandit_pass/bandit26` or add exclamation mark `:e!` if you modified the `text.txt` file and haven't saved it.

## 26:
`c7GvcKlw9mC7aUQaPx7nwFstuAIBw1o1`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~bash
ssh -p 2220 bandit26@bandit.labs.overthewire.org
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 Bandit Level 26 → Level 27

Level Goal

Good job getting a shell! Now hurry and grab the password for bandit27!

 Commands you may need to solve this level: ls

### Solution

you can do this command from any level. but preferably, you do this in level 26 using vim exploit

```sh
ls -l /home/bandit26 # find out about SUID bin called bandit27-do 
```

do as before, get into lvl 26 by ssh and enter vim. in vim, use the command 

```sh
:terminal ./bandit27-do cat /etc/bandit_pass/bandit27
```

## 27:
`YnQpBuifNMas1hcUFk70ZmqkhUU2EuaS`
```bash
ssh -p 2220 bandit27@bandit.labs.overthewire.org
```
 Bandit Level 27 → Level 28

Level Goal

There is a git repository at `ssh://bandit27-git@localhost/home/bandit27-git/repo` via the port `2220`. The password for the user `bandit27-git` is the same as for the user `bandit27`.

Clone the repository and find the password for the next level.

Commands you may need to solve this level
git

### Solution

```sh
mkdir /tmp/your-unique-directory
cd /tmp/your-unique-directory
git clone ssh://bandit27-git@localhost:2220/home/bandit27-git/repo # or u can use GIT_SSH_COMMAND="ssh -p 2220" git clone ssh://bandit27-git@localhost/home/bandit27-git/repo
cd repo
ls
cat filename # adjust this one
```

## 28:
`AVanL161y9rsbcJIsFHuw35rjaOM19nR`
```sh
ssh -p 2220 bandit28@bandit.labs.overthewire.org
```
 Bandit Level 28 → Level 29

Level Goal

There is a git repository at `ssh://bandit28-git@localhost/home/bandit28-git/repo` via the port `2220`. The password for the user `bandit28-git` is the same as for the user `bandit28`.

Clone the repository and find the password for the next level.

 Commands you may need to solve this level
git

### Solution

after doing the exact same as before, we gotta check:
```sh
ls repo # find out about README.md
cat repo/README.md # find out that the password isn't there, we suspect that it has been changed and since git is a version control system, it records changes in the repo. so we do:
git log # get the commit hash
git show somecommithash # check the file changes, this should be enough to find the pw. but you can also rollback the file version by using:
git checkout somecommithash
```
## 29:
`tQKvmcwNYcFS6vmPHIUSI3ShmsrQZK8S`
```sh
ssh -p 2220 bandit29@bandit.labs.overthewire.org
```
 Bandit Level 29 → Level 30

Level Goal

There is a git repository at `ssh://bandit29-git@localhost/home/bandit29-git/repo` via the port `2220`. The password for the user `bandit29-git` is the same as for the user `bandit29`.

Clone the repository and find the password for the next level.

 Commands you may need to solve this level
git

### Solution 

do the same as lvl 27, then:

```sh
git branch -a # find out about all the branches
git checkout somebranch # switch to somebranch
git log # check the logs
git view somecommit hash # check the file changes
```

## 30:
`xbhV3HpNGlTIdnjUrdAlPzc2L6y9EOnS`
```sh
ssh -p 2220 bandit30@bandit.labs.overthewire.org
```
 Bandit Level 30 → Level 31

Level Goal

There is a git repository at `ssh://bandit30-git@localhost/home/bandit30-git/repo` via the port `2220`. The password for the user `bandit30-git` is the same as for the user `bandit30`.

Clone the repository and find the password for the next level.

 Commands you may need to solve this level: git

### Solution

do the same as lvl 27, and then:

```sh
git tag # check out the tags and find out about certain tag
git show sometag
```

## 31:
`OoffzGDlzhAlerFJ2cAiz1D41JW1Mhmt`
```sh
ssh -p 2220 bandit31@bandit.labs.overthewire.org
```
Bandit Level 31 → Level 32

Level Goal

There is a git repository at `ssh://bandit31-git@localhost/home/bandit31-git/repo` via the port `2220`. The password for the user `bandit31-git` is the same as for the user `bandit31`.

Clone the repository and find the password for the next level.

 Commands you may need to solve this level: git

### Solution

do the same as lvl 27, and then check the readme file.

> This time your task is to push a file to the remote repository. Details: 
> File name: key.txt
> Content: 'May I come in?'
> Branch: master

it tells us to create a spesific file and push them into master branch.

```sh
git config user.name "someusername"
git config user.email "some@email.com"
echo "May I come in?" > key.txt # create the file
git add key.txt # add the file
```

you might receive an error because `.gitignore` has been told to ignore every changes made in `*.txt` files. to overcome this, use the `-f` flag to forcefully add the file

```sh
git commit -m "somecommitmessage" # commit the change
git push origin master # push the change to master branch
```

check out the remote's response.

## 32:
`rmCBvG56y58BXzv98yZGdO7ATVL5dW8y`
```sh
ssh -p 2220 bandit32@bandit.labs.overthewire.org
```
 Bandit Level 32 → Level 33

After all this `git` stuff its time for another escape. Good luck!

 Commands you may need to solve this level: sh, man

### Solution

in this challenge, every command you type will turn into uppercase, and bash scritping is case sensitive, so you gotta find a way to bypass this. my solution is to use the environment variable `$0`. This variable usually contains the name of the shell you are running. 

In this case, by inputting `$0`, it tells the system to execute the shell again by using env var that is not affected by uppercase shell. 

in the new shell, execute:

```sh
cat /etc/bandit_pass/bandit33
```
