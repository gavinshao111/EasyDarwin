#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

void *dealCarSetup(void *);
void *dealAppOption(void *);
void *counting(void *){
	int i = 0;
	for(;i<15;i++){
		printf("%d\n", i);
		sleep(1);
	}
	return 0;
}

int main(void)
{	
	pthread_attr_t a;
	pthread_attr_init(&a);
	pthread_attr_setdetachstate(&a, PTHREAD_CREATE_DETACHED);
	pthread_t t_a;
    pthread_t t_b;
	pthread_t t_c;
	
	//pthread_create(&t_c,&a,&counting,(void *)NULL);
	
	char ch = 0;
	while(true){
		ch = 0;
		ch = getchar();
		if ('o' == ch || 'O' == ch){
			//printf("1\n");
			pthread_create(&t_b,&a,&dealAppOption,(void *)NULL);
			pthread_create(&t_c,&a,&counting,(void *)NULL);
		}
		else if ('s' == ch || 'S' == ch){
			//printf("2.\n");
			pthread_create(&t_a,&a,&dealCarSetup,(void *)NULL);
		}
		else if ('q' == ch || 'Q' == ch)
		{
			//printf("3.\n");
			break;
		}
    
    }
	//pthread_join(t_a, NULL);
	//pthread_join(t_b, NULL);
	printf("done.\n");
    pthread_mutex_destroy(&mutex);
    pthread_cond_destroy(&cond);
    return 0;
}
/*
int pthread_cond_timedwait(pthread_cond_t *cond,pthread_mutex_t mytex,const struct timespec *abstime);
unlock the mutex, wait for signal, lock the mutex.
*/

//if recive car's setup, send a signal to th2.
void *dealCarSetup(void *junk)
{
	printf("recive car SETUP.\n");
	int rc = -1;
	pthread_mutex_lock(&mutex);	
	rc = pthread_cond_signal(&cond);
	
	pthread_mutex_unlock(&mutex);
	printf("signal sent. rc = %d\n", rc);
		
	return 0;
}
/*
if recive a App Option, send MQ, then wait until signal or timeout.
*/
void *dealAppOption(void *junk)
{
	printf("recive app option, MQ sent.\n");
	int rc = -1;
	struct timespec timeout;
	timeout.tv_sec=time(0)+4;
	timeout.tv_nsec=0; 	
	
	//sendMQ();
	pthread_mutex_lock(&mutex);
	printf("thread dealAppOption is waitting for Car Setup...\n");
	rc = pthread_cond_timedwait(&cond,&mutex,&timeout);	//		
	pthread_mutex_unlock(&mutex);
	printf("thread dealAppOption awake, rc = %d\n", rc);
		
	return 0;
}

//pthread_detach(pthread_self())