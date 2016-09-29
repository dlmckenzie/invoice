validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	validArguments := true.
	validationFailureReason := nil.
	self validCust
		ifTrue: [ ^ self ].
	validArguments := false.
	validationFailureReason := 'Cust ID is invalid or does not exist'