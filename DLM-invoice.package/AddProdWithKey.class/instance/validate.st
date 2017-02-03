private - validation
validate
	"validates that command can be processed successfully"

	prod isValid
		ifTrue: [ (Application products prodExistsForKey: key) not
				ifTrue: [ isValid := true ]
				ifFalse: [ isValid := false.
					validationError := 'Product key is not unique' ] ]
		ifFalse: [ isValid := false.
			validationError := prod validationError ]
	