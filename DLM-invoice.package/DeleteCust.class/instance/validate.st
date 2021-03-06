private - validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	self custExists
		ifFalse: [ validationError := 'Cust ID is invalid or does not exist.'.
			isValid := false ]
		ifTrue: [ self noAssociatedInvoices
				ifFalse: [ validationError := 'Cust has associated invoices.'.
					isValid := false ]
				ifTrue: [ isValid := true ] ]