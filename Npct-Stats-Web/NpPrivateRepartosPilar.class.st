Class {
	#name : #NpPrivateRepartosPilar,
	#superclass : #WAComponent,
	#category : #'Npct-Stats-Web'
}

{ #category : #rendering }
NpPrivateRepartosPilar >> renderContentOn: html [

		| repartos headers |
	
	repartos := NpRepartoDB pilar.
	headers := #('nro.Orden' 'nombre' 'tipo' '%' 'área').
	html heading level: 3; with: 'Pilar'.
	html table 
				class: 'table table-hover';
				with: [ 
					html tableHead 
						with: [ html tableRow: [ headers do: [ :h | html tableHeading: h ] ].
					html tableBody 
						with: [ repartos do: [ :reparto | reparto renderAsTableRowOn: html ] ] ] ] 
]
