project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("Bin/" .. outputdir)
	objdir ("Bin-Int/" .. outputdir)

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"imgui_tables.cpp",
		"backends/imgui_impl_opengl3.h",
		"backends/imgui_impl_opengl3.cpp",
		"backends/imgui_impl_win32.cpp",
		"backends/imgui_impl_win32.h",
		"backends/imgui_impl_win32.cpp",
	}

	includedirs
    {
     "TheShowMan/External/imgui",
	 "TheShowMan/External/imgui/backends"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"