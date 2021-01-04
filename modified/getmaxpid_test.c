#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(void)
{
	int max_pid = 0;

	max_pid = get_max_pid();
	printf(1, "Maximum PID: %d\n", max_pid);
	exit();
}
