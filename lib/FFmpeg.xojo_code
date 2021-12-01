#tag Module
Protected Module FFmpeg
	#tag Method, Flags = &h1
		Protected Function get() As FolderItem
		  return SpecialFolder.Resources.Child( "ffmpeg" )
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
