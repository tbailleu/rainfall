#include <iostream>
#include <string.h>
#include <stdlib.h>

// typedef int code(N&, N&);

class N {
public:
	int (N::*function)(N&);
	char	buffer[100];
	int		value;

	N(int nb)
	{
		this->function = &N::operator+;
		this->value = nb;
	}
	void	setAnnotation(char *str)
	{
		memcpy(this->buffer, str, strlen(str));
	};
	int		operator+(N &n)
	{
		return n.value + this->value;
	};
	int		operator-(N &n)
	{
		return n.value - this->value;
	};
	void	test(N &n)
	{
		std::cout << (this->*function)(n);
	};
};

int main(int argc,char **argv)
{
	if (argc < 2)
		exit(1);
	N n1(5);
	N n2(6);
	n1.setAnnotation(argv[1]);
	n2.test(n1);
	return (0);
}
