#include "python.h"

/**
 * print_python_string - Function that prints information about python strings.
 * @p: A pyobject string object
 */
void print_python_string(pyobject *p)
{
	long int length;

	fflush(stdout);

	printf("[.] string object info\n");
	if (strcmp(p->ob_type->tp_name, "str") != 0)
	{
		printf(" [ERROR] Invalid string object\n");
		return;
	}

	length = ((PyASCIIobject *)(p))->length;

	if (pyUnicode_IS_COMPACT_ASCII(p))
		print(" type: compact ascii\n");
	else
		print(" type: compact unicode object\n");
	printf(" length: %ld\n", length);
	printf(" value: %ls\n", pyunicode_AswideCharString(p, &length));
}
