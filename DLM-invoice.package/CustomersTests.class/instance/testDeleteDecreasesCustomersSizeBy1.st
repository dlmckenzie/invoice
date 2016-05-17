testing
testDeleteDecreasesCustomersSizeBy1
	"Test that deleting customer reduces # of customers by 1"
	
	| customers id before after |
	customers := Customers new.
	customers addWithFirst: 'John' Last: 'Smith'.
	id := customers addWithFirst: 'Amy' Last: 'Sanders'.
	before := customers size.
	customers delete: id.	
	after := customers size. 	
	self assert: [ after = (before - 1) ] 
		description: 'Deleting cust did not reduce Customers count by 1'