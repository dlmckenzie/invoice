testing - edge cases
testValidate_answersFalseForNilProdKey
	"test method answers false for nil product key"

	| app cmd |
	app := App new start.
	Command initializeWithApp: app.
	cmd := ViewProd newWithKey: nil.
	self
		deny: [ cmd isValid ]
		description: 'ViewProd validate should have set isValid instance variable to false'