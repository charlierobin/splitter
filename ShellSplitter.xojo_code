#tag Class
Protected Class ShellSplitter
Inherits Shell
	#tag Event
		Sub Completed()
		  RaiseEvent Completed( me.outputFolderF )
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Execute(audioFile as FolderItem, f as FolderItem, segmentSizeInSeconds as Double)
		  var projectName as String = audioFile.Name.WithoutExtension()
		  
		  var extension as String = audioFile.Name.ExtensionOnly()
		  
		  me.outputFolderF = f.Child( projectName + " split" )
		  
		  if not me.outputFolderF.Exists then
		    
		    me.outputFolderF.CreateFolder()
		    
		  else
		    
		    me.outputFolderF.RemoveContents()
		    
		  end if
		  
		  var sectionF as FolderItem = me.outputFolderF.Child( projectName )
		  
		  var command as String = kCommandTemplate.expandWith( "ffmpeg" : FFmpeg.get().ShellPath, "inputFile" : audioFile.ShellPath, "segmentLength" : segmentSizeInSeconds, "outputPath" : sectionF.ShellPath, "extension" : extension )
		  
		  Debug.log( command )
		  
		  super.Execute( command )
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Completed(f as FolderItem)
	#tag EndHook


	#tag Property, Flags = &h21
		Private outputFolderF As FolderItem
	#tag EndProperty


	#tag Constant, Name = kCommandTemplate, Type = String, Dynamic = False, Default = \"$ffmpeg -i $inputFile -f segment -segment_time $segmentLength -reset_timestamps 1 -c copy $outputPath-%03d.$extension", Scope = Private
	#tag EndConstant


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
