Class {
	#name : #TBAdminComponent,
	#superclass : #TBScreenComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #initialization }
TBAdminComponent >> createHeaderComponent [
^ TBAdminHeaderComponent from: self

]

{ #category : #'as yet unclassified' }
TBAdminComponent >> goToPostListView [
self answer

]

{ #category : #initialization }
TBAdminComponent >> renderContentOn: html [
super renderContentOn: html.
html tbsContainer: [
html heading: 'Blog Admin'.
html horizontalRule ]

]
