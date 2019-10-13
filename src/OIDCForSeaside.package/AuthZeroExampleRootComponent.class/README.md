|app|
app := WAAdmin register: AuthZeroExampleRootComponent asApplicationAt: 'oidc-demo'.
app sessionClass: WAOpenIdConnectSession .
app configuration addParent: WAOpenIdConnectConfiguration instance.
app preferenceAt: #clientId put: ' ..... '.
app preferenceAt: #host put: 'cascosoft.auth0.com'.
app preferenceAt: #clientSecret put: ' .... '.
app preferenceAt: #redirectUri put: 'http://localhost:8080/oidc-demo'.