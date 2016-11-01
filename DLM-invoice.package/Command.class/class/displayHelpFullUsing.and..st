action
displayHelpFullUsing: aSyntaxString and: anExplnationString
	"display formatted version of help (full version)"
	
	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: aSyntaxString;
		cr;
		space: 2;
		nextPutAll: anExplnationString ;
		cr.
	self displayHelp: stream