testing - edge cases
testValidate_answersFalseForNumericProdKey
	"test method answers false for numeric product key"

	| app cmd |
	app := App new start.
	Command initializeWithApp: app.
	cmd := ViewProd newWithKey: 9.
	self
		deny: [ cmd isValid ]
		description: 'ViewProd validate should have set isValid instance variable to false'