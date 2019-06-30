processing
verificationCertificate
	| webKeySet |
	webKeySet := ZnClient new
		url: 'https://' , self host , '/.well-known/jwks.json';
		get.
	^ (((NeoJSONReader fromString: webKeySet) at: 'keys') first at: 'x5c') first