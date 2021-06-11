/*
    Использует структуру и считает стипендию студентов
*/

#include <iostream>
#include <string>

using namespace std;

struct student
{
	string fam;
	int a[4];
	double styp;
};

int main()
{
	student group[30],t;
	int i,j,n=30;
	double stypendia;
	cout << "Input stypendia: ";
	cin >> stypendia;
	for (i = 0; i < 30; i++)
	{
		cout << "Input fam: ";
		cin >> group[i].fam;
		cout << "Input marks: ";
		for (j = 0; j < 4; j++)
			cin >> group[i].a[j];
		unsigned int p = 0, c = 0, t = 0;
		for (j = 0; j < 4; j++)
			switch (group[i].a[j])
			{
				case 3: t++; break;
				case 4: c++; break;
				case 5: p++; break;
			}
		if (p == 4) group[i].styp = 1.25 * stypendia;
		else if (p == 3 && c == 1) group[i].styp = 1.10 * stypendia;
		else if (c == 4) group[i].styp = stypendia;
		else if (c == 1) group[i].styp = 0.85 * stypendia;
		else if (c > 1) group[i].styp = 0;
	}
	for (i = 0; i < n - 1; i++)
		for (j = 0; j < n - i - 1; j++)
			if (group[j].styp > group[j + 1].styp)
			{
				t = group[j];
				group[j] = group[j + 1];
				group[j + 1] = t;
			}
	for (i = 0; i < 30; i++)
		cout << "Student " << group[i].fam << " will get " << group[i].styp;
	return 0;
}
