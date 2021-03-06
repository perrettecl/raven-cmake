function(setup_version name)
    if (PROJECT_VERSION)
        get_target_property(type ${name} TYPE)
        if (NOT "${type}" STREQUAL "INTERFACE_LIBRARY")
            string(TOUPPER ${name} up_name)
            string(REPLACE "-" "_" up_name ${up_name})
            target_compile_definitions(${name} PUBLIC "${up_name}_VERSION=\"${PROJECT_VERSION}\"")
            target_compile_definitions(${name} PUBLIC "${up_name}_VERSION_MAJOR=${PROJECT_VERSION_MAJOR}")
            target_compile_definitions(${name} PUBLIC "${up_name}_VERSION_MINOR=${PROJECT_VERSION_MINOR}")
            target_compile_definitions(${name} PUBLIC "${up_name}_VERSION_PATCH=${PROJECT_VERSION_PATCH}")
        endif()
    endif()
endfunction()
