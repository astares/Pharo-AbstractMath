"
Multiplication is one of the four elementary, mathematical operations of arithmetic
"
Class {
	#name : #Multiplication,
	#superclass : #BinaryOperation,
	#category : #'AbstractMath-Core-Operations'
}

{ #category : #'instance creation' }
Multiplication class >> multiply: anObject by: anotherObject [

	^(self new)
		leftOperand: anObject;
		rightOperand: anotherObject;
		yourself
]

{ #category : #defaults }
Multiplication >> defaultOperator [

	^#*
]

{ #category : #testing }
Multiplication >> isCommutative [
	"Return true as rhe order in which two operands are multiplied does not matter"
	
	^true
]
