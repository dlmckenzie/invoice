validation
validate
"	validArguments := true.
	validationFailureReason := nil.
	self validCust
		ifFalse: [ validationFailureReason := 'Cust ID is invalid or does not exist'.
			validArguments := false ]
		ifTrue: [ self validFirstName
				ifFalse: [ validationFailureReason := 'Invalid first name'.
					validArguments := false ] ]"
	