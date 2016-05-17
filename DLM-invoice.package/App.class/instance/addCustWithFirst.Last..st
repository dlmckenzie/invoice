interface - customer
addCustWithFirst: aString Last: aString2
	"add customer with first and last name"

	| id |
	((Customer firstIsValidForIdentity: aString) and: (Customer lastIsValidForIdentity: aString2))
		ifTrue: [ 
			id := customers addWithFirst: aString Last: aString2.
			Transcript
				show: 'Customer added:';
				cr;
				show: '		First name: ' , aString;
				cr;
				show: '		Last name: ' , aString2;
				cr;
				show: '		Cust ID: ' , id asString;
				cr ]
		ifFalse: [ Transcript show: 'First and/or last name not valid - customer not added' ]