testing - edge cases
testValidate_answersFalseForInvalidProd
	"test method answers false for non-string product key"

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	app domain products addProd: prod.
	cmd := ViewProd newWithKey: 'A20'.
	self
		deny: [ cmd isValid ]
		description: 'ViewProd validate should have set isValid instance variable to false'