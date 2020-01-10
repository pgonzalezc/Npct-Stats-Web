Class {
	#name : #NpTestRoot,
	#superclass : #WAComponent,
	#category : #'Npct-Stats-Web'
}

{ #category : #testing }
NpTestRoot class >> canBeRoot [

	^ true
]

{ #category : #hooks }
NpTestRoot >> initialRequest: aRequest [

	Transcript 
		nextPutAll: aRequest method asString;cr;
		nextPutAll: aRequest headers asString;cr;
		flush.
		
	super initialRequest: aRequest
]
