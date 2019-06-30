accessing
oidcUrl
	
	^ ZnUrl new
		scheme: #https;
		host: self host;
		addPathSegment: #authorize;
		queryAt: 'client_id' add: self clientId;
		queryAt: 'redirect_uri' add: self redirectUri;
		queryAt: 'scope' add: 'openid profile email phone address';
		queryAt: 'response_type' add: 'code';
		queryAt: 'state' add: self key;
		yourself