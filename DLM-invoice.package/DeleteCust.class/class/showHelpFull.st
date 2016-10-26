action
showHelpFull
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: 'deleteCust: {customer id}';
		cr;
		space: 2;
		nextPutAll: '  Deletes a customer.';
		cr.
	self displayHelp: stream