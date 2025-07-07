project "imgui"

	language "C++"
	kind "StaticLib"
	cppdialect "C++20"

    includedirs
	{
		"",
	
		SDL_DIR .. "/include/",
	}

	links 
	{
		"SDL3"
	}

	files 
	{ 
		"*.h",
		"*.cpp",
		
		"backends/imgui_impl_opengl3.cpp",
		"backends/imgui_impl_opengl3.h",
		"backends/imgui_impl_sdl3.cpp",
		"backends/imgui_impl_sdl3.h"
	}
	
filter { "system:windows", "architecture:x86_64" }
	libdirs { SDL_DIR .. "/lib/VisualC/x64" }
filter { "system:linux", "architecture:x86_64" }
	libdirs { SDL_DIR .. "/lib/GCC/x64" }
filter {}