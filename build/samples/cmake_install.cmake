# Install script for directory: C:/Workspace/myGithub/VulkanTutorial/samples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/myProject")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/00_base_code/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/15_hello_triangle/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/16_frames_in_flight/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/17_swap_chain_recreation/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/20_staging_buffer/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/19_vertex_buffer/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/21_index_buffer/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/23_descriptor_sets/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/26_texture_mapping/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/27_depth_buffering/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/28_model_loading/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/29_mipmapping/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/30_multisampling/cmake_install.cmake")
  include("C:/Workspace/myGithub/VulkanTutorial/build/samples/31_compute_shader/cmake_install.cmake")

endif()

