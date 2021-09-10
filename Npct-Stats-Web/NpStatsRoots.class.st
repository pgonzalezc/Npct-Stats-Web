Class {
	#name : #NpStatsRoots,
	#superclass : #WAComponent,
	#instVars : [
		'index',
		'selection'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #testing }
NpStatsRoots class >> canBeRoot [

	 ^ true
]

{ #category : #'as yet unclassified' }
NpStatsRoots class >> group1 [

	^ OrderedCollection new 
		add: (Association key: 'Provisional' value: 100);
		add: (Association key: 'Definitivo' value: 83);
		add: (Association key: 'Censal' value: 96);
		add: (Association key: 'Ceses' value: 15);
		yourself.
]

{ #category : #'as yet unclassified' }
NpStatsRoots class >> group2 [

	^ OrderedCollection new 
		add: (Association key: 'Provisional' value: 210);
		add: (Association key: 'Definitivo' value: 111);
		add: (Association key: 'Censal' value: 186);
		add: (Association key: 'Ceses' value: 10);
		yourself.
]

{ #category : #'as yet unclassified' }
NpStatsRoots class >> group3 [

	^ OrderedCollection new 
		add: (Association key: 'Provisional' value: 132);
		add: (Association key: 'Definitivo' value: 93);
		add: (Association key: 'Censal' value: 122);
		add: (Association key: 'Ceses' value: 21);
		yourself.
]

{ #category : #'as yet unclassified' }
NpStatsRoots class >> group4 [

	^ OrderedCollection new 
		add: (Association key: 'Provisional' value: 145);
		add: (Association key: 'Definitivo' value: 105);
		add: (Association key: 'Censal' value: 132);
		add: (Association key: 'Ceses' value: 7);
		yourself.
]

{ #category : #'class initialization' }
NpStatsRoots class >> initialize [ 

	" NpStatsRoot initialize "

	WAAdmin register: NpStatsRoots asApplicationAt: 'statsapp'
		
]

{ #category : #'as yet unclassified' }
NpStatsRoots class >> ourData [

	 ^ OrderedCollection new 
			add: self group1;
			add: self group2;
			add: self group3;
			add: self group4;
			yourself
]

{ #category : #'as yet unclassified' }
NpStatsRoots >> getDataForIndex: anInteger [

	^ Chart1dData values: (self class ourData at: anInteger)
]

{ #category : #accessing }
NpStatsRoots >> index [
	^ index
]

{ #category : #accessing }
NpStatsRoots >> index: anInteger [
	index := anInteger
]

{ #category : #initialization }
NpStatsRoots >> initialize [ 
	
	index := 1
]

{ #category : #accessing }
NpStatsRoots >> next [ 

	index < self class ourData size 
		ifTrue: [index := index + 1]
		
]

{ #category : #accessing }
NpStatsRoots >> previous [ 

	self index >  1 
		ifTrue: [index := index - 1]
]

{ #category : #rendering }
NpStatsRoots >> renderChartJsComponentOn: html [
	| chartData styleForTypes |
	
	chartData := (self getDataForIndex: self index)		title: [ :datas | 'Trámites procesados #', self index asString ];
		singleValueTooltip: 'Procesados <value> trámites de tipo <key> ';
		chartType: ChartDonut;
		yourself.
	"
	styleForTypes := Dictionary 
		with: 'Provisional' -> (Dictionary with: #pointColor -> Color green with: #strokeColor -> Color green with: #fillColor -> Color lightGreen)
		with: 'Definitivo' -> (Dictionary with: #pointColor -> Color blue with: #strokeColor -> Color blue with: #fillColor -> Color lightBlue)
		with: 'Censal' -> (Dictionary with: #pointColor -> Color red with: #strokeColor -> Color red with: #fillColor -> Color lightRed)
		with: 'Ceses' -> (Dictionary with: #pointColor -> Color yellow with: #strokeColor -> Color yellow with: #fillColor -> Color lightYellow).
		
	chartData styleSheet
				pointColor: [ :keys :values :label | (styleForTypes at: label) at: #pointColor ];
				strokeColor: [ :keys :values :label | (styleForTypes at: label) at: #strokeColor ];
				pointStrokeColor: Color white;
				fillColor: [ :keys :values :label | ((styleForTypes at: label) at: #fillColor) alpha: 0.3 ];
				pointHighlightFill: Color pink;
				pointHighlightStroke: Color red.
	"
	html render: (ChartJsComponent data: chartData callback: [ :value :label | selection := value -> label])
	
]

{ #category : #rendering }
NpStatsRoots >> renderContentOn: html [

	html div 
		class: 'container';
		with: [  
			html heading level: 4; with: 'Datos estadísticos diarios'.
			self selection isNil
				ifFalse: [ 
					html div 
						class: 'alert alert-info';
						with: [ html paragraph: self selection value, ' -> ' , self selection key asString. selection := nil]]].
	html div
		class: 'card';
		style: 'width: 100em';
		with: [ 
			html div 
				class: 'card-body';
				with: [ 
			self renderChartJsComponentOn: html.
			html form 
				class: 'form';
				with: [  
					(self index > 1) ifTrue: [ 
						html anchor
							class: 'btn btn-secondary';
							callback: [ self previous ];
							with: '<< Previo '].
					html space.
					(self index < self class ourData size) ifTrue: [ 
					html anchor
						class: 'btn btn-secondary';
						callback: [ self next ];
						with: 'Siguiente >>'
					]]]]
]

{ #category : #accessing }
NpStatsRoots >> selection [
	^ selection
]

{ #category : #accessing }
NpStatsRoots >> selection: anObject [
	^ selection := anObject
]

{ #category : #updating }
NpStatsRoots >> updateRoot: aHtmlRoot [

	aHtmlRoot stylesheet url: 'http://www.naupacto.com/css/bootstrap.min.4.3.1.css'
]
