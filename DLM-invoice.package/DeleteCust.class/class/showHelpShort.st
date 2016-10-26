action
showHelpShort
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		space: 5;
		nextPutAll: 'Delete  -  deleteCust:';
		cr.
	self displayHelp: stream