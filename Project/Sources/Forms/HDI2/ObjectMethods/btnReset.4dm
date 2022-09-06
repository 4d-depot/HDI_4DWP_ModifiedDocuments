// save your document



// then once the doc is saved
//reset the attribute (or reload the document)
WParea2.modified:=False:C215


OBJECT SET ENABLED:C1123(*; "btnReset"; WParea2.modified)
OBJECT SET VISIBLE:C603(*; "modified"; WParea2.modified)
