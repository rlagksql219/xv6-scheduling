#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(void)
{
	int max_pid = 0;
	struct processInfo *p_info = malloc(sizeof(struct processInfo));

	max_pid = get_max_pid();
	
	printf(1, "PID \t PPID \t SIZE \t Number of Context Switch \t \n");

	for(int i=1; i<=max_pid; i++) {
		get_proc_info(i, p_info);
	}

	free(p_info);
	exit();
}
