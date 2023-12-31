
#ifdef _WIN32
#include <Windows.h>
#else
#include <sys/time.h>
#endif

#include <iostream>
#include <fstream>

#include "utils.h"

std::vector<char> UTILS::ReadShaderFile(const std::string& filename) {
        std::ifstream file(filename, std::ios::ate | std::ios::binary);

        if (!file.is_open()) {
            throw std::runtime_error("failed to open file!");
        }

        size_t fileSize = (size_t) file.tellg();
        std::vector<char> buffer(fileSize);

        file.seekg(0);
        file.read(buffer.data(), fileSize);

        file.close();

        return buffer;
}


bool UTILS::ReadFile(const char* pFileName, std::string& outFile)
{
    std::ifstream f(pFileName);

    bool ret = false;

    if (f.is_open()) {
        std::string line;
        while (std::getline(f, line)) {
            outFile.append(line);
            outFile.append("\n");
        }

        f.close();

        ret = true;
    }
    else {
        DEV_ERROR("unable to open file %s",pFileName);
    }

    return ret;
}

void UTILS::DevError(const char* pFileName, uint line, const char* format, ...)
{
    char msg[1000];
    va_list args;
    va_start(args, format);
    VSNPRINTF(msg, sizeof(msg), format, args);
    va_end(args);

    char msg2[1000];
    SNPRINTF(msg2, sizeof(msg2), "%s:%d: %s", pFileName, line, msg);

    Log::error(std::string(msg2));

/*
#ifdef _WIN32
    char msg2[1000];
    _snprintf_s(msg2, sizeof(msg2), "%s:%d: %s", pFileName, line, msg);
    MessageBoxA(NULL, msg2, NULL, 0);
#else
    fprintf(stderr, "%s:%d - %s", pFileName, line, msg);
#endif
*/
}

void UTILS::DevInfo (const char* pFileName, uint line, const char* format, ... )
{
    char msg[1000];
    va_list args;
    va_start(args, format);
    VSNPRINTF(msg, sizeof(msg), format, args);
    va_end(args);

    char msg2[1000];
    SNPRINTF(msg2, sizeof(msg2), "%s:%d: %s", pFileName, line, msg);

    Log::info(std::string(msg2));
}


long long UTILS::GetCurrentTimeMillis()
{
#ifdef _WIN32
    return GetTickCount();
#else
    timeval t;
    gettimeofday(&t, NULL);

    long long ret = t.tv_sec * 1000 + t.tv_usec / 1000;
    return ret;
#endif
}