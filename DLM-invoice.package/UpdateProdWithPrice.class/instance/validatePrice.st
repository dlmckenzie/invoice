private - validation
validatePrice
"validate the product''s price"

	prod isNotNil
		ifTrue: [ priceIsValid := newProd priceIsValid and: newProd price ~= origProd price.
			priceValidationError := newProd priceIsValid
				ifTrue: [ newProd price = origProd price
						ifTrue: [ 'new price matches current price.' ]
						ifFalse: [ '' ] ]
				ifFalse: [ newProd priceValidationError ] ]
		ifFalse: [ priceIsValid := false.
			priceValidationError := 'not applicable - invalid price' ]

