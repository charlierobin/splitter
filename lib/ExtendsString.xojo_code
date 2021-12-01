#tag Module
Protected Module ExtendsString
	#tag Method, Flags = &h0
		Function ExpandWith(extends s as String, ParamArray params() as Pair) As String
		  for each pair as Pair in params
		    
		    var name as String = "$" + pair.Left
		    
		    var value as Variant = pair.Right
		    
		    var valueAsString as String = ""
		    
		    select case value.Type
		      
		    case Variant.TypeString
		      
		      valueAsString = value
		      
		    case Variant.TypeInt64
		      
		      valueAsString = str( value )
		      
		    case Variant.TypeDouble
		      
		      var asDouble as Double = value
		      
		      valueAsString = asDouble.ToString()
		      
		    else
		      
		      Debug.log( "Unhandled variant type" )
		      
		    end select
		    
		    s = s.ReplaceAll( name, valueAsString )
		    
		  next
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExtensionOnly(extends s as String) As String
		  // TODO tidy all of this up
		  
		  var i as Integer = s.CountFieldsB( "." )
		  
		  var extension as String = s.NthFieldB( ".", i )
		  
		  return extension
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WithoutExtension(extends s as String) As String
		  if s = "" then return s
		  
		  var i as Integer = s.CountFieldsB( "." )
		  
		  var ext as String = s.NthFieldB( ".", i )
		  
		  If i > 1 and s.InStrB( "." ) = 1 then return s
		  
		  If i > 1 then return s.LeftB( s.LenB() - ext.LenB() - 1 )
		  
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
