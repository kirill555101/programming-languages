/*
    Делит строку на подстроки длиной n
*/

#include <iostream>
#include <string>

using namespace std;

int main()
{
	unsigned int i, j, n,k;
	string s;
	cout << "Input s:" << endl;
	getline(cin, s);
	cout << "Input n:" << endl;
	cin>>n;
	i = 0;
	while (s.length())
	{
		if (n < s.length())
		{
			if (s[n] == ' ')
			{
				for (j = 0; j < n; j++)
					cout << s[j];
				s.erase(0, n);
			}
			else
			{
				for (k = n; s[k]!=' '; k--)
					;
				for (j = 0; j < k; j++)
					cout << s[j];
				s.erase(0, k);
			}
		}
		else
		{
			for (j = 0; j < s.length(); j++)
				cout << s[j];
			s.erase(0, s.length());
		}
		cout << endl;
	}
	return 0;
}
