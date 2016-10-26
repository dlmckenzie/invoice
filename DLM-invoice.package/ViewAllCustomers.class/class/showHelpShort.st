action
showHelpShort
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		space: 5;
		nextPutAll: 'View all  -  viewAllCustomers';
		cr.
	self displayHelp: stream