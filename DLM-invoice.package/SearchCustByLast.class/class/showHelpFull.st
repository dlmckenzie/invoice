action
showHelpFull
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: 'searchCustByLast: {all or part of the last name you are intersted in}';
		cr;
		space: 2;
		nextPutAll: '  View list of all customers that contain the provided name.';
		cr.
	self displayHelp: stream