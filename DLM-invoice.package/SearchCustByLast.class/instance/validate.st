private - validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	validArguments := true.
	validationError := nil.
	self validSearchString
		ifTrue: [ ^ self ].
	validArguments := false.
	validationError := 'Search string may not be empty'