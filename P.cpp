int main()
{
 	int a0 = 1;
 	int a1 = 1;
 	for(int i = 1; i < 10; i++){
 		auto ne = a0 + a1;
 		a0 = a1;
 		a1 = ne;
 	}
    return 0;
}
