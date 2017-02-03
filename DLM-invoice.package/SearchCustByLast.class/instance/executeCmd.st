action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ queryResult := Application customers retrieveByLastName: searchString.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult