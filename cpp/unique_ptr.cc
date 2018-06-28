
#include <vector>
#include <memory>
#include <iostream>

int main(int argc, const char* argv[])
{
	std::vector<std::unique_ptr<int>> v;
	//v.emplace_back(new int(1));
	//v.emplace_back(new int(2));
	//v.emplace_back(new int(3));
	v.push_back(new int(1));
	v.push_back(new int(2));
	v.push_back(new int(3));

	//for (auto p : v)
	for (auto it = v.begin(); it != v.end(); ++it)
		std::cout << **it << std::endl;

	return 0;
}
