private - validation
validate
	"validate that arguments are valid for command execution,
	If not valid, update validationFailureReason"

	isValid := true.
	validationError := nil.
	self validSearchString
		ifTrue: [ ^ self ].
	isValid := false.
	validationError := 'Search string may not be empty'