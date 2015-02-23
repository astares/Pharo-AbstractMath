"
In mathematics, a binary operation on a set is a calculation that combines two elements of the set (called operands) to produce another element of the set (more formally, an operation whose arity is two, and whose two domains and one codomain are (subsets of) the same set).

Instance Variables
	leftOperand:		<Object>
	rightOperand:		<Object>

leftOperand
	- the left operand

rightOperand
	- the right operand

"
Class {
	#name : #BinaryOperation,
	#superclass : #MathematicalOperation,
	#instVars : [
		'leftOperand',
		'rightOperand'
	],
	#category : #'AbstractMath-Core-Base'
}

{ #category : #accessing }
BinaryOperation >> leftOperand [
	^ leftOperand
]

{ #category : #accessing }
BinaryOperation >> leftOperand: anObject [
	leftOperand := anObject
]

{ #category : #accessing }
BinaryOperation >> rightOperand [
	^ rightOperand
]

{ #category : #accessing }
BinaryOperation >> rightOperand: anObject [
	rightOperand := anObject
]

{ #category : #operating }
BinaryOperation >> value [
	"Perform the operation"
	
	^leftOperand value perform: operator with: rightOperand value
]
