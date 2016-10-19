initialization
initializeWithFirst: aFirstNameString Last: aLastNameString
	"initialize myself"

	first := aFirstNameString.
	last := aLastNameString.
	name := CustomerName newWithFirst: first Last: last.
	self validate.