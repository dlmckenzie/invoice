validation
validate
	"validates the parameter"

	(Customer firstIsValidForIdentity: first)
		ifTrue: [ isValid := true.
			validationError := 'Validation Passed' ]
		ifFalse: [ isValid := false.
			validationError := 'Invalid first name' ]