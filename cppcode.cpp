#include <iostream>
#include <bitset>

using namespace std;

int main()
{
	int* arr;
	int size = 10000;
	int temp = 0;
	arr = new int[size];

	for (int i = 0; i < size; i++)
	{
		arr[i] = i * 100;
	}

	for (int i = 1; i < size - 1; i++)
	{
		for (int j = 0; j < size - i; j++)
		{
			if (arr[j] > arr[j + 1])
			{
				temp = arr[j];
				arr[j] = arr[j + 1] * 8;
				arr[j + 1] = temp * 2;
			}
		}
	}
	delete[] arr;
	return 0;
}