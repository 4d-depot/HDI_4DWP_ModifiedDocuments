//%attributes = {}
C_LONGINT:C283($1)
C_LONGINT:C283($ps; $win)
C_OBJECT:C1216($options)
C_TEXT:C284($cr)

Case of 
	: (Count parameters:C259=0)
		
		$ps:=New process:C317(Current method name:C684; 0; Current method name:C684; 0)
		
	Else 
		
		$cr:=Char:C90(Carriage return:K15:38)
		
		If (Shift down:C543)  //  for debug purpose only
			$win:=Open form window:C675("HDI"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
		Else 
			$win:=Open form window:C675("HDI"; Pop up form window:K39:11; Horizontally centered:K39:1; Vertically centered:K39:4)
		End if 
		
		$options:=New object:C1471
		
		$options.title:=""
		$options.title:=$options.title+"know if a document has been modified?"+"\r"
		$options.title:=$options.title+"(so that I can decide to save it or not)"
		
		$options.blog:="blog.4d.com"
		$options.info:="4D Write Pro feature"  //ex : "4D View Pro feature"
		
		$options.minimumVersion:="1970"  // 1970 means 19R7   1701 means 17.1 (do not use !)
		
		$options.license:=4D Write license:K44:2  // IF ANY NEEDED
		
		DIALOG:C40("HDI"; $options)
		CLOSE WINDOW:C154
		
		If ($options.quit=True:C214)
			QUIT 4D:C291
		Else 
			
			READ ONLY:C145(*)
			$win:=Open form window:C675("HDI2"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
			DIALOG:C40("HDI2")
			CLOSE WINDOW:C154
			
		End if 
		
End case 

