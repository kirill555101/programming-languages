/*
    С помощью множества удаляет буквы от i до n включительно
*/

#include <iostream>
#include <string>
#include <set>
#include <iterator> 

using namespace std;

int main()
{
	string s;
	int j,n, k, i;
	set <char> m;
	cout << "Input s" << endl;
	getline(cin, s);
	m.insert('i');
	m.insert('j');
	m.insert('k');
	m.insert('l');
	m.insert('m');
	m.insert('n');
	i = j = n = k = 0;
	cout << "Your s"<< endl;
	cout << s << endl;
	cout << "Your new s" << endl;
	while (isspace(s[i])) i++;
	for (; s[i] != '\0' ; i++)
		if (m.find(s[i]) == m.end())
			cout << s[i];
	return 0;
}
