#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;/*初始化互斥锁*/
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;/*初始化条件变量*/

void *dealCarSetup(void *);
void *dealAppOption(void *);

pthread_cond_t cond;
pthread_mutex_t mutex;

int main(void)
{	
	pthread_attr_t a; //线程属性
	pthread_attr_init(&a);  //初始化线程属性
	pthread_attr_setdetachstate(&a, PTHREAD_CREATE_DETACHED);      //设置线程属性    
	pthread_t t_a;
    pthread_t t_b;
	
	char ch = 0;
	while(true){
		ch = 0;
		ch = getchar();
		if ('o' == ch || 'O' == ch)
			pthread_create(&t_b,&a,dealAppOption,(void *)NULL); /*检测 app option*/
		else if ('s' == ch || 'S' == ch)
			pthread_create(&t_a,&a,dealCarSetup,(void *)NULL);/*检测 car setup */
		else
			break;
    
    }
	//pthread_join(t_a, NULL);/*等待进程t_b结束*/
	//pthread_join(t_b, NULL);/*等待进程t_b结束*/
    pthread_mutex_destroy(&mutex);
    pthread_cond_destroy(&cond);
    return 0;
}
/*
int pthread_cond_timedwait(pthread_cond_t *cond,pthread_mutex_t mytex,const struct timespec *abstime);
解锁线程锁
等待线程唤醒，并且条件为true
加锁线程锁.
*/

//if recive car's setup, send a signal to th2.
void *dealCarSetup(void *junk)
{
	int rc = -1;
	pthread_mutex_lock(&mutex);	
	rc = pthread_cond_signal(&cond);/*条件改变，发送信号，通知thread2进程*/
	
	pthread_mutex_unlock(&mutex);
	printf("signal sent. rc = %d\n", rc);
		
	return;
}
/*
if recive a App Option, send MQ, then wait until signal or timeout.
*/
void *dealAppOption(void *junk)
{
	printf("recive app option, MQ sent.\n");
	int rc = -1;
	struct timespec timeout;　　//定义时间点
	timeout.tv_sec=time(0)+4; //time(0) 代表的是当前时间 而tv_sec 是指的是秒
	timeout.tv_nsec=0; 	
	
	//sendMQ();
	pthread_mutex_lock(&mutex);
	printf("thread dealAppOption is waitting for Car Setup...\n");
	rc = pthread_cond_timedwait(&cond,&mutex,&timeout);	//		
	pthread_mutex_unlock(&mutex);
	printf("thread dealAppOption awake, rc = %d\n", rc);
		
	return;
}

//pthread_detach(pthread_self())