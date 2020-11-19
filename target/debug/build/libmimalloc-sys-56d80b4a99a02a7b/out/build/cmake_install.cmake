# Install script for directory: /home/elgusanito/.cargo/registry/src/github.com-1ecc6299db9ec823/libmimalloc-sys-0.1.18/c_src/mimalloc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6" TYPE SHARED_LIBRARY FILES "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/libmimalloc-debug.so.1.6")
  if(EXISTS "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6" TYPE SHARED_LIBRARY FILES "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/libmimalloc-debug.so")
  if(EXISTS "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc.cmake"
         "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/CMakeFiles/Export/_home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake" TYPE FILE FILES "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/CMakeFiles/Export/_home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake" TYPE FILE FILES "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/CMakeFiles/Export/_home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6" TYPE STATIC_LIBRARY FILES "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/libmimalloc-debug.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/include/mimalloc.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/include" TYPE FILE FILES "/home/elgusanito/.cargo/registry/src/github.com-1ecc6299db9ec823/libmimalloc-sys-0.1.18/c_src/mimalloc/include/mimalloc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/include/mimalloc-override.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/include" TYPE FILE FILES "/home/elgusanito/.cargo/registry/src/github.com-1ecc6299db9ec823/libmimalloc-sys-0.1.18/c_src/mimalloc/include/mimalloc-override.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/include/mimalloc-new-delete.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/include" TYPE FILE FILES "/home/elgusanito/.cargo/registry/src/github.com-1ecc6299db9ec823/libmimalloc-sys-0.1.18/c_src/mimalloc/include/mimalloc-new-delete.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc-config.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake" TYPE FILE FILES "/home/elgusanito/.cargo/registry/src/github.com-1ecc6299db9ec823/libmimalloc-sys-0.1.18/c_src/mimalloc/cmake/mimalloc-config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake/mimalloc-config-version.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/cmake" TYPE FILE FILES "/home/elgusanito/.cargo/registry/src/github.com-1ecc6299db9ec823/libmimalloc-sys-0.1.18/c_src/mimalloc/cmake/mimalloc-config-version.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /usr/bin/cmake -E create_symlink mimalloc-1.6/libmimalloc-debug.so.1.6 libmimalloc-debug.so WORKING_DIRECTORY /home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/..)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  MESSAGE("-- Symbolic link: /home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/libmimalloc-debug.so -> mimalloc-1.6/libmimalloc-debug.so.1.6")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/mimalloc-debug.o")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6" TYPE FILE RENAME "mimalloc-debug.o" FILES "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/CMakeFiles/mimalloc-obj.dir/src/static.c.o")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
