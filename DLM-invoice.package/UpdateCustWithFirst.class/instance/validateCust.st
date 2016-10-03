validation
validateCust
	"comment"
	
	self validCust ifTrue: [ validationFailureReason := 'Invalid cust id' ]
	