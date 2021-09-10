Class {
	#name : #NpWelcomeView,
	#superclass : #WAComponent,
	#category : #'Npct-Stats-Web'
}

{ #category : #rendering }
NpWelcomeView >> renderContentOn: html [

	html div 
		class: 'jumbotron';
		with: [
			html div
				class: 'display-4';
				with: 'Carabel']
]
