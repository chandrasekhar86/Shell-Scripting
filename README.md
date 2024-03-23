# Shell Scripting
# What is Shell?
-->Shell will allows users to interact with the operating system by executing the commands.
-->There are various types of shells, including:
    1. Bourne Shell (sh)
    2. Bash (Bourne Again Shell)
    3. ZShell
    4. CShell
    5. PowerShell
    6. KShell

# What is Shell Scripting
--> Shell scripting refers to writing scripts or programs that are interpreted by a shell to automate tasks or perform various operations on a computer system.

# Display all the Shells in Linux
    $ cat /etc/shells

# Display Default Shell of Linux
    $ echo $SHELL or $ echo $0

# Most commonly used Shell is "Bash Shell"

# What is SheBang in Shell Scripting
--> SheBang is used to specify which shell should be used to process our script.
--> Every Script file first line we should specify below line
        #!/bin/bash 
    indicates that the Bash shell interpreter located at /bin/bash should be used to execute the script.

# Write Shell Script by using below scenarios
    1. check root user or not
    2. if not root user, exit the program and inform user to run with sudo access
    3. if root user install mysql

# How to check root user or not
--> for root users $id -u --> 0
--> for normal user $id -u -- > not 0

--> If you are running 100 statements, but you got error at statement 10 shell script by default it will not stop if it faces error, it is our responsibility to check for the errors

# exit status
    $? -- > it will store the previous command status
    $? --> 0 then previous command is success
    $? --> not 0 previous command is failure (1-127)

# Functions
--> You will keep some code inside functions which is more often repeated, and call whenever you require
--> functions will do some work on behalf of us and it will update what happend

FUNCTION_NAME () {
here you write your statements, and call this function wherever required.
}

--> You need to give input, then function will give output

# Redirectors
> --> it will only redirect success output

1 --> success
2 --> failure
& --> both success and failure

ls -1 > ls.log
ls -1 1> ls.log
lsss -l 2> ls.log
ls -1 &>ls.log

> -- > it will remove previous content, and adds new content
>> -- > it will not remove, it will append

# Special Variables
        VAR1=$1
        VAR2=$2
        echo "script name: $0"
        echo "variable 1: $VAR1"
        echo "all vars: $@"
        echo "number of vars: $#"



