Class {
	#name : #NpCatastroDB,
	#superclass : #Object,
	#classInstVars : [
		'rusticas',
		'urbanas'
	],
	#category : #'Npct-Stats-Web'
}

{ #category : #initialization }
NpCatastroDB class >> reset [ 

	urbanas := nil.
	rusticas := nil
]

{ #category : #accessing }
NpCatastroDB class >> rusticas [

	rusticas isNil ifTrue: [  rusticas := STON fromString: self stonRusticas ].
	^ rusticas
]

{ #category : #'as yet unclassified' }
NpCatastroDB class >> stonRusticas [

	^ '[NpCatastroItem {
			#nroOrden: "8",
			#naturaleza: "rural",
			#referencia: "15017A011002010000MX",
			#tipo: "TIERRA",
			#nombre: "BRAÑON",
			#latitud: "43.302192",
			#longitud: "-8.317914",
			#url: "https://www.google.com/maps/place/43%C2%B018%2707.8%22N+8%C2%B019%2704.4%22W/@43.302181,-8.3178903,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A011002010000MX&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "9",
			#naturaleza: "rural",
			#referencia: "15017A026000730000MO",
			#tipo: "TIERRA DE LABOR",
			#nombre: "CORNIDE",
			#latitud: "43.296206",
			#longitud: "-8.315186",
			#url: "https://www.google.com/maps?t=k&z=18&q=43.2962026320812,-8.31515664898204%2815017A026000730000MO%29&output=classic&dg=brw",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A026000730000MO&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "10",
			#naturaleza: "rural",
			#referencia: "15017A026001080000MI",
			#tipo: "TIERRA DE LABOR",
			#nombre: "FONTELA",
			#latitud: "43.295646",
			#longitud: "-8.316132",
			#url: "https://www.google.com/maps/place/43%C2%B017%2744.3%22N+8%C2%B018%2758.1%22W/@43.2956486,-8.3161413,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A026001080000MI&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "11",
			#naturaleza: "rural",
			#referencia: "15017A026001200000MH",
			#tipo: "TIERRA DE PRADOS",
			#nombre: "FONTELA",
			#latitud: "43.293786",
			#longitud: "-8.317425",
			#url: "https://www.google.com/maps/place/43%C2%B017%2737.7%22N+8%C2%B019%2702.9%22W/@43.2938007,-8.3174665,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A026001200000MH&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "12",
			#naturaleza: "rural",
			#referencia: "15017A028000520000ML",
			#tipo: "TIERRA",
			#nombre: "BALUCO",
			#latitud: "43.290308",
			#longitud: "-8.318162",
			#url: "https://www.google.com/maps/place/43%C2%B017%2725.1%22N+8%C2%B019%2705.3%22W/@43.2902991,-8.3181471,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A028000520000ML&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "13",
			#naturaleza: "rural",
			#referencia: "15017A029000440000MS",
			#tipo: "TIERRA,PINAR MADERABLE (unido a finca 14ª)",
			#nombre: "CASTRILLON",
			#latitud: "43.291406",
			#longitud: "-8.320363",
			#url: "https://www.google.com/maps/place/43%C2%B017%2729.0%22N+8%C2%B019%2713.2%22W/@43.291399,-8.3203191,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A029000440000MS&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "14",
			#naturaleza: "rural",
			#referencia: "15017A029000440000MS",
			#tipo: "TIERRA, USO AGRARIO",
			#nombre: "CASTRILLON",
			#latitud: "43.291406",
			#longitud: "-8.320363",
			#url: "https://www.google.com/maps/place/43%C2%B017%2729.0%22N+8%C2%B019%2713.2%22W/@43.291399,-8.3203191,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A029000440000MS&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "15",
			#naturaleza: "rural",
			#referencia: "15017A042000380000MZ",
			#tipo: "TIERRA, PINAR MADERABLE",
			#nombre: "CANAL",
			#latitud: "43.287960",
			#longitud: "-8.321029",
			#url: "https://www.google.com/maps/place/43%C2%B017%2716.6%22N+8%C2%B019%2715.8%22W/@43.2879364,-8.3210701,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A042000380000MZ&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "16",
			#naturaleza: "rural",
			#referencia: "15017A065000220000MZ",
			#tipo: "HUERTA ESPECIAL",
			#nombre: "GAMELAS",
			#latitud: "43.273647",
			#longitud: "-8.348841",
			#url: "https://www.google.com/maps/place/43%C2%B016%2725.0%22N+8%C2%B020%2755.8%22W/@43.2736066,-8.3488217,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A065000220000MZ&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "17",
			#naturaleza: "rural",
			#referencia: "15017A011000740000MX",
			#tipo: "PRADO",
			#nombre: "LAVANDEIRA",
			#latitud: "43.299643",
			#longitud: "-8.321584",
			#url: "https://www.google.com/maps/place/43%C2%B017%2758.7%22N+8%C2%B019%2717.7%22W/@43.2996421,-8.3215863,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A011000740000MX&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "18",
			#naturaleza: "rural",
			#referencia: "15017A011000760000MJ",
			#tipo: "TIERRA DE LABOR",
			#nombre: "LAVANDEIRA",
			#latitud: "43.299416",
			#longitud: "-8.321208",
			#url: "https://www.google.com/maps/place/43%C2%B017%2757.8%22N+8%C2%B019%2716.4%22W/@43.2993936,-8.3212118,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A011000760000MJ&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "19",
			#naturaleza: "rural",
			#referencia: "15017A011000830000MU",
			#tipo: "TIERRA DE LABOR",
			#nombre: "SAR",
			#latitud: "43.298493",
			#longitud: "-8.321655",
			#url: "https://www.google.com/maps/place/43%C2%B017%2754.7%22N+8%C2%B019%2718.1%22W/@43.2985279,-8.3216972,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=15017A011000830000MU&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "20",
			#naturaleza: "rural",
			#referencia: "15017A011002070000MU",
			#tipo: "PRADO",
			#nombre: "PAVANA",
			#latitud: "43.303459",
			#longitud: "-8.316909",
			#url: "https://www.google.com/maps/place/43%C2%B018%2712.5%22N+8%C2%B019%2700.9%22W/@43.3034759,-8.3169101,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A011002070000MU&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "21",
			#naturaleza: "rural",
			#referencia: "15017A011003270000MX",
			#tipo: "PRADO",
			#nombre: "LAVANDEIRA",
			#latitud: "43.300934",
			#longitud: "-8.318841",
			#url: "https://www.google.com/maps/place/43%C2%B018%2703.4%22N+8%C2%B019%2707.9%22W/@43.3009555,-8.3188649,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A011003270000MX&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "22",
			#naturaleza: "rural",
			#referencia: "15017A012000620000MW",
			#tipo: "TIERRA DE LABOR",
			#nombre: "COBELO",
			#latitud: "43.301032",
			#longitud: "-8.314166",
			#url: "https://www.google.com/maps/place/43%C2%B018%2703.8%22N+8%C2%B018%2751.0%22W/@43.3010464,-8.3141756,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=15017A012000620000MW&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "23",
			#naturaleza: "rural",
			#referencia: "15017A012000770000MK",
			#tipo: "TIERRA DE LABOR",
			#nombre: "ORDIAS",
			#latitud: "43.299227",
			#longitud: "-8.312673",
			#url: "https://www.google.com/maps/place/43%C2%B017%2757.2%22N+8%C2%B018%2745.6%22W/@43.2992331,-8.3126641,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=15017A012000770000MK&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "24",
			#naturaleza: "rural",
			#referencia: "15017A012000780000MR",
			#tipo: "TIERRA DE LABOR",
			#nombre: "ORDIAS",
			#latitud: "43.299240",
			#longitud: "-8.312460",
			#url: "https://www.google.com/maps/place/43%C2%B017%2757.4%22N+8%C2%B018%2744.9%22W/@43.2992653,-8.3124578,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=15017A012000780000MR&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "25",
			#naturaleza: "rural",
			#referencia: "15017A012001260000MB",
			#tipo: "TIERRA DE LABOR",
			#nombre: "COBELO",
			#latitud: "",
			#longitud: "",
			#url: "--",
			#url_ref: ""
		},NpCatastroItem {
			#nroOrden: "26",
			#naturaleza: "rural",
			#referencia: "15017A018000650000MR",
			#tipo: "TIERRA, PINAR MADERABLE",
			#nombre: "CASTRO",
			#latitud: "43.296493",
			#longitud: "-8.295542",
			#url: "https://www.google.com/maps/place/43%C2%B017%2747.4%22N+8%C2%B017%2743.9%22W/@43.296495,-8.2955298,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=15017A018000650000MR&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "27",
			#naturaleza: "rural",
			#referencia: "15017A025000220000MG",
			#tipo: "PRADO",
			#nombre: "VOLTEIRO",
			#latitud: "43.297249",
			#longitud: "-8.305512",
			#url: "https://www.google.com/maps/place/43%C2%B017%2750.1%22N+8%C2%B018%2719.8%22W/@43.2972582,-8.3054976,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A025000220000MG&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "28",
			#naturaleza: "rural",
			#referencia: "15017A026001640000MT",
			#tipo: "PRADO",
			#nombre: "QUINTAN",
			#latitud: "43.293133",
			#longitud: "-8.313600",
			#url: "https://www.google.com/maps/place/43%C2%B017%2735.2%22N+8%C2%B018%2748.5%22W/@43.2931031,-8.3134621,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A026001640000MT&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "29",
			#naturaleza: "rural",
			#referencia: "15017A027000300000MZ",
			#tipo: "TIERRA, PINAR MADERABLE",
			#nombre: "APEADERO",
			#latitud: "43.288949",
			#longitud: "-8.310112",
			#url: "https://www.google.com/maps/place/43%C2%B017%2720.2%22N+8%C2%B018%2736.4%22W/@43.2889556,-8.3101107,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A027000300000MZ&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "30",
			#naturaleza: "rural",
			#referencia: "15017A028000460000MG",
			#tipo: "TIERRA, PINAR MADERABLE",
			#nombre: "BALUCO",
			#latitud: "43.290651",
			#longitud: "-8.317218",
			#url: "https://www.google.com/maps/place/43%C2%B017%2726.2%22N+8%C2%B019%2702.0%22W/@43.2906182,-8.3172296,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A028000460000MG&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "31",
			#naturaleza: "rural",
			#referencia: "15017A028000630000MX",
			#tipo: "TIERRA, PINAR MADERABLE",
			#nombre: "CASTRILLON",
			#latitud: "43.290534",
			#longitud: "-8.319813",
			#url: "https://www.google.com/maps/place/43%C2%B017%2725.6%22N+8%C2%B019%2711.4%22W/@43.2904426,-8.3198213,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A028000630000MX&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "32",
			#naturaleza: "rural",
			#referencia: "15017A030001590000MW",
			#tipo: "TIERRA DE LABOR",
			#nombre: "CASTELLANA",
			#latitud: "43.297282",
			#longitud: "-8.331578",
			#url: "https://www.google.com/maps/place/43%C2%B017%2750.3%22N+8%C2%B019%2753.6%22W/@43.2973103,-8.3315558,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=15017A030001590000MW&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		}]'
]

{ #category : #'as yet unclassified' }
NpCatastroDB class >> stonUrbanas [

	^ '[NpCatastroItem {
			#nroOrden: "2",
			#naturaleza: "urbana",
			#referencia: "6350926NH5965S0001OU",
			#tipo: "SUELO",
			#nombre: "MUIÑO VELHO",
			#latitud: "43.305453",
			#longitud: "-8.310659",
			#url: "https://www.google.com/maps/place/43%C2%B018%2719.5%22N+8%C2%B018%2738.5%22W/@43.305417,-8.3106873,667m/data=!3m1!1e3!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=6350926NH5965S0001OU&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "3",
			#naturaleza: "urbana",
			#referencia: "000100900NH59D0001KR",
			#tipo: "CASA",
			#nombre: "COVELO",
			#latitud: "43.300810",
			#longitud: "-8.314851",
			#url: "https://www.google.com/maps/place/43%C2%B018%2702.7%22N+8%C2%B018%2754.3%22W/@43.3007473,-8.3150741,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=000100900NH59D0001KR&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "4",
			#naturaleza: "urbana",
			#referencia: "5642510NH5954S0001ZO",
			#tipo: "CASA",
			#nombre: "SAN BARTOLOME 24",
			#latitud: "43.297406",
			#longitud: "-8.316051",
			#url: "https://www.google.com/maps/place/43%C2%B017%2750.6%22N+8%C2%B018%2757.8%22W/@43.2973938,-8.3160552,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=5642510NH5954S0001ZO&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "5",
			#naturaleza: "urbana",
			#referencia: "5543517NH5954S0001TO",
			#tipo: "SUELO",
			#nombre: "SAN  BARTOLOME 50",
			#latitud: "43.298318",
			#longitud: "-8.316113",
			#url: "https://www.google.com/maps/place/43%C2%B017%2753.9%22N+8%C2%B018%2758.0%22W/@43.2982933,-8.3161075,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=5543517NH5954S0001TO&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "6",
			#naturaleza: "urbana",
			#referencia: "5642512NH5954S0001HO",
			#tipo: "SUELO",
			#nombre: "SAN BARTOLOME 24",
			#latitud: "43.297327",
			#longitud: "-8.315713",
			#url: "https://www.google.com/maps/place/43%C2%B017%2750.4%22N+8%C2%B018%2756.6%22W/@43.297325,-8.3157168,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=5642512NH5954S0001HO&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "7",
			#naturaleza: "urbana",
			#referencia: "6350925NH5965S0001MU",
			#tipo: "SUELO",
			#nombre: "MUINHO VELHO",
			#latitud: "43.305381",
			#longitud: "-8.311115",
			#url: "https://www.google.com/maps/place/43%C2%B018%2719.2%22N+8%C2%B018%2739.6%22W/@43.3053385,-8.3110088,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=R&RefC=6350925NH5965S0001MU&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		},NpCatastroItem {
			#nroOrden: "33",
			#naturaleza: "urbana",
			#referencia: "5945502NH5954N0001DQ",
			#tipo: "SUELO",
			#nombre: "POMBO",
			#latitud: "43.300268",
			#longitud: "-8.311522",
			#url: "https://www.google.com/maps/place/43%C2%B018''00.8%22N+8%C2%B018''41.4%22W/@43.3002244,-8.3136762,667m/data=!3m2!1e3!4b1!4m2!3m1!1s0x0:0x0",
			#url_ref: "https://www1.sedecatastro.gob.es/CYCBienInmueble/OVCConCiud.aspx?UrbRus=U&RefC=5945502NH5954N0001DQ&esBice=&RCBice1=&RCBice2=&DenoBice=&del=15&mun=17"
		}]'
]

{ #category : #accessing }
NpCatastroDB class >> urbanas [

	urbanas isNil ifTrue: [ urbanas := STON fromString: self stonUrbanas].
	^ urbanas

]
