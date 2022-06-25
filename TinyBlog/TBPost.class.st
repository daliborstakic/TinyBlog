Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #accessing }
TBPost >> category [ 
	^ category
]

{ #category : #accessing }
TBPost >> category: anObject [ 
	category := anObject
]

{ #category : #accessing }
TBPost >> date [
	^ date
]

{ #category : #accessing }
TBPost >> date: aDate [ 
	date := aDate
]

{ #category : #accessing }
TBPost >> text [
	^ text
]

{ #category : #accessing }
TBPost >> text: aString [
	text := aString
]

{ #category : #accessing }
TBPost >> title [
	^ title
]

{ #category : #accessing }
TBPost >> title: aString [
	title := aString 
]

{ #category : #accessing }
TBPost >> visible [ 
	^ visible
]

{ #category : #accessing }
TBPost >> visible: aBoolean [ 
	visible := aBoolean
]
