action
executeCmd
	"execute the command"

	validArguments
		ifTrue: [ queryResult := Application customers retrieveByLastName: searchString.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult