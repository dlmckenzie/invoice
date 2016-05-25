validation
priceIsValid: aFloat
	"validate that price is valid"

	(aFloat isKindOf: aFloat) ifFalse: [ ^ false ].
	aFloat >= 0
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]