action
displayHelpShort: aString
	"display formatted version of help (short version)"
	
	| stream |
	stream := String new writeStream.
	stream
		space:5;
		nextPutAll: aString;
		cr.
	self displayHelp: stream	