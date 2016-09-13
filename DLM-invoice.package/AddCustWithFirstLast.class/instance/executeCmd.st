action
executeCmd
	"execute the command"

	self validArguments
		ifTrue: [ cust := Customer newWithFirst: first Last: last.
			Application customers addCust: cust.
			self printSuccessMsg ]
		ifFalse: [ self printFailureMsg ]