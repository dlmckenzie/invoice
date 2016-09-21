accessing
associatedWithInvoices
	| b returnValue |
	b := (invoices select: [ :a | a customer = self ]) size.
	returnValue := b > 0
		ifTrue: [ true ]
		ifFalse: [ false ].
	^ returnValue