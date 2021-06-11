#include <iostream>

class F {
private:
    int a;
public:
    F() : a(3) {}
    int get_a();
};

class G : public F {
private:
    double a;
public:
    G() : a(3.14) {}
    double get_a();
};

int F::get_a()
{
    return a;
}

double G::get_a()
{
    return a;
}

using namespace std;

int main()
{
    //F g;
    G g;
    cout << "a = " << f.get_a();

    return 0;
}
