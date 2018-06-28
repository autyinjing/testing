
#ifndef _TIME_INTERVAL_H
#define _TIME_INTERVAL_H
#endif

#include <iostream>
#include <memory>
#include <string>
#include <sys/time.h>

class TimeInterval
{
public:
	TimeInterval(const std::string& d) : detail(d) { init(); }
	TimeInterval() { init(); }
	~TimeInterval()
	{
		gettimeofday(&end, NULL);
		std::cout << detail
			<< 1000 * (end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec) / 1000
			<< " ms" << std::endl;
	}

protected:
	void init()
	{
		gettimeofday(&start, NULL);
	}

private:
	std::string detail;
	timeval start, end;
};

#define TIME_INTERVAL_SCOPE(d) 	std::shared_ptr<TimeInterval> time_interval_scope_begin = std::make_shared<TimeInterval>(d)
