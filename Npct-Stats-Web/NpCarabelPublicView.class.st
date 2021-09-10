Class {
	#name : #NpCarabelPublicView,
	#superclass : #WAComponent,
	#category : #'Npct-Stats-Web'
}

{ #category : #rendering }
NpCarabelPublicView >> renderContentOn: html [

	NpCarabelView renderHeaderOn: html.
	html strong: 'Acceso público'
]
