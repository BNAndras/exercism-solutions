#include <string>

namespace log_line {
    const std::string delimiter = ": ";

    std::string message(std::string line) {
        return line.substr(line.find(delimiter) + delimiter.length());
    }

    std::string log_level(std::string line) {
        return line.substr(1, line.find(delimiter) - 2);
    }

    std::string reformat(std::string line) {
        return message(line) + " (" + log_level(line) + ")";
    }
} // namespace log_line
