testing
testUpdateCustWithFirstExists
	"test that method updateCustFirstNameWith: aString ForID: anInteger exixts"
	
	| app |
	app := App new.
	self assert: [ app respondsTo: #updateCust:WithFirst: ] 
		description: 'UpdateCustFirstNameWith:ForID: method does not exist'

	