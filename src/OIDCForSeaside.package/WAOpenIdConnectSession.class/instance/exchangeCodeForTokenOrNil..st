processing
exchangeCodeForTokenOrNil: code
	| response contents |
	response := ZnClient new
		applicationFormUrlEncodedEntity;
		https;
		host: self host;
		addPathSegment: #oauth;
		addPathSegment: #token;
		formAt: 'grant_type' add: 'authorization_code';
		formAt: 'client_id' add: self clientId;
		formAt: 'client_secret' add: self clientSecret;
		formAt: 'redirect_uri' add: self redirectUri;
		formAt: 'code' add: code;
		post;
		response.
	^ response isSuccess
		ifTrue: [ contents := NeoJSONReader fromString: response entity contents.
			contents at: 'id_token' ]
		ifFalse: [ nil ]