Class {
	#name : #ResultTest,
	#superclass : #TestCase,
	#category : #'AbstractMath-Core-Tests-Results'
}

{ #category : #tests }
ResultTest >> testComparision [

	self assert: (30 addTo: 12) result = 42.
	self assert: (2 multiplyBy: 21) value = 42.
]
