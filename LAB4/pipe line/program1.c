#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/types.h>
//include sysstat.h
#include<sys/stat.h>
// include fcntl.h
#include<fcntl.h>
// include string.h
#include<string.h>
//include library for len


// i need to write main function
int main(int argc, char *argv[])
{   
    // my FiFo location
    int fd1,fd2;
    // my FiFo name
    char *fifo = "shared";
    // my FiFo name
    char *fifo2 = "shared2";
    // creating named file
    mkfifo(fifo, 0660);
    mkfifo(fifo2, 0660);
    // opening named file
    char str1[100], str2[100];
    while(1)
    {
        fd1 = open(fifo, O_WRONLY);
        printf("Enter the string : ");
        scanf("%s", str1);
        write(fd1, str1, strlen(str1)+1);
        close(fd1);
        // opening named file
        fd2 = open(fifo2, O_RDONLY);
        read(fd2, str2, 100);
        printf(" user 2 :%s\n", str2);
        // close  named file
        close(fd2);


}
    return 0;
}
