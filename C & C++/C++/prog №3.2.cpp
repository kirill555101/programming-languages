/*
    Формирует множество цифр, присутсвующих в записи всех чисел
*/

#include <iostream>
#include <string>
#include <set>
#include <iterator>

using namespace std;

int main()
{
	string s;
	set <char> m,m1;
	int i,j;
	cout << "Input s" << endl;
	getline(cin, s);
	cout << "Your line" << endl;
	cout << s << endl;
	for (i = 0; (!isspace(s[i])) && (s[i] != '\0'); i++)
		switch (s[i])
		{
			case '0': {m.insert('0'); break;}
			case '1': {m.insert('1'); break;}
			case '2': {m.insert('2'); break;}
			case '3': {m.insert('3'); break;}
			case '4': {m.insert('4'); break;}
			case '5': {m.insert('5'); break;}
			case '6': {m.insert('6'); break;}
			case '7': {m.insert('7'); break;}
			case '8': {m.insert('8'); break;}
			case '9': {m.insert('9'); break;}
		}
	if (s[i] == '\0') 
		exit;
	while (isspace(s[i]))
		i++;
	while (s[i] != '\0')
	{
		if (s[i] != ' ')
		{
			for (j = i; (!isspace(s[j])) && (s[j] != '\0'); j++)
				if (m.find(s[j]) != m.end())
					switch (s[j])
					{
						case '0': {m1.insert('0'); break;}
						case '1': {m1.insert('1'); break;}
						case '2': {m1.insert('2'); break;}
						case '3': {m1.insert('3'); break;}
						case '4': {m1.insert('4'); break;}
						case '5': {m1.insert('5'); break;}
						case '6': {m1.insert('6'); break;}
						case '7': {m1.insert('7'); break;}
						case '8': {m1.insert('8'); break;}
						case '9': {m1.insert('9'); break;}
					}
			i = j; m = m1;
		}
		else
		{
			i++;
			if (s[i+1]!=' ')
				m1.erase(m1.begin(), m1.end());
		}
	}
	cout << "New set: ";
	copy(m.begin(), m.end(), ostream_iterator<char>(cout, " "));
	cout << endl;
	return 0;
}
