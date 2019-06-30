processing
handleFiltered: requestContext
	authenticated
		ifFalse: [ self attemptAuthenticationFrom: requestContext ].
	super handleFiltered: requestContext