#tag Module
Protected Module UUID
	#tag Method, Flags = &h1
		Protected Function generate() As String
		  var result as string = ""
		  
		  try
		    
		    soft declare function NSClassFromString lib "Cocoa" ( clsName as cfstringref ) as ptr
		    soft declare function UUID lib "Cocoa" selector "UUID" ( clsRef as ptr ) as ptr
		    soft declare function UUIDString lib "Cocoa" selector "UUIDString" ( obj_id as ptr ) as cfstringref
		    
		    var classPtr as Ptr = NSClassFromString( "NSUUID" ) 
		    
		    if classPtr <> nil then
		      
		      var NSUUID as ptr = UUID( classPtr )
		      
		      result = UUIDString( NSUUID )
		      
		    end if
		    
		  catch err as RuntimeException
		    
		    if err IsA EndException or err IsA ThreadEndException then
		      
		      raise err
		      
		    end if
		    
		  end try
		  
		  return result
		  
		  
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
