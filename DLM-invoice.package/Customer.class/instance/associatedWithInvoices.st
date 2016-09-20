accessing
associatedWithInvoices
	| b |
	b := (invoices select: [ :a | a customer = self ]) size.
	b > 0
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]