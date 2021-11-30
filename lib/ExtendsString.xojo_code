#tag Module
Protected Module ExtendsString
	#tag Method, Flags = &h0
		Function WithoutExtension(extends s as String) As String
		  var name as String = s
		  
		  if name = "" then return name
		  
		  var i as Integer = name.CountFieldsB( "." )
		  
		  var ext as String = name.NthFieldB( ".", i )
		  
		  If i > 1 and name.InStrB( "." ) = 1 then return name
		  
		  If i > 1 then return name.LeftB( name.LenB() - ext.LenB() - 1 )
		  
		  return name
		  
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
