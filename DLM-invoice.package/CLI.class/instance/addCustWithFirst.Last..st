interface - customer
addCustWithFirst: aString Last: aString2
	"add customer with first and last name"

	| cust |
	((Customer firstIsValidForIdentity: aString)
		and: (Customer lastIsValidForIdentity: aString2))
		ifTrue: [ cust := app addCustWithFirst: aString Last: aString2.
			Transcript
				show: 'Customer added:';
				cr;
				show: '	First name: ';
				show: cust first;
				cr;
				show: '	Last name: ';
				show: cust last;
				cr;
				show: '	Cust ID: ';
				show: cust id asString;
				cr ]
		ifFalse: [ Transcript
				show: 'First and/or last name not valid - customer not added' ]