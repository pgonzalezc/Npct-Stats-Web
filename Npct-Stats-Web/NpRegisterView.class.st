Class {
	#name : #NpRegisterView,
	#superclass : #WAComponent,
	#instVars : [
		'user',
		'repeatedPassword',
		'message'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #accessing }
NpRegisterView >> message [
	message isNil ifTrue: [ message := NpMessageView new ].
	^ message
]

{ #category : #accessing }
NpRegisterView >> message: anObject [
	message := anObject
]

{ #category : #'as yet unclassified' }
NpRegisterView >> registrarUsuario [

	"Verificamos que los campos contienen los datos necesarios y que las password coinciden"
	
	self user username isEmptyOrNil 
		ifTrue: [ ^ self message infoMessage: 'Por favor, eliga un nombre de usuario' ].
	self user email isEmptyOrNil
		ifTrue: [ ^ self message infoMessage: 'Por favor, introduzca su correo electrónico' ].
	self user password = 0
		ifTrue: [ ^ self message infoMessage: 'Por favor, introduzca una contraseña' ].
	self repeatedPassword = 0
		ifTrue: [ ^ self message infoMessage: 'Por favor, repita su contraseña' ].
	self user password = self repeatedPassword 
		ifFalse: [ ^ self message infoMessage: 'Sus contraseñas no coinciden' ].
	self answer: self user
	
]

{ #category : #rendering }
NpRegisterView >> renderCancelButtonOn: html [
 
		html button 
			class: 'btn btn-primary';
			callback: [ self answer: nil ];
			value: 'Cancelar'
]

{ #category : #rendering }
NpRegisterView >> renderContentOn: html [

	NpCarabelView renderHeaderOn: html.
	html render: self message.
	html div 
		class: 'jumbotron';
		with: [html paragraph
					class: 'lead';
					with: 'Registrese:'.
				html form 
					with:[
						self renderUsuarioFGOn: html.
						self renderEmailFGOn: html.
						self renderPasswordFGOn: html.
						self renderRepeatedPasswordOn: html.
						html div 
							class: 'container text-right';
							with:[ 
								self renderSubmitButtonOn: html.
								html space.
								self renderCancelButtonOn: html
								 ]]]
]

{ #category : #rendering }
NpRegisterView >> renderEmailFGOn: html [

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
					value: self user email ;
					callback: [ :value | self user email: value ]
			]
]

{ #category : #rendering }
NpRegisterView >> renderPasswordFGOn: html [

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
				maxLength: 32;
				value: '';
				callback: [ :value | self user password: (NpUser hashPassword: value) ]
			]
]

{ #category : #rendering }
NpRegisterView >> renderRepeatedPasswordOn: html [

		html div 
		class: 'form-group';
		with: [
			html label 
				for: 'repeated-password';
				with: 'Repetir contraseña'.
			html textInput
				type: 'password';
				class: 'form-control';
				id: 'repeated-password';
				maxLength: 32;
				value: '';
				callback: [ :value | self repeatedPassword: (NpUser hashPassword: value) ]
			]
]

{ #category : #rendering }
NpRegisterView >> renderSubmitButtonOn: html [

		html button 
			class: 'btn btn-primary';
			callback: [ self registrarUsuario ];
			value: 'Registrar' 
]

{ #category : #rendering }
NpRegisterView >> renderUsuarioFGOn: html [

	html div 
		class: 'form-group';
			with: [
				html label 
					for: 'usuario';
					with: 'Usuario'.
				html textInput
					type: 'text';
					class: 'form-control';
					id: 'usuario';
					maxLength: 32;
					value: self user username ;
					callback: [ :value | self user username: value ]
			]
]

{ #category : #accessing }
NpRegisterView >> repeatedPassword [
	^ repeatedPassword
]

{ #category : #accessing }
NpRegisterView >> repeatedPassword: anObject [
	repeatedPassword := anObject
]

{ #category : #updating }
NpRegisterView >> updateRoot: aRoot [

	aRoot title: 'Carabel'.
	aRoot stylesheet url: 'http://www.naupacto.com/css/bootstrap.min.4.3.1.css'.
	aRoot javascript url: 'http://www.naupacto.com/js/popper.min.js'.
	aRoot javascript url: 'http://www.naupacto.com/js/bootstrap.min.4.3.1.js'.
	aRoot meta 
		name: 'viewport';
		content: 'width=device-width, initial-scale=1, shrink-to-fit=no'.
	super updateRoot: aRoot
]

{ #category : #accessing }
NpRegisterView >> user [
	user isNil ifTrue: [ user := NpUser new ].
	^ user
]

{ #category : #accessing }
NpRegisterView >> user: anObject [
	user := anObject
]
