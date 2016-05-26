testing
testDeleteRaisesErrorWithInvalidKey
	"test that error is raised with invalid key"

	| products |
	products := Products new addWithKey: 'X101'.
	self should: [ products delete: 'ZZ' ] raise: Error 