Class {
	#name : #AdditionTest,
	#superclass : #TestCase,
	#category : #'AbstractMath-Core-Tests-Operations'
}

{ #category : #tests }
AdditionTest >> testAddTo [

	self assert: (2 addTo: 40) value equals: 42
]

{ #category : #tests }
AdditionTest >> testCompare [

	self deny: (2 addTo: 40) equals: 42
]

{ #category : #tests }
AdditionTest >> testInstanceCreation [
	|a|
	a := Addition add: 2 to: 4.
	self assert: a leftOperand equals: 4.
	self assert: a rightOperand equals: 2
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
	self assert: c value equals: 42
]

{ #category : #tests }
AdditionTest >> testValueOfCollections [

	self assert: (Addition add: #(21) to: #(21)) value equals: #(42)
]

{ #category : #tests }
AdditionTest >> testValueOfNumbers [

	self assert: (Addition add: 30 to: 12) value equals: 42
]
