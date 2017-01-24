private - validation
validateLast
	"validate the customers last name"

	lastIsValid := newCust name lastIsValid.
	lastIsValid
		ifTrue: [ lastIsValid := newCust name last = origCust name last
				ifTrue: [ false ]
				ifFalse: [ true ] ].
	cust
		ifNotNil: [ lastValidationFailureReason := newCust name lastIsValid
				ifTrue: [ newCust name last = origCust name last
		ifTrue: [ 'New last name matches current name' ]
		ifFalse: [ '' ] ]
				ifFalse: [ newCust name lastValidationError ] ]
		ifNil: [  ]