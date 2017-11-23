action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ queryResult := Application domain customers retrieveByLastName: searchString.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult