rendering
renderContentOn: html
	| user |
	user := self session authenticatedUser.
	html paragraph: user printString.
	html anchor
		callback: [ self session logout ];
		with: 'logout'.
	html paragraph: self session key