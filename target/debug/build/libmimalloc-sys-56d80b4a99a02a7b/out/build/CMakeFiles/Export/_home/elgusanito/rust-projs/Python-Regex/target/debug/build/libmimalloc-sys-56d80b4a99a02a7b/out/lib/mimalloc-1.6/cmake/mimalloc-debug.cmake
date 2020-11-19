#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mimalloc" for configuration "Debug"
set_property(TARGET mimalloc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mimalloc PROPERTIES
  IMPORTED_LOCATION_DEBUG "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6"
  IMPORTED_SONAME_DEBUG "libmimalloc-debug.so.1.6"
  )

list(APPEND _IMPORT_CHECK_TARGETS mimalloc )
list(APPEND _IMPORT_CHECK_FILES_FOR_mimalloc "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.so.1.6" )

# Import target "mimalloc-static" for configuration "Debug"
set_property(TARGET mimalloc-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mimalloc-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS mimalloc-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_mimalloc-static "/home/elgusanito/rust-projs/Python-Regex/target/debug/build/libmimalloc-sys-56d80b4a99a02a7b/out/lib/mimalloc-1.6/libmimalloc-debug.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
