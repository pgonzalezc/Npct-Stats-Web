Class {
	#name : #NpCatastroItem,
	#superclass : #Object,
	#instVars : [
		'nroOrden',
		'naturaleza',
		'referencia',
		'tipo',
		'nombre',
		'latitud',
		'longitud',
		'url',
		'url_ref'
	],
	#classInstVars : [
		'urbanas',
		'rusticas'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #'class initialization' }
NpCatastroItem class >> initialize [

	" self initialize "

	urbanas := OrderedCollection new.
	rusticas := OrderedCollection new
]

{ #category : #accessing }
NpCatastroItem class >> rusticas [
	
	^ rusticas
]

{ #category : #accessing }
NpCatastroItem class >> urbanas [

	^ urbanas
]

{ #category : #accessing }
NpCatastroItem >> latitud [
	^ latitud
]

{ #category : #accessing }
NpCatastroItem >> latitud: anObject [
	latitud := anObject
]

{ #category : #accessing }
NpCatastroItem >> longitud [
	^ longitud
]

{ #category : #accessing }
NpCatastroItem >> longitud: anObject [
	longitud := anObject
]

{ #category : #accessing }
NpCatastroItem >> naturaleza [
	^ naturaleza
]

{ #category : #accessing }
NpCatastroItem >> naturaleza: anObject [
	naturaleza := anObject
]

{ #category : #accessing }
NpCatastroItem >> nombre [
	^ nombre
]

{ #category : #accessing }
NpCatastroItem >> nombre: anObject [
	nombre := anObject
]

{ #category : #accessing }
NpCatastroItem >> nroOrden [
	^ nroOrden
]

{ #category : #accessing }
NpCatastroItem >> nroOrden: anObject [
	nroOrden := anObject
]

{ #category : #accessing }
NpCatastroItem >> referencia [
	^ referencia
]

{ #category : #accessing }
NpCatastroItem >> referencia: anObject [
	referencia := anObject
]

{ #category : #rendering }
NpCatastroItem >> renderAsAlertOn: html [


		html div 
			class: 'alert alert-secondary';
			with: [ 
				html span class: 'badge badge-dark'; with: self nroOrden.
				html space.
				html strong with: [ 
					html anchor url: self url_ref; with: self referencia
				].
				html space. 
				html small: self tipo.
				html div 
					class: 'container';
					with: [ 
						html div 
							class: 'row';
							with: [ 
								html div 
									class: 'col-10';
										with: [ html small: self nombre. html space. html small: self naturaleza ].
								html div 
										class: 'col-2 text-right';
										with: [ 
											"html small: '@',self longitud, ',', self latitud."
											html anchor url: self url; with: [ 
											html image url: 'http://www.naupacto.com/img/_ionicons_svg_md-pin.svg'; width: 25; height: 25 ]]
				]]].
]

{ #category : #rendering }
NpCatastroItem >> renderAsTableRowOn: html [

	html tableRow: [ html tableData: self nroOrden; 
		tableData: self naturaleza;  
		tableData: self tipo;
		tableData: self nombre;
		tableData: [ html anchor url: self url_ref; with: self referencia];
		tableData: [ html anchor url: self url; with: ('@',self latitud,',',self longitud) ]
	]
]

{ #category : #rendering }
NpCatastroItem >> renderAsToastOn: html [

	html div 
		class: 'card';
		with: [ 
			html div 
				class: 'card-body';
				with: [ 
					html div 
						class: 'alert alert-secondary';
						with: [ 
						html span class: 'badge badge-dark'; with: self nroOrden.
						html space.
						html strong class: 'card-title'; with: [ 
								html anchor url: self url_ref; with: self referencia
							].
							html div 
								class: 'container';
								with: [ 
									html div 
										class: 'row card-subtitle';
										with: [ 
										 html div 
											class: 'col-10';
											with: [ html small: self nombre. html space. html small: self naturaleza ].
									 	 html div 
											class: 'col-2 text-right';
											with: [ 
												"html small: '@',self longitud, ',', self latitud."
												html anchor url: self url; with: [ 
													html image url: 'http://www.naupacto.com/img/_ionicons_svg_md-pin.svg'; width: 25; height: 25 ]]
										]]]]].
	html break.
			
"
	html div
		class: 'alert alert-info';
		attributeAt: 'role' put: 'alert';
		with: [ 
			html div
				class: 'alert-header';
				with: [ 
					html anchor
						url: self url_ref;
						with: [html strong: self referencia ].
					html break.
					html small
						with: [ html paragraph: self nombre, ', ', self naturaleza ]
						].
					html anchor
						url: self url;
						with: [ html paragraph
							class: 'text-right';
							with: [html small: '@',self longitud, ',', self latitud] ].
			html horizontalRule.
			html div
				class: 'text-small';
				with: 'Notas' ].
"
]

{ #category : #accessing }
NpCatastroItem >> tipo [
	^ tipo
]

{ #category : #accessing }
NpCatastroItem >> tipo: anObject [
	tipo := anObject
]

{ #category : #accessing }
NpCatastroItem >> url [
	^ url
]

{ #category : #accessing }
NpCatastroItem >> url: anObject [
	url := anObject
]

{ #category : #accessing }
NpCatastroItem >> url_ref [
	^ url_ref
]

{ #category : #accessing }
NpCatastroItem >> url_ref: anObject [
	url_ref := anObject
]
