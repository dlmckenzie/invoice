private - validation
validate
	self
		validateKey;
		validateDesc;
		validatePrice.
	validArguments  := keyIsValid
		ifTrue: [ descIsValid
			ifTrue: [ priceIsValid ] ].
	validationError := keyValidationFailureReason
		ifEmpty: [ descValidationFailureReason
			ifEmpty: [ priceValidationFailureReason
				ifEmpty: [''] ] ]
