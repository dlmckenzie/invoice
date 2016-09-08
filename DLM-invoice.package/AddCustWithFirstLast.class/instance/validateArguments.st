validation
validateArguments
	"validate the commands arguments and set the validArguments instance variable as appropriate"

	self
		validateFirstName;
		validateLastName.
	argumentsAreValid := (validFirstName and: validLastName)
		ifTrue: [ true ]
		ifFalse: [ false ]