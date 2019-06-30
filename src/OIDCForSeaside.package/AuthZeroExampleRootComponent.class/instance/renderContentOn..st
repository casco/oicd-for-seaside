rendering
renderContentOn: html
	html
		paragraph: [ html anchor
				url: self session oidcUrl;
				with: 'login' ].
	self session authenticated
		ifTrue: [ html
				paragraph: [ html anchor
						callback: [ self show: AuthZeroExampleHomeComponent new ];
						with: 'proceed' ] ].
	html paragraph: self session key