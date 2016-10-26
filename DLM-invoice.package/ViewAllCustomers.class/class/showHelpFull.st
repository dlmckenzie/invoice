action
showHelpFull
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: 'viewAllCustomers';
		cr;
		space: 2;
		nextPutAll: '  View list of all customers.';
		cr.
	self displayHelp: stream