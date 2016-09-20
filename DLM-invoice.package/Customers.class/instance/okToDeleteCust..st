validation
okToDeleteCust: aCustomer
	aCustomer associatedWithInvoices
	ifTrue: [ ^ false ] ifFalse: [ ^ true ] 
	