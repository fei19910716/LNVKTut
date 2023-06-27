

file(GLOB dirs ${CMAKE_CURRENT_SOURCE_DIR}/*)

# 构建所有samples
if(BUILD_ALL_SAMPLES)
    foreach(dir ${dirs})
        if(IS_DIRECTORY ${dir})
            add_subdirectory(${dir})
        endif()
    endforeach()
else()
    add_subdirectory(00_base_code)
    add_subdirectory(15_hello_triangle)
    add_subdirectory(16_frames_in_flight)
    add_subdirectory(17_swap_chain_recreation)
    add_subdirectory(20_staging_buffer)
    add_subdirectory(19_vertex_buffer)
    add_subdirectory(21_index_buffer)
    add_subdirectory(23_descriptor_sets)
    add_subdirectory(26_texture_mapping)
    add_subdirectory(27_depth_buffering)
    add_subdirectory(28_model_loading)
    add_subdirectory(29_mipmapping)
    add_subdirectory(30_multisampling)
    add_subdirectory(31_compute_shader)
endif()

