private - validation
validate
	self
		validateKey;
		validateDesc;
		validatePrice.
	isValid := keyIsValid
		ifTrue: [ descIsValid
				ifTrue: [ priceIsValid ]
				ifFalse: [ false ] ]
		ifFalse: [false].
	validationError := keyValidationError
		ifEmpty:
			[ descValidationError ifEmpty: [ priceValidationError ifEmpty: [ '' ] ] ]