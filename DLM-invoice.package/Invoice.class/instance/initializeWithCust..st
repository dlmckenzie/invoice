initialization
initializeWithCust: aCustomer

	customer := aCustomer.
	number := self class nextNumber.
	date := Date today.
	self class generateNextNumber.
	^ self
	