action
showHelpShort
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		space: 5;
		nextPutAll: 'View  -  viewCust:';
		cr.
	self displayHelp: stream