validation
priceIsValid: aFloat
	"validate that price is valid"

	(aFloat isKindOf: Number)
		ifFalse: [ ^ false ].
	aFloat >= 0
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]