collection ops
retrieveByCust: aCustomer
	"comment stating purpose of message"
	
	^ self select: [ :a | a customer = aCustomer ]

	