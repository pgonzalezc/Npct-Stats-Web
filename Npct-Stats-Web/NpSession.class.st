Class {
	#name : #NpSession,
	#superclass : #WASession,
	#instVars : [
		'user'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #testing }
NpSession >> isLoggedIn [

	^ self user notNil
]

{ #category : #'as yet unclassified' }
NpSession >> login: anUser [

	self user: anUser
]

{ #category : #'as yet unclassified' }
NpSession >> logout [

	self user: nil
]

{ #category : #accessing }
NpSession >> user [
	^ user
]

{ #category : #accessing }
NpSession >> user: anObject [
	user := anObject
]
