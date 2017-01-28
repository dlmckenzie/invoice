testing - edge cases
testValidateDesc_setsDescIsValidToFalseForNonStringDesc
	"test that validateDesc sets descIsValid to false for a nonstring product description"

	self
		deny: [ (UpdateProdWithDesc newWithProd: 'A' Desc: 9) validateDesc descIsValid ]
		description: 'descIsValid should be false for an empty string product description'