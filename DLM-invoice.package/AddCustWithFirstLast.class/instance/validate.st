private - validation
validate
	"validates that command can be processed successfully"
	isValid := name isValid.
	validationError := isValid
		ifTrue: [ String empty ]
		ifFalse: [ name validationError ]