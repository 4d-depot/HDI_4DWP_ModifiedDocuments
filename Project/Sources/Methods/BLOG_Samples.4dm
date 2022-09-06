//%attributes = {}

//If (Form event code=On Unload)
//If (WParea2.modified)
//CONFIRM("Would you like to save the document ?"; "Save"; "Discard")
//If (ok=1
//// do what you have to do
//End if 
//End if 
//End if 



//If (WParea2.modified)
//// save document
//OBJECT SET ENABLED(*; "btnSave"; False)  // no need to save (yet)
//WParea2.modified:=False  // will stay false until next document modification
//End if 
