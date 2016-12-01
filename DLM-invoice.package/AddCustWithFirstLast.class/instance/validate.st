private-validation
validate
	"validates that command can be processed successfully"
	validArguments := name isValid.
	validationError := validArguments
		ifTrue: [ String empty ]
		ifFalse: [ name validationError ]