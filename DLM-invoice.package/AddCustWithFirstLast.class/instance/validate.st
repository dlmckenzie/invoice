validation
validate
	validArguments := true.
	validationFailureReason := nil.
	(self validFirstName and: self validLastName)
		ifTrue: [ ^ self ].
	validArguments := false.
	validationFailureReason := 'First and/or last name not valid - customer not added.'