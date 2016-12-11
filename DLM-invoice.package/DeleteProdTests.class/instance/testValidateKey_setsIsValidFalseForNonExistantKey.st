testing - edge cases
testValidateKey_setsIsValidFalseForNonExistantKey
	"test that method sets isValid to true for existing key"

	| app cmd |
	app := App new start.
	DeleteProd initializeWithApp: app.
	cmd := DeleteProd newWithKey: 'A200'.
	cmd validateKey.
	self deny: [ cmd keyIsValid ] description: 'keyIsValid should be false for non-existant key'