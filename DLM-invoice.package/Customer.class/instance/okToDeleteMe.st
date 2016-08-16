validation
okToDeleteMe
	(invoices select: [ :a | a customer = self ]) size > 0
		ifTrue: [ ^ false ]
		ifFalse: [ ^ true ]