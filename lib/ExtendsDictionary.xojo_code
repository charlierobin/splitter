#tag Module
Protected Module ExtendsDictionary
	#tag Method, Flags = &h0
		Function ToString(extends d as Dictionary, ParamArray params() as Pair) As String
		  if params.Count = 0 then 
		    
		    return d.ToStringAll()
		    
		  end if
		  
		  var s as String = ""
		  
		  for each param as Pair in params
		    
		    var displayName as String = param.Left
		    
		    var keyName as String = param.Right
		    
		    s = s + displayName + ": " + d.Value( keyName ).StringValue + EndOfLine.macOS
		    
		  next
		  
		  s = s.Left( s.Length() - 1 )
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToStringAll(extends d as Dictionary) As String
		  var s as String = ""
		  
		  var keys() as Variant = d.Keys()
		  
		  for each key as String in keys
		    
		    s = s + key + ": " + d.Value( key ).StringValue + EndOfLine.macOS
		    
		  next
		  
		  s = s.Left( s.Length() - 1 )
		  
		  return s
		  
		End Function
	#tag EndMethod


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
			InitialValue="-2147483648"
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
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
