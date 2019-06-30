actions
postLoadActions
	"Start a Server on 8080 and Setup Repository"

	GTPlayground
		edit:
			'"Adjust and evaluate the following expresions to register a demo application"
			
app := WAAdmin register: AuthZeroExampleRootComponent asApplicationAt: ''oidc-demo''.
app sessionClass: WAOpenIdConnectSession .
app configuration addParent: WAOpenIdConnectConfiguration instance.
app preferenceAt: #clientId put: ''<your-client-id>''.
app preferenceAt: #host put: ''<your-oidc-authentication-domain''.
app preferenceAt: #clientSecret put: ''<your-client-secret>''.
app preferenceAt: #redirectUri put: ''http://localhost:8080/oidc-demo''.
			
'
		label: 'OpenId Connect for Seaside'