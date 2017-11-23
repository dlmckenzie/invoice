action
executeCmd
	"execute command to show products whose description match input parameter"

	isValid
		ifTrue: [ queryResult := Application domain products retrieveByDescription: searchString.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult 
	