

cd "%~dp0"


rem call gn gen --ide=vs2019 out/x86.release --args="is_clang=false is_debug=false use_glib=false use_rtti=true is_component_build=false v8_use_external_startup_data=false v8_static_library=true v8_enable_i18n_support=false target_cpu=\"x86\""
rem call ninja.exe -C out/x86.release


rem call gn gen --ide=vs2019 out/x86.debug --args="is_clang=false is_debug=true use_glib=false use_rtti=true is_component_build=true enable_iterator_debugging=true treat_warnings_as_errors=false fatal_linker_warnings=false v8_use_external_startup_data=false v8_static_library=true v8_enable_i18n_support=false target_cpu=\"x86\""
call gn gen --ide=vs2019 out/x86.debug --args="is_clang=false is_debug=true use_glib=false use_custom_libcxx=false use_rtti=true is_component_build=true enable_iterator_debugging=true treat_warnings_as_errors=false fatal_linker_warnings=false v8_use_external_startup_data=false v8_static_library=false v8_enable_i18n_support=false target_cpu=\"x86\""
rem call ninja.exe -C out/x86.debug






rem call gn gen --ide=vs2019 out/x64.release --args="is_debug=false use_glib=false is_component_build=true v8_use_external_startup_data=true v8_static_library=false is_clang=false v8_enable_i18n_support=false target_cpu=\"x64\""
rem ninja.exe -C out/x64.release  v8.dll.lib

