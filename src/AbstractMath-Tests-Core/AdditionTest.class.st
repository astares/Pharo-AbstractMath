Class {
	#name : #AdditionTest,
	#superclass : #TestCase,
	#category : #'AbstractMath-Tests-Core-Operations'
}

{ #category : #tests }
AdditionTest >> testAddTo [

	self assert: (2 addTo: 40) value = 42
]

{ #category : #tests }
AdditionTest >> testCompare [

	self deny: (2 addTo: 40) = 42
]

{ #category : #tests }
AdditionTest >> testInstanceCreation [
	|a|
	a := Addition add: 2 to: 4.
	self assert: a leftOperand = 4.
	self assert: a rightOperand  = 2
]

{ #category : #tests }
AdditionTest >> testIsCommutative [

	self assert: (2 addTo: 40) isCommutative
]

{ #category : #tests }
AdditionTest >> testValueOfAdditions [

	|a b c|
	a := Addition add: 30 to: 10.
	b := Addition add: 0 to: 2.
	c := Addition add: a to: b.
	self assert: c value = 42
]

{ #category : #tests }
AdditionTest >> testValueOfCollections [

	self assert: (Addition add: #(2) to: #(3)) value = #(5)
]

{ #category : #tests }
AdditionTest >> testValueOfNumbers [

	self assert: (Addition add: 30 to: 12) value = 42
]
