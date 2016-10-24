testing
testDeleteDecreasesCustomersSizeBy1
	"Test that deleting customer reduces # of customers by 1"

	| customers cust before after |
	customers := Customers new.
	customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'John' Last: 'Smith')).
	cust := Customer newWithName: (CustomerName newWithFirst: 'Amy' Last: 'Sanders').
	customers addCust: cust.
	before := customers size.
	customers delete: cust.
	after := customers size.
	self assert: [ after = (before - 1) ] description: 'Deleting cust did not reduce Customers count by 1'