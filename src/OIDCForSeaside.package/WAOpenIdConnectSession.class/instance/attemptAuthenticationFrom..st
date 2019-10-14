processing
attemptAuthenticationFrom: requestContext
	| tokenOrNil code echoedState jsonWebSignature |
	code := requestContext request at: 'code' ifAbsent: [ ^ self ].
	echoedState := requestContext request
		at: 'state'
		ifAbsent: [ ^ self ].
	tokenOrNil := self exchangeCodeForTokenOrNil: code.
	tokenOrNil ifNil: [ ^ self ].
	jsonWebSignature := JsonWebSignature
		materializeCompact: tokenOrNil
		key: self verificationCertificate
		checkSignature: false.
	self
		authenticatedUser: (self userFromClaims: jsonWebSignature payload claims).
	authenticated := authenticatedUser notNil