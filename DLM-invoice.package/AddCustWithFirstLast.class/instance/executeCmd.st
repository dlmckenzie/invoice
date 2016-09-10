action
executeCmd
	"execute the command"

	self validateArguments.
	argumentsAreValid
		ifTrue: [ cust := Customer newWithFirst: first Last: last.
			app customers addCust: cust.
			self printSuccessMsg ]
		ifFalse: [ self printFailureMsg ].