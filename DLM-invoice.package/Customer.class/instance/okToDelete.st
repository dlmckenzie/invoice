validation
okToDelete
	self associatedWithInvoices 
		ifTrue: [ ^ false ]
		ifFalse: [ ^ true ]