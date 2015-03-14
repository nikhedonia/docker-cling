# docker-cling

CERN's cling is a Just-in-time compiler which empowers you to write and execute C++14 scripts.

#how to use the container:

##interactive mode

```sh
docker run -it --rm nikhedonia/cling cling
```

##use file 

```sh
cat myfile.cpp | docker run -it --rm nikhedonia/cling cling
```

##note

cling runs in a container, so it has no access to files of your machine unless you explicitly mount them.

eg:

```sh
docker run -v /path/to/my/Project:/src -it --rm nikhedonia/cling cling -I/src
```

for more info i suggest visiting docker.com 

# links

https://root.cern.ch/drupal/content/cling-brief 
https://root.cern.ch/drupal/content/cling-goes-public

# Example usage of cling:

```c
//test.cpp
#include<iostream>
using namespace std;
int main(){
  cout << "hello Cern" <<endl
}
```

```sh
cat test.cpp | cling -std=c++14
```

```sh
#!/usr/bin/cling
#include <cmath>
double x = std::sin(3.1)
//no ';' -> prints 4.158066e-02
.L libz
// .L metacommand => links libz at runntime
#include "zlib.h"
zlibVersion()
// prints (const char * const) 
```

#ToDo
- discover best practices
- write a script to allow a convinient usage eg: 'cling test.cpp'

