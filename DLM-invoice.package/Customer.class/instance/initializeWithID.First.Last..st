instance initialization
initializeWithID: anInteger First: aString Last: aString2
	"answer customer initialized with id, first and last name."

	self initialize.
	id := anInteger.
	first := aString.
	last := aString2.
	invoices := self class invoices