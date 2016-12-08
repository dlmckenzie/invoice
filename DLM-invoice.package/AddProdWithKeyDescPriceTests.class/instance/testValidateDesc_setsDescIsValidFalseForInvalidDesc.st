testing - edge cases
testValidateDesc_setsDescIsValidFalseForInvalidDesc
	"test that descIsValid is set to false for an invalid description"

	self
		deny: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 9 Price: 40) descIsValid ]
		description: 'descIsValid should be true'