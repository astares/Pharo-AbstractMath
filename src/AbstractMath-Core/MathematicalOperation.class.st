"
An operation is an action or procedure which produces a new value from one or more input values, called ""operands""
"
Class {
	#name : #MathematicalOperation,
	#superclass : #Object,
	#instVars : [
		'operator'
	],
	#category : #'AbstractMath-Core-Base'
}

{ #category : #defaults }
MathematicalOperation >> defaultOperator [
	"Return the default operator"
	
	^self subclassResponsibility 
]

{ #category : #initialization }
MathematicalOperation >> initialize [
	"Initializes the receiver."
	
	super initialize.
	self operator: self defaultOperator 
]

{ #category : #accessing }
MathematicalOperation >> operator [
	^ operator
]

{ #category : #accessing }
MathematicalOperation >> operator: anObject [
	operator := anObject
]

{ #category : #accessing }
MathematicalOperation >> result [
	"Return a result on the operation"
	
	^Result of: self
]
