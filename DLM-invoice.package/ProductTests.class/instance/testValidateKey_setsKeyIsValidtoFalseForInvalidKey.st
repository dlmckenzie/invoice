testing - edge cases
testValidateKey_setsKeyIsValidtoFalseForInvalidKey
	"test that validateKey answers true when key is valid"

	| prod |
	prod := Product newWithKey: ''.
	self deny: [ prod keyIsValid ] description: 'Product validateKey should have set validKey to false'