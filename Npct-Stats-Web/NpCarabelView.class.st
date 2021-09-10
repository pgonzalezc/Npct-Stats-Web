Class {
	#name : #NpCarabelView,
	#superclass : #WAComponent,
	#instVars : [
		'mainView'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #rendering }
NpCarabelView class >> renderHeaderOn: html [

	html navigation 
		class: 'navbar bg-light';
		with: [ 
			html div 
				class: 'container-fluid';
				with: [ 
			html div 
				class: 'navbar-header';
				with: [ 
					html anchor 
						url: '#';
						with: [ html image
							class: 'navbar-brand';
							url: 'http://www.naupacto.com/carabel/images/n.png';
							width: 55;
							height: 55. ].
					html paragraph 
						class: 'navbar-text';
						with: 'carabel.naupacto'
			 ]]]
]

{ #category : #'as yet unclassified' }
NpCarabelView >> doLogout [

	self session user: nil
]

{ #category : #accessing }
NpCarabelView >> mainView [
	mainView isNil ifTrue: [ mainView := NpWelcomeView new ].
	^ mainView
]

{ #category : #'as yet unclassified' }
NpCarabelView >> mostrarRepartosBenita [

	mainView := NpPrivateRepartosBenita new
]

{ #category : #'as yet unclassified' }
NpCarabelView >> mostrarRepartosDolores [

	mainView := NpPrivateRepartosDolores new
]

{ #category : #'as yet unclassified' }
NpCarabelView >> mostrarRepartosPilar [

	mainView := NpPrivateRepartosPilar new
]

{ #category : #'as yet unclassified' }
NpCarabelView >> mostrarRusticas [

	mainView := NpPublicRusticas new.
]

{ #category : #'as yet unclassified' }
NpCarabelView >> mostrarUrbanas [

	mainView := NpPublicUrbanas new.
]

{ #category : #rendering }
NpCarabelView >> renderContentOn: html [
	
	self class renderHeaderOn: html.
	self renderMenuOn: html.
	self renderMainOn: html
]

{ #category : #rendering }
NpCarabelView >> renderFincasDropDownOn: html [

	html div 
		class: 'dropdown';
		with: [ 
			html button 
				class: 'btn btn-secondary dropdown-toggle';
				id: 'repartos-dropdown';
				attributeAt: 'data-toggle' put: 'dropdown';
				attributeAt: 'aria-haspopup' put: 'true';
				attributeAt: 'aria-expanded' put: 'false';
				with: 'Fincas'.
			html div 
				class: 'dropdown-menu';
				attributeAt: 'aria-labelledby' put: 'dropdownMenuButton';
				with: [ 
					html anchor class: 'dropdown-item'; callback: [ self mostrarUrbanas ]; with: 'Urbanas'.
					html anchor class: 'dropdown-item'; callback: [ self mostrarRusticas ]; with: 'Rusticas'
					 ]]
]

{ #category : #rendering }
NpCarabelView >> renderLogoutAnchorOn: html [

	html div 
		class: 'text-right';
		with: [ 
			html anchor 
				class: 'btn btn-secondary';
				callback: [ self doLogout ];
				with: 'logout' ]
]

{ #category : #rendering }
NpCarabelView >> renderMainOn: html [

	html div 
		with: [ self mainView isNil 
						ifTrue: [ 'No puedo mostrar nada'] 
						ifFalse: (html render: self mainView) ]
]

{ #category : #rendering }
NpCarabelView >> renderMenuOn: html [

	html navigation 	
		class: 'bg-secondary text-white';
		with: [ html div 
						class: 'container btn-group';
						with: [self renderFincasDropDownOn: html.
								 html space.
								 self renderRepartosDropDownOn: html.
								 html space.
								 self renderLogoutAnchorOn: html]]
]

{ #category : #rendering }
NpCarabelView >> renderRepartosDropDownOn: html [

	html div 
		class: 'dropdown';
		with: [ 
			html button 
				class: 'btn btn-secondary dropdown-toggle';
				id: 'repartos-dropdown';
				attributeAt: 'data-toggle' put: 'dropdown';
				attributeAt: 'aria-haspopup' put: 'true';
				attributeAt: 'aria-expanded' put: 'false';
				with: 'Repartos'.
			html div 
				class: 'dropdown-menu';
				attributeAt: 'aria-labelledby' put: 'dropdownMenuButton';
				with: [ 
					html anchor class: 'dropdown-item'; callback: [ self mostrarRepartosPilar ]; with: 'Pilar'.
					html anchor class: 'dropdown-item'; callback: [ self mostrarRepartosBenita ]; with: 'Benita'.
					html anchor class: 'dropdown-item'; callback: [ self mostrarRepartosDolores ]; with: 'Dolores'
					 ]]
]

{ #category : #updating }
NpCarabelView >> updateRoot: aRoot [

	aRoot title: 'Carabel'.
	aRoot stylesheet url: 'static-files/css/bootstrap.min.4.3.1.css'.
	aRoot javascript url: 'static-files/js/popper.min.js'.
	aRoot javascript url: 'static-files/js/bootstrap.min.4.3.1.js'.
	aRoot meta 
		name: 'viewport';
		content: 'width=device-width, initial-scale=1, shrink-to-fit=no'.
	super updateRoot: aRoot
]
