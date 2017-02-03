action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ cust := Customer newWithName: name.
			Application customers addCust: cust.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult