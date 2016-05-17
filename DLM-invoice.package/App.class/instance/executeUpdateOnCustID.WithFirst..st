private - customer
executeUpdateOnCustID: anInteger WithFirst: aString
	"execute update and confirm to Transcript"


	(customers retrieveByID: anInteger) first: aString.
	Transcript show: 'Customer ', anInteger asString, '''s first name updated to ', aString, '.'; cr.

