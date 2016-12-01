private-validation
validate
	validArguments := name isValid.
	validationError := validArguments
		ifTrue: [ String empty ]
		ifFalse: [ name validationError ]