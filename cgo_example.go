package c_go

/*
#include <stdlib.h>
*/
import "C"

import "fmt"

/*
void hello(void) {
     printf("hello, world\n");
}
*/

func Hello() {
     //C.hello(); //Error: 'hello' undeclared (first use in this function)
     fmt.Println("Hello, 世界", int(C.random()));
}
