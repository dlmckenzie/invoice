printing
printSuccessMsg
	"print msg confirming successful execution of command"
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
				cr
	