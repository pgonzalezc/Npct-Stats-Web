Class {
	#name : #NpLoginView,
	#superclass : #WAComponent,
	#instVars : [
		'email',
		'password',
		'message'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #accessing }
NpLoginView >> email [
	^ email
]

{ #category : #accessing }
NpLoginView >> email: anObject [
	email := anObject
]

{ #category : #'as yet unclassified' }
NpLoginView >> loginFailed [

	self message errorMessage: 'Login failed'
]

{ #category : #accessing }
NpLoginView >> message [
	message isNil ifTrue: [ message := NpMessageView new ].
	^ message
]

{ #category : #accessing }
NpLoginView >> message: anObject [
	message := anObject
]

{ #category : #accessing }
NpLoginView >> password [
	^ password
]

{ #category : #accessing }
NpLoginView >> password: anObject [
	password := anObject
]

{ #category : #rendering }
NpLoginView >> renderAnchorCarabelPublicOn: html [

		html anchor 
		callback: [ self answer: #publicAccess ];
		with: 'Ir al acceso público'
]

{ #category : #rendering }
NpLoginView >> renderContentOn: html [

	html document addLoadScript: (html javascript alert: 'Comienza la autenticación').
	"html document addLoadScript: (html javascript alert: 'Comienza la autenticación')."
	html document addLoadScript: (html javascript << JSStream new nextPutAll: 'function focus(element){ $(element).focus(); } focus("#email");').
	"html document addLoadScript: (html javascript << (html jQuery id: 'email') triggerFocus)."

	NpCarabelView renderHeaderOn: html.
	html div 
		class: 'jumbotron';
		with: [ html paragraph
					class: 'lead';
					with: 'Por favor, introduzca su e-mail y contraseña:'.
				html form 
					with:[ 
						self renderEmailFGOn: html.
						self renderPasswordFGOn: html.
						html break.
						self renderLoginButtonOn: html.
						self renderSignupAnchorOn: html.					
						html break.
						self renderAnchorCarabelPublicOn: html
					]]
	
]

{ #category : #rendering }
NpLoginView >> renderEmailFGOn: html [

	html div 
		class: 'form-group';
			with: [
				html label 
					for: 'email';
					with: 'Dirección de correo electrónico'.
				html textInput
					type: 'email';
					class: 'form-control';
					id: 'email';
					value: self email ;
					callback: [ :value | self email: value ]
			]
]

{ #category : #rendering }
NpLoginView >> renderLoginButtonOn: html [

	html div 
		class: 'container text-right';
		with: [ 
		html button 
			class: 'btn btn-primary';
			callback: [ self validateLogin ];
			value: 'Acceder' ]
]

{ #category : #rendering }
NpLoginView >> renderPasswordFGOn: html [

	html div 
		class: 'form-group';
		with: [
			html label 
				for: 'password';
				with: 'Contraseña'.
			html textInput
				type: 'password';
				class: 'form-control';
				id: 'password';
				callback: [ :value | self password: (GRPlatform current secureHashFor: value) ]
			]
]

{ #category : #rendering }
NpLoginView >> renderSignupAnchorOn: html [

	html anchor 
		callback: [ self answer: #registerUser ];
		with: 'Registrese para acceder a Carabel'
]

{ #category : #updating }
NpLoginView >> updateRoot: aRoot [

	aRoot title: 'Carabel'.
	aRoot stylesheet url: 'static-files/css/bootstrap.min.4.3.1.css'.
	aRoot javascript url: 'static-files/js/popper.min.js'.
	aRoot javascript url: 'static-files/js/bootstrap.min.4.3.1.js'.
	aRoot meta 
		name: 'viewport';
		content: 'width=device-width, initial-scale=1, shrink-to-fit=no'.
	super updateRoot: aRoot
]

{ #category : #'as yet unclassified' }
NpLoginView >> validateLogin [

	"Ralizamos la validación de los datos introducido en el formulario"
	| user |
	user := NpUserDB isAuthorizedUserForEmail:  self email andPassword: self password.
	(user notNil)
		ifTrue: [ self answer: 	user ]
		ifFalse: [ self loginFailed ]
]
