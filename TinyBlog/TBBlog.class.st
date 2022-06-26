Class {
	#name : #TBBlog,
	#superclass : #Object,
	#instVars : [
		'posts'
	],
	#category : #TinyBlog
}

{ #category : #accessing }
TBBlog class >> current [
	^ self selectAll
		ifNotEmpty: [ :x | x anyOne ]
		ifEmpty: [ self new save ]
]

{ #category : #'class initialization' }
TBBlog class >> initialize [
	self reset
]

{ #category : #initialization }
TBBlog class >> initializeVoyageOnMemoryDB [
	VOMemoryRepository new enableSingleton
]

{ #category : #testing }
TBBlog class >> isVoyageRoot [
	^ true

]

{ #category : #initialization }
TBBlog class >> reset [
	self initializeVoyageOnMemoryDB
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

{ #category : #writing }
TBBlog >> removeAllPosts [
	posts do: [ :each | each remove ].
	posts := OrderedCollection new.
	self save.
]

{ #category : #removing }
TBBlog >> size [
	^ posts size
]

{ #category : #writing }
TBBlog >> writeBlogPost: aPost [
	posts add: aPost.
	aPost save.
	self save

]
