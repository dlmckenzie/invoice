interface - customer
addCustWithFirst: aString Last: aString2
	"add customer with first and last name"

	| cust |
	((Customer firstIsValidForIdentity: aString) and: (Customer lastIsValidForIdentity: aString2))
		ifTrue: [ cust := Customer newWithFirst: aString Last: aString2.
			cust invoiceAccess: invoices.
			customers addCust: cust.
			Transcript
				show: 'Customer added:';
				cr;
				show: '	First name: ' , aString;
				cr;
				show: '	Last name: ' , aString2;
				cr;
				show: '	Cust ID: ' , cust id asString;
				cr ]
		ifFalse: [ Transcript show: 'First and/or last name not valid - customer not added' ]