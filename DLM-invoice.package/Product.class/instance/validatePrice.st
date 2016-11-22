private - validation
validatePrice
	"validate price"

	price isNil
		ifTrue: [ priceIsValid := true. priceValidationError := '' ]
		ifFalse: [ price isNumber
			ifFalse: [ priceIsValid := false. priceValidationError := 'price must be a number' ]
			ifTrue: [ price >= 0  ifTrue: [priceIsValid := true. priceValidationError := '']]
			  ]