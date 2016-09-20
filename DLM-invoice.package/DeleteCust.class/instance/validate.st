validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	self validCust
		ifFalse: [ validationFailureReason := 'Bad cust ID'.
			^ self ].
	self noAssociatedInvoices
		ifFalse: [ validationFailureReason := 'Cust has associated invoices'. ].