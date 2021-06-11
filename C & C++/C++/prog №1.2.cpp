/*
    Осуществляет ввод в имени груза, страны и объем партии с помощью структуры в dat файл, а также поиск по стране
*/

#include <iostream>
#include <fstream>
#include <locale.h>

using namespace std;

struct import
{
	char name[256],country[256];
	double amount;
};

const int max = 10;

int main()
{
	setlocale(LC_ALL, "Rus");
	import a[max],b[max];
	ofstream f;
	string search;
	int k=0;
	f.open("C:\\Users\\kir20\\Desktop\\file.dat",ios::binary);
	for (int i = 0; i < max; i++)
	{
		cout << "Введите имя товара, страну и объем товара №"<<i+1<<": ";
		cin >> a[i].name >> a[i].country >> a[i].amount;
	}
	f.write(reinterpret_cast<char*>(a), max * sizeof(import));
	if (!f)
	{
		cout << "Невозможно записать в файл";
		exit(1);
	}
	f.close();
	ifstream g;
	g.open("C:\\Users\\kir20\\Desktop\\file.dat",ios::binary);
	cout << "Введите название страны: ";
	cin >> search;
	cout << endl;
	g.read(reinterpret_cast<char*>(b), max * sizeof(import));
	if (!g)
	{
		cout << "Невозможно считать с файла";
		exit(1);
	}
	for (int i=0;i<max;i++)
		if (b[i].country == search)
		{
			cout << "Название товара "<< b[i].name << ", его объем " << b[i].amount << endl;
			k = 1;
		}
	g.close();
	if (k == 0)
		cout << "Нет товаров из такой страны"<<endl;
	return 0;
}

