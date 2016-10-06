/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   GetSession.h
 * Author: 10256
 *
 * Created on 2016年9月22日, 下午8:58
 */

#ifndef GETSESSION_H
#define GETSESSION_H

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>

typedef struct sCondVariableType {
    pthread_mutex_t mutex;
    pthread_cond_t cond;    
}condVariableType;

bool IsUrlExistingInSessionMap(StrPtrLen *url);

#endif /* GETSESSION_H */

