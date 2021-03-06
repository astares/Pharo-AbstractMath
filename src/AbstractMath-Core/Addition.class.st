"
Addition is one of the four elementary, mathematical operations of arithmetic
"
Class {
	#name : #Addition,
	#superclass : #BinaryOperation,
	#category : #'AbstractMath-Core-Operations'
}

{ #category : #'instance creation' }
Addition class >> add: anObject to: anotherObject [

	^(self new)
		leftOperand: anotherObject;
		rightOperand: anObject;
		yourself
]

{ #category : #defaults }
Addition >> defaultOperator [

	^#+
]

{ #category : #testing }
Addition >> isCommutative [
	"Return true because of the commutative law of addition"
	
	^true
]
