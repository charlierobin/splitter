#tag Class
Protected Class ShellGetWaveform
Inherits Shell
	#tag Event
		Sub Completed()
		  var p as Picture = Picture.Open( me.f )
		  
		  RaiseEvent Completed( p )
		  
		  try
		    
		    me.f.Remove()
		    
		    // me.f.MoveTo( SpecialFolder.Desktop )
		    
		  catch error as IOException
		    
		    Debug.log( error.Message )
		    
		  end try
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Execute(audioF as FolderItem, length as Double)
		  me.f = SpecialFolder.Temporary.Child( UUID.generate() + "-waveform.png" )
		  
		  // var scale as Double = length / ( 5 * 60 )
		  
		  // var finalWidth as Integer = scale * 1000
		  
		  var finalWidth as Integer = 1000
		  
		  var finalHeight as Integer = 200
		  
		  var command as String = kCommandTemplate.expandWith( "ffmpeg" : FFmpeg.get().ShellPath, "inputFile" : audioF.ShellPath, "width" : finalWidth, "height" : finalHeight, "outputPath" : me.f.ShellPath )
		  
		  Debug.log( command )
		  
		  super.Execute( command )
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Completed(p as Picture)
	#tag EndHook


	#tag Property, Flags = &h21
		Private f As FolderItem
	#tag EndProperty


	#tag Constant, Name = kCommandTemplate, Type = String, Dynamic = False, Default = \"$ffmpeg -i $inputFile -filter_complex showwavespic -s $widthx$height -frames:v 1 $outputPath", Scope = Private
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
