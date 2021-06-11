/*
    Подсчитывает кол-во слов, начинающихся с гласной буквы в строке
*/

#include <iostream>
#include <string>

using namespace std;

bool prov(string o,int l)
{
	return ((o[l] == 'A') || (o[l] == 'E') || (o[l] == 'I') || (o[l] == 'O') || (o[l] == 'U') ||
		(o[l] == 'a') || (o[l] == 'e') || (o[l] == 'i') || (o[l] == 'o') || (o[l] == 'u'));
}

int main()
{
	unsigned int m[41],b[256];
	unsigned int i, j, k,n,k1;
	string s;
	cout << "Input 10 lines" << endl;
	for (i = 0; i < 10; i++)
	{
		b[i] = 0;
		cout << "Input s:" << endl;
		j = 1; 
		for (k = 0; k < 41; k++)
			m[k] = 0;
		getline(cin, s);
		k1 = 0;
		while (isspace(s[k1]))
			k1++;
		for (k=k1; s[k] != '.'; k++)
		{
			if (s[k] != ' ')
			{
				if (k > 0)
				{
					if ((s[k - 1] == ' ') && (prov(s, k)))
						m[j] = 1;
				}
				else if (prov(s, k))
					m[j] = 1;
			}
			else if (s[k + 1] != ' ')
				j++;
		}
		n = j+1;
		for (j = 1; j < n; j++)
			b[i] += m[j];
	}
	cout << "Words num:" << endl;
	for (i = 0; i < 2; i++)
		cout << "In " << i+1 << " line there is " << b[i] << " words"<<endl;
	return 0;
}
