#include <fstream>
#include <iostream>
#include <nlohmann/detail/value_t.hpp>
#include <nlohmann/json.hpp>
#include <nlohmann/json_fwd.hpp>
#include <string>
// macro the check if json element exists, if not return a default value
nlohmann::json read_json(std::string path){

	std::string jsonPath;
	std::ifstream file;
	if (path != "") {
		jsonPath = path;
	} else {
		std::cout << "enter file jsonPath:";
		std::cin >> jsonPath;
	}
	try {
		file.exceptions(std::ifstream::failbit);
		file.open(jsonPath);

	} catch (std::system_error &e) {
		std::cerr << "Error: " << e.code().message() << std::endl;
	}
	std::stringstream data;
	data << file.rdbuf();
	file.close();
	return nlohmann::json::parse(data.str());
}
std::string generate_commands(const nlohmann::json workspace){
	std::string commands="";  
	commands += workspace["path"];
	commands += ";";
	commands += workspace["command"];
	commands += ";";
	commands += workspace["tmux"];
	return commands;
}
int main(int argc, char *argv[])
{
	nlohmann::json workspace = read_json(((argc==2)?argv[1]:"")); // expression that check if the workspace path is passed as a parameter
	std::cout << generate_commands(workspace) << std::endl ;
	return 1;
}
