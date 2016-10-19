action
executeCmd
	"execute the command"

	name := CustomerName newWithFirst: first Last: last.
	name identityIsValid
		ifTrue: [ cust := Customer newWithName: name.
			Application customers addCust: cust.
			self buildSuccessMsg ]
		ifFalse: [ validationFailureReason := 'First and/or last name not valid - customer not added.'.
			self buildFailureMsg ].
	self displayResult