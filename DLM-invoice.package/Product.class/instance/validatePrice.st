validation
validatePrice
	"validate price"

	priceIsValid := price isNil
	
"(aFloat isKindOf: Number)
		ifFalse: [ ^ false ].
	aFloat >= 0
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]"