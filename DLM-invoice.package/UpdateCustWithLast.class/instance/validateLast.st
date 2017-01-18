private - validation
validateLast
	"validate the customers last name"

	lastIsValid := newCust name lastIsValid.
	lastIsValid ifTrue: [last = origLast ifTrue: [lastIsValid := false] ifFalse: [ lastIsValid := true ]  ]  .
	cust
		ifNotNil: [ lastValidationFailureReason := cust name lastIsValid
				ifTrue: [ last = origLast
						ifTrue: [ 'New last name matches current name' ]
						ifFalse: [ '' ] ]
				ifFalse: [ 'Invalid last name' ] ]
		ifNil: [  ]