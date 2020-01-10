Class {
	#name : #NpMessageView,
	#superclass : #WAComponent,
	#instVars : [
		'messageString',
		'messageType',
		'wasShown'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #accessing }
NpMessageView >> errorMessage: aString [

	self 
		messageString: aString;
		messageType: 'alert';
		wasShown: false
]

{ #category : #'as yet unclassified' }
NpMessageView >> infoMessage: aString [

	self
		messageString: aString;
		messageType: 'info';
		wasShown: false
]

{ #category : #initialization }
NpMessageView >> initialize [ 
		
		super initialize.
		self wasShown: true.
]

{ #category : #accessing }
NpMessageView >> messageString [
	^ messageString
]

{ #category : #accessing }
NpMessageView >> messageString: anObject [
	messageString := anObject
]

{ #category : #accessing }
NpMessageView >> messageType [
	^ messageType
]

{ #category : #accessing }
NpMessageView >> messageType: anObject [
	messageType := anObject
]

{ #category : #rendering }
NpMessageView >> renderContentOn: html [

	self wasShown ifTrue: [ ^ self ].
	html div
		class: 'alert';
		class: 'alert-' , self messageType;
		with: self messageString.
	self wasShown: true
]

{ #category : #accessing }
NpMessageView >> wasShown [
	^ wasShown
]

{ #category : #accessing }
NpMessageView >> wasShown: anObject [
	wasShown := anObject
]
