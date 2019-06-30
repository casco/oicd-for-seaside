baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec repository: 'github://casco/oicd-for-seaside'.
			self neoJSON: spec.
			self seaside: spec.
			spec
				package: 'OIDCForSeaside';
				with: [ spec requires: #('NeoJson' 'Grease' 'Seaside3') ] ].
	spec postLoadDoIt: #postLoadActions