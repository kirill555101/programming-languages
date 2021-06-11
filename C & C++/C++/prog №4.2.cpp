/*
    С помощью множества находит в строке все буквы и цифры
*/

#include <iostream>
#include <string>
#include <set>
#include <iterator>

using namespace std;

int main()
{
	string s;
	int i;
	char j;
	set <char> m1, m2, m11, m22;
	for (j = 'a'; j < 'z'; j++)
		m1.insert(j);
	m11.insert('0');
	m11.insert('1');
	m11.insert('2');
	m11.insert('3');
	m11.insert('4');
	m11.insert('5');
	m11.insert('6');
	m11.insert('7');
	m11.insert('8');
	m11.insert('9');
	i = 0;
	cout << "Input s" << endl;
	getline(cin, s);
	while (isspace(s[i]))
		i++;
	for (; s[i] != '.'; i++)
	{
		if (s[i] != ' ')
		{
			if (m1.find(s[i]) != m1.end())
				m2.insert(s[i]);
			if (m11.find(s[i]) != m11.end())
				m22.insert(s[i]);
		}
	}
	cout << "First set: ";
	copy(m2.begin(), m2.end(), ostream_iterator<char>(cout, " "));
	cout << endl;
	cout << "Second set: ";
	copy(m22.begin(), m22.end(), ostream_iterator<char>(cout, " "));
	cout << endl;
	return 0;
}
