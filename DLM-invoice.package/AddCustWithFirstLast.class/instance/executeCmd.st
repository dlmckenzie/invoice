action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ cust := Customer newWithName: name.
			Application domain customers addCust: cust.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult