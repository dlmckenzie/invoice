private - validation
validate
	"validate the command"
	
	self 
		validateKey;
		validatePrice.
	isValid := keyIsValid
		ifTrue: [ priceIsValid ]
		ifFalse: [ false ].
	validationError := keyValidationError
		ifEmpty: [ priceValidationError ifEmpty: [ '' ] ]