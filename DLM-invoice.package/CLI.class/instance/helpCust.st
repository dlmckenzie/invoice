interface - help
helpCust
	"prints help intro to Transcript"

	Transcript
		show: '  Customers:';
		cr.
	AddCustWithFirstLast showHelpShort.
	ViewCust showHelpShort.
	ViewAllCustomers showHelpShort.
	SearchCustByLast showHelpShort.
	UpdateCustWithFirst showHelpShort.
	UpdateCustWithLast showHelpShort.
	DeleteCust showHelpShort