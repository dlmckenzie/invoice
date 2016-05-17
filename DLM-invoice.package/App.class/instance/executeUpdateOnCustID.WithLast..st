private - customer
executeUpdateOnCustID: anInteger WithLast: aString
	"execute update and confirm to Transcript"


	(customers retrieveByID: anInteger) last: aString.
	Transcript show: 'Customer ', anInteger asString, '''s last name updated to ', aString, '.'; cr.

