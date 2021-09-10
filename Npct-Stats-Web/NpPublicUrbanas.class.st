Class {
	#name : #NpPublicUrbanas,
	#superclass : #WAComponent,
	#category : #'Npct-Stats-Web'
}

{ #category : #rendering }
NpPublicUrbanas >> renderContentOn: html [

	| urbanas |

	urbanas := NpCatastroDB urbanas.
	html div 
		class: 'container';
		with: [ 
			html strong: 'Fincas Urbanas'.
			urbanas do: [ :ref | ref renderAsAlertOn: html ] ]
	"
 	headers := #('Orden' 'Naturaleza' 'Tipo' 'Nombre' 'Referencia' 'Latitud/Longitud' ).
	html div 
		class: 'jumbotron';
		with: [  
			html heading 
				level: 1;
				class: 'display-4';
				with: 'Fincas Urbanas'.
			html table 
				class: 'table table-hover';
				with: [ 
					html tableHead 
						with: [ html tableRow: [ headers do: [ :h | html tableHeading: h ] ].
					html tableBody 
						with: [ urbanas do: [ :ref |  ref renderAsToastOn: html] ] ] ] ]
	"
]
