/*
    Использование структуры
*/

#include <iostream>
#include <string>

using namespace std;

struct data1
{
	string fam;
	unsigned int year, stach, obsh;
};
int main()
{
	data1 worker[100],t;
	int i, n, j;
	cout << "Input n: ";
	cin >> n;
	for (i = 0; i < n; i++)
	{
		cout << "Input surname: ";
		cin >> worker[i].fam;
		cout << "Input stach: ";
		cin >> worker[i].stach;
		cout << "Input obsh.stach: ";
		cin >> worker[i].obsh;
	}
	for (i=0;i<n-1;i++)
		for (j=0;j<n-i-1;j++)
			if (worker[j].stach > worker[j + 1].stach)
			{
				t = worker[j];
				worker[j] = worker[j + 1];
				worker[j + 1] = t;
			}
	for (i = 0; i < 5; i++)
		cout << worker[i].fam<<" ";
	t.obsh = 0;
	for (i = 0; i < 5; i++)
		if (worker[i].obsh > t.obsh)
			t.obsh = worker[i].obsh;
	cout << endl;
	cout << t.obsh;
	return 0;
}
