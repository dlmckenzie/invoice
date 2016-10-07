validation
validateFirst
	"comment"

	(Customer firstIsValidForIdentity: first ) ifTrue: [ ^ self ].
	validationFailureReason := 'Invalid first name'.
	validArguments := false