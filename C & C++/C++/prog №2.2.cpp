/*
    Осуществляет поиск слов в текстовом файле (на английском)
*/

#include <iostream>
#include <fstream>
#include <string>
#include <locale.h>

using namespace std;

int main()
{
	setlocale(LC_ALL, "Rus");
	char ch;
	int n,k,str,t;
	string s,m,file;
	ifstream f;
	f.open("C:\\Users\\kir20\\Desktop\\file.txt");
	while (true)
	{
		cout << "Введите слово: ";
		getline(cin, s);
		t = k = n = 0;
		while (getline(f, file))
		{
			t++;
			str = 0;
			m = "";
			for (int i = 0; file[i] != '\0'; i++)
				if (file[i] != ' ')
					m += file[i];
				else
				{
					if (m == s)
					{
						n++;
						k = 1;
						str = 1;
					}
					m = "";
				}
			if (m == s)
			{
				n++;
				k = 1;
				str = 1;
			}
			if (str == 1)
			{
				cout << "Слово '" << s << "' содержится в " << t << "-ой строке" << endl;
			}
			m = "";
		}
		if (k == 1)
			cout << "В этом файле количество слов '"<<s<<"' составляет " << n << endl;
		else
			cout << "Нет слов '"<< s <<"'"<< endl;
		cout << "Продолжить? y/n: ";
		cin >> ch;
		cin.ignore(10, '\n');
		f.close();
		cout << endl;
		if (ch == 'n')
			break;
		f.open("C:\\Users\\kir20\\Desktop\\file.txt");
	}
	return 0;
}
