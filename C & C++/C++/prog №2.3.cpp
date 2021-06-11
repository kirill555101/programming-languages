/*
    С помощью множества удаляет слова, в которых встречаются цифры
*/

#include <iostream>
#include <string>
#include <set>
#include <iterator>

using namespace std;

int main()
{
	string s;
	int j, n, k, i;
	set <char> m;
	cout << "Input s" << endl;
	getline(cin, s);
	m.insert('0');
	m.insert('1');
	m.insert('2');
	m.insert('3');
	m.insert('4');
	m.insert('5');
	m.insert('6');
	m.insert('7');
	m.insert('8');
	m.insert('9');
	i = j = n = k = 0;
	cout << "Your s" << endl;
	cout << s << endl;
	while (isspace(s[i])) i++;
	for (; s[i] != '.'; i++)
	{
		if (s[i] != ' ')
		{
			if (m.find(s[i]) != m.end())
			{
				k = 1; j = n;
				while ((!isspace(s[j])) && (s[j] != '.')) j++;
				s.erase(n, j);
			}
		}
		else if (s[i + 1] != ' ')
			n = i + 1;
	}
	if (k == 1)
	{
		cout << "New s" << endl;
		cout << s << endl;
	}
	else cout << "No words" << endl;
	return 0;
}
