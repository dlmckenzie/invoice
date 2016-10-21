private-validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	validArguments := true.
	validationFailureReason := nil.
	self validSearchString
		ifTrue: [ ^ self ].
	validArguments := false.
	validationFailureReason := 'Search string may not be empty'