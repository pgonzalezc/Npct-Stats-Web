Class {
	#name : #NpCarabelRootTask,
	#superclass : #WATask,
	#category : #'Npct-Stats-Web'
}

{ #category : #testing }
NpCarabelRootTask class >> canBeRoot [

	^ true
]

{ #category : #running }
NpCarabelRootTask >> go [ 

	| loginAnswer user |
	
	loginAnswer := self call: NpLoginView new.
	loginAnswer = #publicAccess
		ifTrue: [ self call: NpCarabelPublicView new ].
	user := loginAnswer = #registerUser
		ifTrue: [self call: NpRegisterView new]
		ifFalse: [loginAnswer].
		
	user ifNotNil: [ 
		self session login: user. 
		self call: NpCarabelView new].
]

{ #category : #hooks }
NpCarabelRootTask >> initialRequest: aRequest [

	Transcript 	
		nextPutAll: self class name;cr;
		tab;nextPutAll: self session class name;cr;
		tab;nextPutAll: ('isLoggedIn: {1}' format: { self session isLoggedIn });cr;
		flush.
		
	"Esto es una prueba. si no estamos loggeados vamos a generar un error 403 - No autorizado"
	"self session isLoggedIn 
		ifFalse: [ 
			self requestContext response
				contentType: WAMimeType textHtml;
				status: WAResponse statusForbidden;
				nextPutAll: 'Usted no esta autorizado a acceder a esta aplicaci&oacute;n';
				respond
			 ]"
	
]
