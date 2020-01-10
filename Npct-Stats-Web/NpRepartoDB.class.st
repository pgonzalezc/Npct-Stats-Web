Class {
	#name : #NpRepartoDB,
	#superclass : #Object,
	#classInstVars : [
		'pilar',
		'dolores',
		'benita'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #accessing }
NpRepartoDB class >> benita [

	benita isNil ifTrue: [  benita := STON fromString: self stonBenita ].
	^ benita
]

{ #category : #accessing }
NpRepartoDB class >> dolores [

	dolores isNil ifTrue: [  dolores := STON fromString: self stonDolores ].
	^ dolores
]

{ #category : #accessing }
NpRepartoDB class >> pilar [

	pilar isNil ifTrue: [  pilar := STON fromString: self stonPilar ].
	^ pilar
]

{ #category : #accessing }
NpRepartoDB class >> reset [ 

	pilar := nil.
	benita := nil.
	dolores := nil
]

{ #category : #'as yet unclassified' }
NpRepartoDB class >> stonBenita [

	^ '[NpRepartoItem {
			#nroOrden: "6",
			#tipo: "labradio",
			#nombre: "Floridas aka Perdigón",
			#porcentaje: "100",
			#area: "20a35c"
		},NpRepartoItem {
			#nroOrden: "7",
			#tipo: "monte",
			#nombre: "Cadabal aka Folgueira",
			#porcentaje: "50",
			#area: "45a35c"
		},NpRepartoItem {
			#nroOrden: "8",
			#tipo: "monte",
			#nombre: "Barreiros",
			#porcentaje: "100",
			#area: "12a21c"
		},NpRepartoItem {
			#nroOrden: "9",
			#tipo: "prado",
			#nombre: "Liñandres",
			#porcentaje: "100",
			#area: "15a54c"
		},NpRepartoItem {
			#nroOrden: "10",
			#tipo: "huerta",
			#nombre: "Patelo",
			#porcentaje: "100",
			#area: "2a4c"
		},NpRepartoItem {
			#nroOrden: "11",
			#tipo: "labradio",
			#nombre: "Lavandeira",
			#porcentaje: "100",
			#area: "4a44c"
		},NpRepartoItem {
			#nroOrden: "12",
			#tipo: "monte",
			#nombre: "Longa aka Agra de Pravio",
			#porcentaje: "100",
			#area: "16a65c"
		},NpRepartoItem {
			#nroOrden: "13",
			#tipo: "labradio",
			#nombre: "Longa aka Agra de Pravio",
			#porcentaje: "100",
			#area: "4a44c"
		},NpRepartoItem {
			#nroOrden: "14",
			#tipo: "labradio",
			#nombre: "Sar de arriba",
			#porcentaje: "100",
			#area: "2a95c"
		},NpRepartoItem {
			#nroOrden: "15",
			#tipo: "labradio/monte",
			#nombre: "castro o Viñas del lugar de Fabás",
			#porcentaje: "100",
			#area: "12a58c"
		},NpRepartoItem {
			#nroOrden: "16",
			#tipo: "labradio",
			#nombre: "Pombo",
			#porcentaje: "100",
			#area: "10a36c"
		},NpRepartoItem {
			#nroOrden: "18",
			#tipo: "bodega",
			#nombre: "Pombo",
			#porcentaje: "100",
			#area: "0a23c"
		},NpRepartoItem {
			#nroOrden: "19",
			#tipo: "soto",
			#nombre: "Pombo",
			#porcentaje: "100",
			#area: "0a92c"
		},NpRepartoItem {
			#nroOrden: "20",
			#tipo: "monte",
			#nombre: "Castrillón",
			#porcentaje: "100",
			#area: "51a6c"
		},NpRepartoItem {
			#nroOrden: "22",
			#tipo: "casa",
			#nombre: "Cobelo",
			#porcentaje: "100",
			#area: "0a0c"
		},NpRepartoItem {
			#nroOrden: "23",
			#tipo: "labradio",
			#nombre: "Pombo",
			#porcentaje: "100",
			#area: "4a71c"
		},NpRepartoItem {
			#nroOrden: "25",
			#tipo: "monte",
			#nombre: "Leiras",
			#porcentaje: "100",
			#area: "24a42c"
		},NpRepartoItem {
			#nroOrden: "27",
			#tipo: "monte",
			#nombre: "Bullón",
			#porcentaje: "100",
			#area: "16a9c"
		},NpRepartoItem {
			#nroOrden: "32",
			#tipo: "labradio",
			#nombre: "Aquella banda",
			#porcentaje: "100",
			#area: "12a95c"
		},NpRepartoItem {
			#nroOrden: "33",
			#tipo: "monte",
			#nombre: "Salgueiras",
			#porcentaje: "100",
			#area: "32a77c"
		},NpRepartoItem {
			#nroOrden: "2",
			#tipo: "labradio",
			#nombre: "Córnide",
			#porcentaje: "100",
			#area: "11a22c"
		},NpRepartoItem {
			#nroOrden: "5",
			#tipo: "labreadio",
			#nombre: "Volteira de arriba",
			#porcentaje: "100",
			#area: "12a77c"
		}]'
]

{ #category : #'as yet unclassified' }
NpRepartoDB class >> stonDolores [

	^ '[NpRepartoItem {
			#nroOrden: "1",
			#heredero: "Dolores",
			#tipo: "labradio y huerta",
			#nombre: "Redonda",
			#porcentaje: "50",
			#area: "2f18c"
		},NpRepartoItem {
			#nroOrden: "3",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Ordias aka Perdigón",
			#porcentaje: "100",
			#area: "4f14c"
		},NpRepartoItem {
			#nroOrden: "5",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Cadabal aka Folgeira",
			#porcentaje: "100",
			#area: "20f8c"
		},NpRepartoItem {
			#nroOrden: "7",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Barreiros",
			#porcentaje: "100",
			#area: "2f18c"
		},NpRepartoItem {
			#nroOrden: "8",
			#heredero: "Dolores",
			#tipo: "prado regadio",
			#nombre: "Liñandres",
			#porcentaje: "100",
			#area: "3f12c"
		},NpRepartoItem {
			#nroOrden: "10",
			#heredero: "Dolores",
			#tipo: "huerta",
			#nombre: "Patelo",
			#porcentaje: "100",
			#area: "0f11c"
		},NpRepartoItem {
			#nroOrden: "16",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Labandeira",
			#porcentaje: "100",
			#area: "2f4.5c"
		},NpRepartoItem {
			#nroOrden: "22",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Da longa aka Agra de Pravio",
			#porcentaje: "100",
			#area: "3f18c"
		},NpRepartoItem {
			#nroOrden: "23",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Da longa aka Agra de Pravio",
			#porcentaje: "100",
			#area: "1f0c"
		},NpRepartoItem {
			#nroOrden: "25",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Sar de arriba",
			#porcentaje: "100",
			#area: "2f22c"
		},NpRepartoItem {
			#nroOrden: "27",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Fabas",
			#porcentaje: "100",
			#area: "2f20c"
		},NpRepartoItem {
			#nroOrden: "30",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Pombo aka Giras de abajo",
			#porcentaje: "100",
			#area: "2f7c"
		},NpRepartoItem {
			#nroOrden: "33",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Castrillón",
			#porcentaje: "100",
			#area: "4f8c"
		},NpRepartoItem {
			#nroOrden: "34",
			#heredero: "Dolores",
			#tipo: "bodega",
			#nombre: "Pombo",
			#porcentaje: "100",
			#area: "0f0c"
		},NpRepartoItem {
			#nroOrden: "35",
			#heredero: "Dolores",
			#tipo: "soto",
			#nombre: "Pombo",
			#porcentaje: "100",
			#area: "0f0c"
		},NpRepartoItem {
			#nroOrden: "37",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Castrillón",
			#porcentaje: "100",
			#area: "11f12c"
		},NpRepartoItem {
			#nroOrden: "38",
			#heredero: "Dolores",
			#tipo: "casa",
			#nombre: "Armental",
			#porcentaje: "45",
			#area: "0f0c"
		},NpRepartoItem {
			#nroOrden: "64",
			#heredero: "Dolores",
			#tipo: "casa",
			#nombre: "cobelo",
			#porcentaje: "100",
			#area: "0f0c"
		},NpRepartoItem {
			#nroOrden: "64",
			#heredero: "Dolores",
			#tipo: "terreno",
			#nombre: "cobelo",
			#porcentaje: "20",
			#area: "2f6c"
		},NpRepartoItem {
			#nroOrden: "40",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Pombo aka Casaleja",
			#porcentaje: "100",
			#area: "1f1.5c"
		},NpRepartoItem {
			#nroOrden: "41",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Volteiro (Nolteiro) aka Fránces",
			#porcentaje: "100",
			#area: "5f5c"
		},NpRepartoItem {
			#nroOrden: "43",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Leiras",
			#porcentaje: "100",
			#area: "5f12c"
		},NpRepartoItem {
			#nroOrden: "44",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Leiras",
			#porcentaje: "100",
			#area: "1f1c"
		},NpRepartoItem {
			#nroOrden: "45",
			#heredero: "Dolores",
			#tipo: "monte",
			#nombre: "Bellón (Bullón)",
			#porcentaje: "100",
			#area: "3f15c"
		},NpRepartoItem {
			#nroOrden: "55",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Viña longa (en Soeiro)",
			#porcentaje: "100",
			#area: "0f17c"
		},NpRepartoItem {
			#nroOrden: "56",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Do socorro (en Veira)",
			#porcentaje: "100",
			#area: "1f6c"
		},NpRepartoItem {
			#nroOrden: "57",
			#heredero: "Dolores",
			#tipo: "pinar",
			#nombre: "Das salgueiras (en Tarcayo (Farcayo))",
			#porcentaje: "100",
			#area: "7f9c"
		},NpRepartoItem {
			#nroOrden: "58",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Da aira (en Anceis)",
			#porcentaje: "100",
			#area: "0f23c"
		},NpRepartoItem {
			#nroOrden: "59",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Aquella banda (en Veira)",
			#porcentaje: "100",
			#area: "2f20c"
		},NpRepartoItem {
			#nroOrden: "61",
			#heredero: "Dolores",
			#tipo: "labradio",
			#nombre: "Fonte (en Soeiro)",
			#porcentaje: "100",
			#area: "2f20c"
		}]'
]

{ #category : #'as yet unclassified' }
NpRepartoDB class >> stonPilar [

	^ '[NpRepartoItem {
			#nroOrden: "30",
			#tipo: "labradio",
			#nombre: "Fonte",
			#porcentaje: "100",
			#area: "12a95c"
		},NpRepartoItem {
			#nroOrden: "31",
			#tipo: "labracio",
			#nombre: "Socorro",
			#porcentaje: "100",
			#area: "5a55c"
		},NpRepartoItem {
			#nroOrden: "24",
			#tipo: "labradio",
			#nombre: "Besteiros aka Francés",
			#porcentaje: "100",
			#area: "27a56c"
		},NpRepartoItem {
			#nroOrden: "17",
			#tipo: "monte",
			#nombre: "Castrillón",
			#porcentaje: "100",
			#area: "19a24c"
		},NpRepartoItem {
			#nroOrden: "1",
			#tipo: "labradio",
			#nombre: "Córnide de Arriba",
			#porcentaje: "100",
			#area: "4a83c"
		},NpRepartoItem {
			#nroOrden: "3",
			#tipo: "labradio",
			#nombre: "Canle aka Agra de Fontela",
			#porcentaje: "100",
			#area: "18a48c"
		},NpRepartoItem {
			#nroOrden: "4",
			#tipo: "monte",
			#nombre: "Quintán",
			#porcentaje: "100",
			#area: "9a81c"
		},NpRepartoItem {
			#nroOrden: "6",
			#tipo: "",
			#nombre: "Carabel",
			#porcentaje: "100",
			#area: "6a85c"
		},NpRepartoItem {
			#nroOrden: "7",
			#tipo: "casa",
			#nombre: "Carabel",
			#porcentaje: "100",
			#area: "7a70c"
		}]'
]
