
int add(int x, int y)
{
	int ret = 0;
	__asm volatile("MOV R1, %0"::"r"(x));
    __asm volatile("MOV R2, %0"::"r"(y));
    __asm volatile("ADD R0, R1, R1");
    __asm volatile("MOV %0, R0": "=r"(ret) :);

	return ret;
}

int main()
{
   int x = 10, y = 11, ret;

   ret = add(x, y);

    return ret;
}
