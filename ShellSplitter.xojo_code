#tag Class
Protected Class ShellSplitter
Inherits Shell
	#tag Event
		Sub Completed()
		  RaiseEvent Completed()
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Execute(audioFile as FolderItem, f as FolderItem, segmentSizeInSeconds as Double)
		  var projectName as String = audioFile.DisplayName.WithoutExtension()
		  
		  // var outputFolderF as FolderItem = audioFile.Parent.Child( projectName + " split" )
		  
		  var outputFolderF as FolderItem = f.Child( projectName + " split" )
		  
		  if not outputFolderF.Exists then
		    
		    outputFolderF.CreateFolder()
		    
		  else
		    
		    for each file as FolderItem in outputFolderF.Children()
		      
		      file.Remove()
		      
		    next
		    
		  end if
		  
		  var sectionF as FolderItem = outputFolderF.Child( projectName )
		  
		  var ffmpeg as FolderItem = SpecialFolder.Resources.Child( "ffmpeg" )
		  
		  var command as String = ffmpeg.ShellPath + " -i " + audioFile.ShellPath + " -f segment -segment_time " + str( segmentSizeInSeconds ) + " -c copy " + sectionF.ShellPath + "-%03d.mp3"
		  
		  // System.DebugLog(command)
		  
		  super.Execute( command )
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Completed()
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOut"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecuteMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="ExecuteModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Synchronous"
				"1 - Asynchronous"
				"2 - Interactive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Arguments"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExitCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Result"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
