/*
    Выравнивает строку по ширине, вставляя между словами одинаковое число пробелов
*/

#include <iostream>
#include <string>

using namespace std;

int main()
{
	unsigned int i,space,words,j;
	string s;
	cout << "Input 10 lines" << endl;
	for (j = 0; j < 10; j++)
	{
		cout << "Input s:" << endl;
		getline(cin, s);
		space = 0;
		for (i = 0; isspace(s[i]); i++)
			space++;
		s.erase(0, i);
		reverse(s.begin(), s.end());
		for (i = 0; isspace(s[i]); i++)
			space++;
		s.erase(0, i);
		reverse(s.begin(), s.end());
		words = 0;
		i = 0;
		for (; s.find("  ") != string::npos; s.erase(s.find("  "), 1), space += 2)
			;
		while (s[i] != '\0')
		{
			while ((!isspace(s[i])) && (s[i] != '\0'))
				i++;
			words++;
			while ((isspace(s[i])) && (s[i] != '\0'))
				i++;
		}
		if (words > 1)
			space /= (words - 1);
		i = 0;
		while (s[i] != '\0')
		{
			while ((!isspace(s[i])) && (s[i] != '\0'))
				i++;
			s.insert(i, space, ' ');
			while ((isspace(s[i])) && (s[i] != '\0'))
				i++;
		}
		cout << endl;
		cout << "Your new line: " << endl;
		cout << s << endl;
	}
	return 0;
}
