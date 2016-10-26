action
showHelpShort
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		space: 5;
		nextPutAll: 'Update last name  -  updateCust:WithLast:';
		cr.
	self displayHelp: stream