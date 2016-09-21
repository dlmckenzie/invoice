validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	| vr |
	vr := ValidationResponse new.
	self validCust
		ifFalse: [ vr addFailureReason: 'Bad cust ID' ]
		ifTrue: [ self noAssociatedInvoices
				ifFalse: [ vr addFailureReason: 'Cust has associated invoices' ] ].
	