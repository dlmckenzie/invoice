action
showHelpFull
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: 'viewCust: {customer id}';
		cr;
		space: 2;
		nextPutAll: '  View a customer.';
		cr.
	self displayHelp: stream