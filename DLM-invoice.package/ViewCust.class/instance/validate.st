private - validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	isValid := true.
	validationError := nil.
	self validCust
		ifTrue: [ ^ self ].
	isValid := false.
	validationError := 'Cust ID is invalid or does not exist'