action
showHelpShort
	"show syntax of command"

	| stream |
	stream := String new writeStream.
	stream
		space: 5;
		nextPutAll: 'Search by last  -  searchCustByLast:';
		cr.
	self displayHelp: stream