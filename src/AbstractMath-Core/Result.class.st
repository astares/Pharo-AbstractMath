"
A result of an operation

Instance Variables
	operation:		<MathematicalOperation>

operation
	- an operation

"
Class {
	#name : #Result,
	#superclass : #Object,
	#instVars : [
		'operation'
	],
	#category : #'AbstractMath-Core-Results'
}

{ #category : #'instance creation' }
Result class >> of: anOperation [

	^(self new)
		operation: anOperation;
		yourself
]

{ #category : #comparing }
Result >> = anotherObject [

	^self operation value = anotherObject value
]

{ #category : #accessing }
Result >> operation [
	^ operation
]

{ #category : #accessing }
Result >> operation: anObject [
	operation := anObject
]
