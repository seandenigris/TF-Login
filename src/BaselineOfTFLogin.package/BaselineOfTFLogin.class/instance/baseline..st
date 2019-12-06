baselines
baseline: spec
	<baseline>
	
	spec for: #'common' do: [
		spec blessing: #baseline.	
		spec project: 'Soup' with: [ 
			spec 
				className: 'ConfigurationOfSoup';
				version: #stable;
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/Soup/main' ].
		spec
			package: 'TF-Login-Core';
			package: 'TF-Login-Seaside' with: [ spec requires: #('TF-Login-Core') ];
			package: 'TF-Login-Tests' with: [ spec requires: #('TF-Login-Core' 'TF-Login-Seaside' 'Soup') ].
		spec
			group: 'Core' with: #('TF-Login-Core' 'TF-Login-Seaside');
			group: 'Tests' with: #('TF-Login-Tests');
			group: 'default' with: #('Core' 'Tests') ]
		