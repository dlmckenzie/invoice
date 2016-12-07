private - validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	validArguments := true.
	validationError := nil.
	self validCust
		ifTrue: [ ^ self ].
	validArguments := false.
	validationError := 'Cust ID is invalid or does not exist'