private - validation
validateLast
	"validate the customers last name"

	lastIsValid := newCust name lastIsValid
		ifTrue: [ last = origLast ]
		ifFalse: [ false ].
	cust
		ifNotNil: [ lastValidationFailureReason := cust name lastIsValid
				ifTrue: [ last = origLast
						ifTrue: [ 'New last name matches current name' ]
						ifFalse: [ '' ] ]
				ifFalse: [ 'Invalid last name' ] ]
		ifNil: [  ]