private - validation
validate
	"validate product"

	isValid := self validateKey keyIsValid & self validateDescription descriptionIsValid
		& self validatePrice priceIsValid.
	validationError := isValid
		ifTrue: [ '' ]
		ifFalse: [ keyIsValid
				ifFalse: [ keyValidationError ]
				ifTrue: [ descriptionIsValid
						ifFalse: [ descriptionValidationError ]
						ifTrue: [ priceIsValid
								ifFalse: [ priceValidationError ]
								ifTrue: [ '' ]
							 ] ] ]