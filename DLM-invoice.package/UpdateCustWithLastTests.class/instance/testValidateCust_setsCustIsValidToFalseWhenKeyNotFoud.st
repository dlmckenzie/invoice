testing - edge cases
testValidateCust_setsCustIsValidToFalseWhenKeyNotFoud
	"custIsValid should be set to false when when cust is found that matches key"

	| app cmd |
	app := App new.
	app start.
	Command initializeWithApp: app.
	cmd := UpdateCustWithLast newWithCust: -1 Last: 'Smithe'.
	self deny: [ cmd custIsValid ] description: 'custIsValid should be set to false for invalid key'