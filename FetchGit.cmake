include(FetchContent)

macro(FetchGitVersion name url tag)
    FetchContent_Declare(${name}
            GIT_REPOSITORY ${url}
            GIT_TAG ${tag}
            ${ARGN}
            )

    FetchContent_MakeAvailable(${name})
endmacro()

macro(FetchGit name url)
    FetchGitVersion(${name} ${url} "" ${ARGN})
endmacro()