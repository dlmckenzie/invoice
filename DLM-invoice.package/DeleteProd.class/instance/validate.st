private - validation
validate
	"validate that arguments are valid for successful command execution,
	If not valid, update validationFailureReason"

	self validateKey.
	validArguments := keyIsValid.
	validationError := keyValidationFailureReason