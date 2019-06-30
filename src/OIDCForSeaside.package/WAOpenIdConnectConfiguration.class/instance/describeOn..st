description
describeOn: config
	(config string: #clientId)
		group: #AuthZero;
		comment: 'client_id for Auth0 authentication'.
	(config string: #clientSecret)
		group: #AuthZero;
		comment: 'client_secret for Auth0 authentication.'.
	(config string: #redirectUri)
		group: #AuthZero;
		comment: 'redirect_uri for Auth0 authentication.'.
	(config string: #host)
		group: #AuthZero;
		comment: 'host for Auth0 authentication.'