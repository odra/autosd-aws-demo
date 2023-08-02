#include <stdio.h>
#include <unistd.h>


int main(int argc, char **argv) {
    int c = 0;

    while (1) {
        printf("Counter: %d\n", c);
        c += 1;
        sleep(1);
    }

    return 0;
}
