Class {
	#name : #NpPublicRusticas,
	#superclass : #WAComponent,
	#category : #'Npct-Stats-Web'
}

{ #category : #rendering }
NpPublicRusticas >> renderContentOn: html [

	| rusticas |
	
	rusticas := NpCatastroDB rusticas.
	html div 
		class: 'container';
		with: [ 
			html strong: 'Fincas Rústicas'.
			rusticas do: [ :ref | ref renderAsAlertOn: html ] ]
]
