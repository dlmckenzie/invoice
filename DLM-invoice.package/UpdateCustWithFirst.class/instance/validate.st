private - validation
validate
	isValid := true.
	self validateCust.
	cust ifNotNil: [ self validateFirst ]
	