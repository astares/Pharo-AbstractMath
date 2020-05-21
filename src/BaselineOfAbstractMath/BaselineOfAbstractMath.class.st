"
Baseline for https://github.com/astares/Pharo-AbstractMath
"
Class {
	#name : #BaselineOfAbstractMath,
	#superclass : #BaselineOf,
	#category : #BaselineOfAbstractMath
}

{ #category : #baseline }
BaselineOfAbstractMath >> baseline: spec [
	<baseline>
	spec
		for: #common do: [
			"Packages"
			spec 
				package: 'AbstractMath-Core';
				package: 'AbstractMath-Core-Tests' with: [ spec requires: #('AbstractMath-Core') ].
			
			"Groups"	
			spec	
				group: 'Core' with: #('AbstractMath-Core');
				group: 'Tests' with: #('AbstractMath-Core-Tests');
				group: 'all' with: #('Core' 'Tests');
				group: 'default' with: #('Core' 'Tests') ]
]
