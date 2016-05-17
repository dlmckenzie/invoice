testing
testUpdateCustWithLastExists
	"test that method updateCustLastNameWith: aString ForID: anInteger exixts"
	
	| app |
	app := App new.
	self assert: [ app respondsTo: #updateCust:WithLast: ] 
		description: 'UpdateCustLastNameWith:ForID: method does not exist'

	