#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub OpenDocument(item As FolderItem)
		  if item = nil or not item.Exists then return
		  
		  var w as WindowFile = new WindowFile( item )
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function AboutSplitter() As Boolean Handles AboutSplitter.Action
			WindowAbout.Show()
			
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SelectAudioFile() As Boolean Handles SelectAudioFile.Action
			var dlg as OpenFileDialog = new OpenFileDialog()
			
			dlg.InitialFolder = SpecialFolder.Desktop
			
			dlg.Filter = OpenableFileTypes.All
			
			var f as FolderItem = dlg.ShowModal()
			
			if f <> nil then
			
			var w as WindowFile = new WindowFile( f )
			
			end if
			
			return true
			
		End Function
	#tag EndMenuHandler


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
