#tag Module
Protected Module ExtendsLabel
	#tag Method, Flags = &h0
		Function GetLineCount(extends l as Label) As Integer
		  var p as Picture = new Picture( l.Width, l.Height ) 
		  
		  p.Graphics.TextFont = l.TextFont 
		  
		  p.Graphics.TextSize = l.TextSize 
		  
		  var numberOfLines as Integer = Xojo.Math.Floor( p.Graphics.StringHeight( l.Text, l.width ) / p.Graphics.StringHeight ( "A", 20 ) )
		  
		  return numberOfLines
		  
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
