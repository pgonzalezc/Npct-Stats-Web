Class {
	#name : #NpUser,
	#superclass : #Object,
	#instVars : [
		'username',
		'password',
		'email'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #'as yet unclassified' }
NpUser class >> hashPassword: aString [

	^ aString 
		ifEmpty: [ 0 ]
		ifNotEmpty: [ GRPlatform current secureHashFor: aString ]
]

{ #category : #comparing }
NpUser >> = anUser [

	^ self species == anUser species and: 
		[ self key = anUser key ]
]

{ #category : #accessing }
NpUser >> email [
	^ email
]

{ #category : #accessing }
NpUser >> email: anObject [
	email := anObject
]

{ #category : #comparing }
NpUser >> hash [ 
	
	 ^ self key hash
]

{ #category : #accessing }
NpUser >> key [ 


	^ email asLowercase, password
]

{ #category : #accessing }
NpUser >> password [
	^ password
]

{ #category : #accessing }
NpUser >> password: anObject [
	password := anObject
]

{ #category : #printing }
NpUser >> printOn: aStream [

	aStream 
		nextPutAll: 'a NpUser(';
		nextPutAll: self username;
		nextPut: $,;
		nextPutAll: self email;
		nextPut: $,;
		nextPutAll: self password asString;
		nextPut: $)
]

{ #category : #accessing }
NpUser >> username [
	^ username
]

{ #category : #accessing }
NpUser >> username: anObject [
	username := anObject
]
