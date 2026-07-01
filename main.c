#include "vm.h"

int main(int argc, char *argv[]) {
	char *filepath = argv[1];
	(void)argc;

	VM vm;
	vm_init(&vm, filepath);

	vm_run(&vm);

	return 0;
}