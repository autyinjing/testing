
#include <vector>
#include <string>
#include "time_interval.h"

int main()
{
	std::vector<std::string> v[5];
	int count = 1000000;
	for (int i = 0; i < 5; ++i)
		v[i].reserve(count);

	{
		TIME_INTERVAL_SCOPE("push_back string:");
		for (int i = 0; i < count; ++i)
		{
			std::string tmp("ceshi");
			v[0].push_back(tmp);
		}
	}

	//v.clear();
	{
		TIME_INTERVAL_SCOPE("push_back move(string):");
		for (int i = 0; i < count; ++i)
		{
			std::string tmp("ceshi");
			v[1].push_back(std::move(tmp));
		}
	}

	//v.clear();
	{
		TIME_INTERVAL_SCOPE("push_back string:");
		for (int i = 0; i < count; ++i)
			v[2].push_back(std::string("ceshi"));
	}

	//v.clear();
	{
		TIME_INTERVAL_SCOPE("push_bakc(c string):");
		for (int i = 0; i < count; ++i)
			v[3].push_back("ceshi");
	}

	//v.clear();
	{
		TIME_INTERVAL_SCOPE("emplace_back(c string):");
		for (int i = 0; i < count; ++i)
			v[4].emplace_back("ceshi");
	}

	return 0;
}
