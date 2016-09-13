validation
validArguments
	"validate the commands arguments and set the validArguments instance variable as appropriate"

	(self validFirstName and: self validLastName)
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]