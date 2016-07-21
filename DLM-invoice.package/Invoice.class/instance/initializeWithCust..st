initialization
initializeWithCust: aCustomer

	customer := aCustomer.
	number := self class nextNumber.
	self class generateNextNumber.
	^ self
	