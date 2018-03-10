//
//  main.c
//  UnionFind
//
//  Created by Anne Kariny Silva Freitas on 10/03/2018.
//  Copyright © 2018 Anne Kariny Silva Freitas. All rights reserved.
//

#include <stdio.h>

typedef int bool;
#define true 1
#define false 0

int id[]= {0,1,2,3,4,5,6,7,8,9};

bool find(int p, int q) {
    return id[p] == id[q];
}

void unite(int p, int q) {
    int pid = id[p];
    for (int i = 0; i < sizeof(id); i++)
        if (id[i] == pid) id[i] = id[q];
}

void printDataStructure(){
    printf("i ");
    
    for(int i = 0; i < 10; i++) {
        printf("%d ",i);
    }
    
    printf("\nid[i] ");
    
    for(int i = 0; i < 10; i++) {
        printf(" %d ",id[i]);
    }
    
    printf("\n \n");
}

int main(int argc, const char * argv[]) {
    
    printf("unite(3, 4) \n");
    unite(3, 4);
    printDataStructure();
    
    printf("unite(4, 9) \n");
    unite(4, 9);
    printDataStructure();
    
    printf("unite(8, 0) \n");
    unite(8, 0);
    printDataStructure();
    
    printf("unite(2, 3) \n");
    unite(2, 3);
    printDataStructure();
    
    
    return 0;
}

