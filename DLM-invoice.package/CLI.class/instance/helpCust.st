interface - help
helpCust
	"prints help intro to Transcript"

	stream := String new writeStream.
	stream
		nextPutAll: '  Customers:';
		cr.
	self displayHelp: stream.
	AddCustWithFirstLast showHelpShort.
	ViewCust showHelpShort.
	ViewAllCustomers showHelpShort.
	SearchCustByLast showHelpShort.
	UpdateCustWithFirst showHelpShort.
	UpdateCustWithLast showHelpShort.
	DeleteCust showHelpShort