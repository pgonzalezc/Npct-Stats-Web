Class {
	#name : #NpUserDB,
	#superclass : #Object,
	#classInstVars : [
		'validUsers'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #testing }
NpUserDB class >> isAuthorizedUserForEmail: anEmail andPassword: aPassword [

	^ self isValidUser: (NpUser new 
		email: anEmail;
		password: aPassword)
]

{ #category : #testing }
NpUserDB class >> isValidUser: anUser [

	| authorizedUser |
	authorizedUser := self validUsers select: [ :each |  each = anUser ].
	^(authorizedUser) 
		ifNotEmpty: [ authorizedUser at: 1 ]
		ifEmpty: [ nil ]
	
]

{ #category : #'initialization - private' }
NpUserDB class >> loadAuthenticatedUsers [

	| dbUsers |
	
	dbUsers := OrderedCollection new.
	dbUsers add: (NpUser new
		username: 'paco';
		email: 'pgonzalez@naupacto.com';
		password: (NpUser hashPassword: '19640615')).
	dbUsers add: (NpUser new 
		username: 'angel';
		email: 'olangagel@telefonica.net';
		password: (NpUser hashPassword: '19651003')).
	^ dbUsers
]

{ #category : #initialization }
NpUserDB class >> reset [ 
	
	validUsers := nil
]

{ #category : #'accessing - private' }
NpUserDB class >> validUsers [ 

	validUsers isNil ifTrue: [ validUsers := self loadAuthenticatedUsers ].
	^ validUsers
]
