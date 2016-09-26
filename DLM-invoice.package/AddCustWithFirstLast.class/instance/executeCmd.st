action
executeCmd
	"execute the command"

	self validate.
	validArguments
		ifTrue: [ cust := Customer newWithFirst: first Last: last.
			Application customers addCust: cust.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult 