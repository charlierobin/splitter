#tag Class
Protected Class ShellGetInfo
Inherits Shell
	#tag Event
		Sub Completed()
		  me.rawOutput = me.ReadAll()
		  
		  
		  var data as Dictionary = new Dictionary()
		  
		  
		  data.Value( "artist" ) = me.extractMetaData( "artist" )
		  
		  data.Value( "title" ) = me.extractMetaData( "title" )
		  
		  data.Value( "album" ) = me.extractMetaData( "album" )
		  
		  data.Value( "album_artist" ) = me.extractMetaData( "album_artist" )
		  
		  var duration as String = me.extractDuration()
		  
		  data.Value( "duration (string)" ) = duration
		  
		  if duration.Left( 3 ) = "00:" then
		    
		    duration = duration.Right( duration.Length() - 3 )
		    
		  end if
		  
		  data.Value( "duration (string trimmed)" ) = duration
		  
		  
		  var bits() as String = data.Value( "duration (string)" ).StringValue.Split( ":" )
		  
		  var hours as Double = bits( 0 ).Val()
		  
		  var minutes as Double = bits( 1 ).Val()
		  
		  var seconds as Double = bits( 2 ).Val()
		  
		  data.Value( "duration (hours)" ) = hours
		  
		  data.Value( "duration (minutes)" ) = minutes
		  
		  data.Value( "duration (seconds)" ) = seconds
		  
		  data.Value( "duration (double)" ) = seconds + ( minutes * 60 ) + ( hours * 60 * 60 )
		  
		  
		  me.rawOutput = ""
		  
		  
		  RaiseEvent Completed( data )
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Execute(audioF as FolderItem)
		  var command as String = kCommandTemplate.expandWith( "ffmpeg" : FFmpeg.get().ShellPath, "inputFile" : audioF.ShellPath )
		  
		  Debug.log( command )
		  
		  super.Execute( command )
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function extractDuration() As String
		  var rg as RegEx = new RegEx()
		  
		  rg.SearchPattern = "^\s*Duration: (.*?), .*$"
		  
		  var match as RegExMatch = rg.Search( me.rawOutput )
		  
		  if match <> nil then
		    
		    Debug.log( match.SubExpressionString( 1 ) )
		    
		    return match.SubExpressionString( 1 )
		    
		  end if
		  
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function extractMetaData(name as String) As String
		  var rg as RegEx = new RegEx()
		  
		  rg.SearchPattern = "^\s*" + name + "\s*:\s*(.*)$"
		  
		  var match as RegExMatch = rg.Search( me.rawOutput )
		  
		  if match <> nil then
		    
		    Debug.log( match.SubExpressionString( 1 ) )
		    
		    return match.SubExpressionString( 1 )
		    
		  end if
		  
		  return ""
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Completed(data as Dictionary)
	#tag EndHook


	#tag Property, Flags = &h21
		Private rawOutput As String
	#tag EndProperty


	#tag Constant, Name = kCommandTemplate, Type = String, Dynamic = False, Default = \"$ffmpeg -i $inputFile", Scope = Private
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
