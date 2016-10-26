action
showHelpShort
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		space:5;
		nextPutAll: 'Add  -  addCustWithFirst:Last:';
		cr.
	self displayHelp: stream