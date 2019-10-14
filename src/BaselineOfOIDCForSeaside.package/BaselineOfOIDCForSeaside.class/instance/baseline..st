baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				neoJSON: spec;
				jSONWebToken: spec;
				seaside: spec.
			spec
				package: 'OIDCForSeaside'
				with: [ spec requires: #('NeoJSON' 'Seaside3' 'JSONWebToken') ] ].
	spec postLoadDoIt: #postLoadActions