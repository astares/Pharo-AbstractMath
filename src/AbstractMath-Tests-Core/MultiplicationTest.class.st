Class {
	#name : #MultiplicationTest,
	#superclass : #TestCase,
	#category : #'AbstractMath-Tests-Core-Operations'
}

{ #category : #testing }
MultiplicationTest >> testIsCommutative [

	self assert: (21 multiplyBy: 2) isCommutative
	


]
