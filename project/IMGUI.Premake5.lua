project "IMGUI"
	kind "StaticLib"
	
	language "C++"
	cppdialect "C++20"
	
	includedirs 
	{
	
	}
	
	files 
	{ 
	}
	
filter { "system:windows", "architecture:x86_64" }
	targetdir "../lib/VisualC/x64"
filter { "system:linux", "architecture:x86_64" }
	targetdir "../lib/GCC/x64"
filter { }