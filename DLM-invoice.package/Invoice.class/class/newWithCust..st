instance creation
newWithCust: aCustomer

	| invoice |
	invoice := self new initializeWithCust: aCustomer.
	^ invoice