testing
testRetrieveAllWhenSomeCustsAnswersDictWithAll
	"Test that Customers retrieveAll answers Dict with all Customers"
	
	| customers cust total|
	customers := Customers new.
	total := 4.

	(1 to: total) do: [ :n | cust := Customer new. customers at: n put: cust. ].
	
	self assert: [ customers retrieveAll size = total ]
		description: 'retrieveAll should have returned all customers' 
		