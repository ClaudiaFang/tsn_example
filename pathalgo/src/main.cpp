#include "pathalgo.h"
#include <string>
#include <iostream>

using std::cin;
using std::cout;
using std::endl;
using std::getline;
using std::string;

int main(int argc, char *argv[])
{
    pathalgo hi;
    hi.print();

    string surname;
    cout << "Enter surname (RETURN to quit): ";
    while (getline(cin, surname))
    {
        if (surname.empty())
            break;
        cout << surname << endl << "Enter surname (RETURN to quit): ";
    }
    return 0;
}