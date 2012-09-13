#include <iostream>
#include <boost/filesystem.hpp>

int main(int argc, char const *argv[])
{
    boost::filesystem::path p(".");
	boost::filesystem::recursive_directory_iterator fileIt (p);
    while (fileIt != boost::filesystem::recursive_directory_iterator()) {
        std::cout <<  fileIt->path() << std::endl;
        fileIt++;
    }
    
	
	return 0;
}
41411690
95021100
