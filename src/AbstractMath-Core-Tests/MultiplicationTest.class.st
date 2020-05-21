Class {
	#name : #MultiplicationTest,
	#superclass : #TestCase,
	#category : #'AbstractMath-Core-Tests-Operations'
}

{ #category : #testing }
MultiplicationTest >> testInstanceCreation [
	|a|
	a := Multiplication multiply: 21 by: 2.
	self assert: a leftOperand equals: 21.
	self assert: a rightOperand equals: 2.
]

{ #category : #testing }
MultiplicationTest >> testIsCommutative [

	self assert: (21 multiplyBy: 2) isCommutative
	


]

{ #category : #testing }
MultiplicationTest >> testValueOfCollections [

	self assert: (Multiplication multiply: #(21) by: #(2)) value equals: #(42)
]

{ #category : #testing }
MultiplicationTest >> testValueOfMultiplications [

	|a b c|
	a := Multiplication multiply: 7 by: 2.
	b := Multiplication multiply: 1 by: 3.
	c := Multiplication multiply: a by: b.
	self assert: c value equals: 42
	 
]

{ #category : #testing }
MultiplicationTest >> testValueOfNumbers [

	self assert: (Multiplication multiply: 14 by: 3) value equals: 42
]
