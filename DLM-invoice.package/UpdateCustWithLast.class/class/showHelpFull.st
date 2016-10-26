action
showHelpFull
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: 'UpdateCust: {customer id} Last: {new last name}';
		cr;
		space: 2;
		nextPutAll: '  Updates a customer''s last name.';
		cr.
	self displayHelp: stream