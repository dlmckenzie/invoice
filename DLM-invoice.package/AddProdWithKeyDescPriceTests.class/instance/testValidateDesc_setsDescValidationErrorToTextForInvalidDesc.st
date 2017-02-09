testing - edge cases
testValidateDesc_setsDescValidationErrorToTextForInvalidDesc
	"test that descValidationError gets set to text describing the error for an invalid description"
	
		self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: nil Price: 40) descValidationError isNotEmpty ]
		description: 'descValidationError should have text'