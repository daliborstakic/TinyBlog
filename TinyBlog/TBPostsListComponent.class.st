Class {
	#name : #TBPostsListComponent,
	#superclass : #TBScreenComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #initialization }
TBPostsListComponent >> renderContentOn: html [
super renderContentOn: html.
html tbsContainer: [
self blog allVisibleBlogPosts do: [ :p |
html render: (TBPostComponent new post: p) ] ]


]
