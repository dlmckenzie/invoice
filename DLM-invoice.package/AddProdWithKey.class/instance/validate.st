private-validation
validate
	"validates that command can be processed (not whether it will be completed successfully)"

	key isEmptyOrNil 
		ifTrue: [ validationError := 'Product key cannot be empty'.
			validArguments := false ]
		ifFalse: [ (Application products keyIsUnique: key)
			ifTrue: [ validationError := String empty.
					validArguments := true ] 
			ifFalse: [ validationError := 'Product key ''' , key , ''' is not unique' .
				validArguments := false] ]
	
