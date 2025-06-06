workspace "AXL"
	location 		( _ACTION ) 
	startproject 	(   "AXL3" )
	configurations 	{ "Debug", "Release" }  
	platforms 		{ "x64" } -- Add x86, ARM and ARM64  

filter "configurations:Debug"
	runtime "Debug"
	optimize "Off"
	symbols "On"
filter "configurations:Release"
	runtime "Release"
	optimize "On"
	symbols "Off"
filter {}

filter { "system:windows", "architecture:x86_64" }
	targetdir "../lib/VisualC/x64"
filter { "system:linux", "architecture:x86_64" }
	targetdir "../lib/GCC/x64"

include "premake5.project.lua"