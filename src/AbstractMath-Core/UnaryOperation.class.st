"
An unary operation
"
Class {
	#name : #UnaryOperation,
	#superclass : #MathematicalOperation,
	#instVars : [
		'operand'
	],
	#category : #'AbstractMath-Core-Base'
}

{ #category : #accessing }
UnaryOperation >> operand [
	^ operand
]

{ #category : #accessing }
UnaryOperation >> operand: anObject [
	operand := anObject
]
