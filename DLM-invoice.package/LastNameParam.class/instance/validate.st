validation
validate
	"validates the parameter"

	(Customer lastIsValidForIdentity: last)
		ifTrue: [ isValid := true.
			validationError := 'Validation Passed' ]
		ifFalse: [ isValid := false.
			validationError := 'Invalid last name' ]