Class {
	#name : #NpRepartoItem,
	#superclass : #Object,
	#instVars : [
		'nroOrden',
		'heredero',
		'tipo',
		'nombre',
		'porcentaje',
		'area'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #accessing }
NpRepartoItem >> area [
	^ area
]

{ #category : #accessing }
NpRepartoItem >> area: anObject [
	area := anObject
]

{ #category : #'as yet unclassified' }
NpRepartoItem >> asM2 [

	"Convierte una cadena con superficie en áreas o ferrados a metros cuadrados"
	| matcher |

	"formato de áreas 10a10c, indica 10 áreas y 10 centimetros"
	((matcher := '(.+)a(.+)c' asRegex) matches: self area)
		ifTrue: [ ^ self asM2Area: (matcher subexpression: 2) centimetros: (matcher subexpression: 3) ].
	"formato de ferrados 10f10c, indica 10 ferrados y 10 cuartillos"
	((matcher := '(.+)f(.+)c' asRegex) matches: self area)
		ifTrue: [  ^self asM2Ferrados: (matcher subexpression: 2) cuartillos: (matcher subexpression: 3)]
	
]

{ #category : #'as yet unclassified' }
NpRepartoItem >> asM2Area: unArea centimetros: unosCentimetros [

	^ (unArea asNumber * 100 + unosCentimetros asNumber) asString, ' m2'

]

{ #category : #'as yet unclassified' }
NpRepartoItem >> asM2Ferrados: unosFerrados cuartillos: unosCuartillos [
	
	"Se convierte a metros cuadrados los ferrados se utilza la medida de los ferrados en el
	municipio de Cambre que son 444 m2 por ferrado. Otros municipios tienen otras unidades, por
	lo que para hacerla genérica está rutina necesitariá sabe la localización de la finca."

	^ (unosFerrados asNumber * 444 + (unosCuartillos asNumber * 18.5)) asInteger asString, ' m2'

]

{ #category : #accessing }
NpRepartoItem >> heredero [
	^ heredero
]

{ #category : #accessing }
NpRepartoItem >> heredero: anObject [
	heredero := anObject
]

{ #category : #accessing }
NpRepartoItem >> nombre [
	^ nombre
]

{ #category : #accessing }
NpRepartoItem >> nombre: anObject [
	nombre := anObject
]

{ #category : #accessing }
NpRepartoItem >> nroOrden [
	^ nroOrden
]

{ #category : #accessing }
NpRepartoItem >> nroOrden: anObject [
	nroOrden := anObject
]

{ #category : #accessing }
NpRepartoItem >> porcentaje [
	^ porcentaje
]

{ #category : #accessing }
NpRepartoItem >> porcentaje: anObject [
	porcentaje := anObject
]

{ #category : #rendering }
NpRepartoItem >> renderAsTableRowOn: html [

	html tableRow: [ 
		html tableData: self nroOrden.
		html tableData: self nombre.
		html tableData: self tipo.
		html tableData: self porcentaje.
		html tableData 
			attributeAt: 'data-toggle' put: 'tootip';
			attributeAt: 'data-placement' put: 'top';
			attributeAt: 'title' put: self asM2;
			with: self area ]

]

{ #category : #accessing }
NpRepartoItem >> tipo [
	^ tipo
]

{ #category : #accessing }
NpRepartoItem >> tipo: anObject [
	tipo := anObject
]
