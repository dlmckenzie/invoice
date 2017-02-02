private - validation
validate
	"validates that command can be processed successfully"

	prod isValid
		ifTrue: [ (Application products prodExistsForKey: key) not
				ifTrue: [ validArguments := true ]
				ifFalse: [ validArguments := false.
					validationError := 'Product key is not unique' ] ]
		ifFalse: [ validArguments := false.
			validationError := prod validationError ]
	