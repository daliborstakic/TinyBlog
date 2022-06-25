Class {
	#name : #TBBlog,
	#superclass : #Object,
	#instVars : [
		'posts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #TinyBlog
}

{ #category : #initialization }
TBBlog class >> current [
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #initialization }
TBBlog class >> initialize [
	self reset
]

{ #category : #initialization }
TBBlog class >> reset [
	uniqueInstance := nil
]

{ #category : #collection }
TBBlog >> allBlogPosts [
	^ posts

]

{ #category : #collection }
TBBlog >> allBlogPostsFromCategory: aCategory [
	^ posts select: [ :p | p category = aCategory ]
]

{ #category : #private }
TBBlog >> allCategories [
	^ (self allBlogPosts collect: [ :p | p category ]) asSet
]

{ #category : #collection }
TBBlog >> allVisibleBlogPosts [
	^ posts select: [ :p | p isVisible ]
]

{ #category : #collection }
TBBlog >> allVisibleBlogPostsFromCategory: aCategory [
	^ posts select: [ :p | p category = aCategory and: [ p isVisible ] ]

]

{ #category : #initialization }
TBBlog >> initialize [
	super initialize.
	posts := OrderedCollection new
]

{ #category : #removing }
TBBlog >> removeAllPosts [
	posts := OrderedCollection new
]

{ #category : #removing }
TBBlog >> size [
	^ posts size
]

{ #category : #removing }
TBBlog >> writeBlogPost: aPost [
	posts add: aPost
]
