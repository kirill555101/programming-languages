/*
    С помощью множества подсчитывает кол-во слов, содержащих специальные символы и выводит номера этих слов
*/

#include <iostream>
#include <string>
#include <set>
#include <iterator>

using namespace std;

int main()
{
	string s;
	int j=1, n = 0, k = 0, i = 0;
	set <char> m;
	set <int> m1;
	m.insert('@');
	m.insert('#');
	m.insert('$');
	m.insert('^');
	m.insert('&');
	m.insert('_');
	m.insert('*');
	m.insert('%');
	m.insert('~');
	cout << "Input s" << endl;
	getline(cin, s);
	while (isspace(s[i]))
		i++;
	for (; s[i] != '.'; i++)
	{
		if (s[i] != ' ')
		{
			if (m.find(s[i])!=m.end())
			{
				if (k == 0)
				{
					n++; 
					m1.insert(j);
				}
				k = 1;
			}
		}
		else if (s[i + 1] != ' ')
		{
			k = 0; j++;
		}
	}
	if (n > 0)
	{
		cout << "Words number (" << n << "): ";
		copy(m1.begin(), m1.end(), ostream_iterator<int>(cout, " "));
		cout << endl;
		cout << "In text:" << endl;
		cout << s;
	}
	return 0;
}
