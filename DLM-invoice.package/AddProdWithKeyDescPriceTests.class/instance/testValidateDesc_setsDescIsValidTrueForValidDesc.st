testing - happy path
testValidateDesc_setsDescIsValidTrueForValidDesc
	"test that descIsValid is set to true for a valid description"

	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) descIsValid ]
		description: 'descIsValid should be true'