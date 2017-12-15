// i686-w64-mingw32-gcc -o a.exe a.cpp

#include <stdio.h>

int main() {
	wchar_t s[] = L"hello world\n";
	wprintf(L"%s", s);
}
