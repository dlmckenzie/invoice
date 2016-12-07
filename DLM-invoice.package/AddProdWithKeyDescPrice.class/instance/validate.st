private - validation
validate
	self
		validateKey;
		validateDesc;
		validatePrice.
	validArguments  := keyIsValid
		ifTrue: [ descIsValid
			ifTrue: [ priceIsValid ] ].
	validationError := keyValidationError
		ifEmpty: [ descValidationError 
			ifEmpty: [ priceValidationError 
				ifEmpty: '' ] ]
