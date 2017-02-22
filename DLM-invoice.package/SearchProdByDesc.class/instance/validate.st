private - validation
validate
	"validate arguments are valid for command execution, 
	if not valid, update validationFailureReason"

	isValid := searchString isString
		ifTrue: [ searchString isNotEmpty ]
		ifFalse: [ false ].
	validationError := searchString isString
		ifTrue: [ searchString isEmpty
						ifTrue: ['Search string cannot be empty' ]
						ifFalse: ['']]
		ifFalse: [ 'Search string must be string' ]