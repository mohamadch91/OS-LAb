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
    int fd;
    // my FiFo name
    char *fifo = "shared";
    // creating named file
    mkfifo(fifo, 0660);
    // opening named file
    char str1[100], str2[100];
    while(1)
    {
        // opening named file
        fd = open(fifo, O_RDONLY);
        read(fd, str1, 100);
        printf(" user 1 :%s\n", str1);
        // opening named file   
        close(fd);

}
    return 0;
}
