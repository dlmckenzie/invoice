private - validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	self validCust
		ifFalse: [ validationError := 'Cust ID is invalid or does not exist.'.
			validArguments := false ]
		ifTrue: [ self noAssociatedInvoices
				ifFalse: [ validationError := 'Cust has associated invoices.'.
					validArguments := false ]
				ifTrue: [ validArguments := true ] ]