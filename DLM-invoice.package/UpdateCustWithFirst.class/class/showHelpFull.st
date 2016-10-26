action
showHelpFull
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: 'updateCust: {customer id} First: {new first name}';
		cr;
		space: 2;
		nextPutAll: '  Updates a customer''s first name.';
		cr.
	self displayHelp: stream