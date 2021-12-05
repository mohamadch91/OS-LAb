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
        // opening named file
        fd1 = open(fifo, O_RDONLY);
        read(fd1, str1, 100);
        printf(" user 1 entered  :%s\n", str1);
        // opening named file   
        close(fd1);
        // convert lower case to upper case and write to named file
        for (int i = 0; i < 100; i++)
        {
            if(str1[i]>= 'A' && str1[i] <= 'Z')
            {
                str1[i] = str1[i] + 32;
                printf("salam");
            }
            else if(str1[i] >= 'a' && str1[i] <= 'z')
            {
                str1[i] = str1[i] - 32;
              printf("salam1");
            }
            
        }
        // copying str1 to str2
        for (int i = 0; i < 100; i++)
        {
            str2[i] = str1[i];
        }    
        fd2 = open(fifo2, O_WRONLY);
        write(fd2, str2, 100);
        //close
        close(fd2);
}
    return 0;
}
