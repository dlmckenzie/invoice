private - validation
validateLast
	"validate the customers last name"

	lastIsValid := newCust name lastIsValid and: newCust name last ~= origCust name last.
	lastValidationFailureReason := newCust name lastIsValid
		ifTrue: [ newCust name last = origCust name last
		ifTrue: [ 'New last name matches current name.' ]
		ifFalse: [ '' ] ]
		ifFalse: [ newCust name lastValidationError ]