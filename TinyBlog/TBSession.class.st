Class {
	#name : #TBSession,
	#superclass : #WASession,
	#instVars : [
		'currentAdmin'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #accessing }
TBSession >> currentAdmin [
^ currentAdmin


]

{ #category : #accessing }
TBSession >> currentAdmin: anObject [
currentAdmin := anObject



]

{ #category : #accessing }
TBSession >> isLogged [
^ self currentAdmin notNil


]

{ #category : #initialization }
TBSession >> reset [
currentAdmin := nil.
self requestContext redirectTo: self application url.
self unregister.

]
