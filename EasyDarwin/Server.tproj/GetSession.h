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

#include <mutex>                // std::mutex, std::unique_lock
#include <condition_variable>    // std::condition_variable
#include <string>
using namespace std;
typedef struct sCondVariableType {
//    condVariableType(mutex* _mtx, condition_variable* _cv){
//        mtx = _mtx;
//        cv = _cv;
//    }
    mutex mtx; // 全局互斥锁.
    condition_variable cv; // 全局条件变量.   
}condVariableType;

class CondVariable {
public:
    
    int Register(string key){
        condVariableType *ct = new condVariableType();
        condVariableMap.insert(pair <key, ct>);
        return 0;
    }
    int UnRegister(string key){
        return (1 == condVariableMap.erase(string key) ? 1 : -1; 
    }
    bbol waitForCond(string key){
        
    }
    
private:
    static map<string, condVariableType*>condVariableMap;
}



bool IsUrlExistingInSessionMap(StrPtrLen *url);

#endif /* GETSESSION_H */

