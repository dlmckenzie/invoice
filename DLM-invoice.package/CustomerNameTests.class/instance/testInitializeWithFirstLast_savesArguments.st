testing - happy path
testInitializeWithFirstLast_savesArguments
	"test that arguments get saved"

	| name first last|
	first := 'Joe'.
	last := 'Smith'.
	name := CustomerName new.
	name initializeWithFirst: first Last: last.
	self
		assert: [ name first = first and: name last = last ]
		description: 'first and last name instance variables not saved'