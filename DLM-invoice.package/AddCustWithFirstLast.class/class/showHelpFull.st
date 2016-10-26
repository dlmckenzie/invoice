action
showHelpFull
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: 'addCustWithFirst: {first name} Last: {last name}';
		cr;
		space: 2;
		nextPutAll: '  Adds a customer.';
		cr.
	self displayHelp: stream