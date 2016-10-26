action
showHelpShort
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		space: 5;
		nextPutAll: 'Update first name  -  updateCust:WithFirst:';
		cr.
	self displayHelp: stream