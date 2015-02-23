Extension { #name : #Object }

{ #category : #'*AbstractMath-Core' }
Object >> addTo: anotherObject [
	"Return self added to another object"
	
	^Addition add: self to: anotherObject 
]

{ #category : #'*AbstractMath-Core' }
Object >> multiplyBy: anotherObject [

	^Multiplication multiply: self by: anotherObject 
]
