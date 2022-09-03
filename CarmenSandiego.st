!classDefinition: #CarmenSandiego category: 'TrabajoFinal-Grupo-AS'!
TestCase subclass: #CarmenSandiego
	instanceVariableNames: 'reloj países detectiveAsignado recorridoDelLadron sospechosos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 18:04:05'!
cantidadDeSospechosos
	^ sospechosos size.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 21:14:07'!
colorDeCabelloDelLarón
	^ (self ladronDeLaPartida) colorDeCabello rasgo.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 21:12:53'!
colorDeOjosDelLarón

	^ (self ladronDeLaPartida) colorDeOjos rasgo.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'AD 6/13/2022 18:53:06'!
detectiveAsignado
	^ detectiveAsignado.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'A.G 7/7/2022 22:05:11'!
duraciónDeViajeCuandoEsLimítrofeYEsClasicoConDestino: aPaís 
	^ (aPaís demoraPorMigracion) + ((self duraciónFijaPorViaje)/2).! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'A.G 6/21/2022 22:39:01'!
duraciónDeViajeCuandoEsLimítrofeYEsDeInterpolConDestino: aPaís 
	^ (self duraciónFijaPorViaje).! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 6/17/2022 16:25:48'!
duraciónDeViajeDesde: paísOrigen Hasta: paísDestino
	^ (self estadoDeLimitrofesDe: paísOrigen para: paísDestino) duraciónDeViajeDelDetectiveHasta: paísDestino para: self.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'A.G 7/7/2022 22:03:31'!
duraciónFijaPorViaje
	^ 10*hour.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:13:20'!
estadoDeLimitrofesDe: unPaisOrigen para: unPaisAViajar 
	^ Limítrofe estadoDeLimitrofesDe: unPaisOrigen para: unPaisAViajar.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/3/2022 18:10:42'!
estadoDeUnicidadDeSospechosos
	^ UnicidadDeSospechosos estadoDeUnicidadPara:self.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 21:15:03'!
formaDeCabelloDelLadrón
	^ (self ladronDeLaPartida) formaDeCabello rasgo.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 19:00:05'!
ladronDeLaPartida

	^ sospechosos detect: [:unSospechoso | unSospechoso esLadrón].! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 20:19:50'!
nombreDelLadrón
	^ (self ladronDeLaPartida) nombre.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 21:19:32'!
objetoDeValorDelPaísRobado
	
	^ (self paísDelRobo) objetoDeValor.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 6/14/2022 03:23:17'!
paísDelRobo
	^ países detect: [:unPaís | unPaís esPaísDelRobo].! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 18:17:31'!
pda
	
	^ detectiveAsignado personalAssistant.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 6/17/2022 19:27:14'!
primerTestigoDelPaísDondeEstáElDetective
	^ (self ubicaciónDelDetective) testigos first.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'A.G 7/7/2022 14:28:38'!
resultadoDeArrestarA: unSospechoso 
	^ ResultadoDePartida resultadoDeArrestarA: unSospechoso.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 21:20:01'!
rutaDeEscapeDelLadrón
	
	^ recorridoDelLadron.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 6/17/2022 19:28:33'!
segundoTestigoDelPaísDondeEstáElDetective
	^ (self ubicaciónDelDetective) testigos second.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'A.G 7/7/2022 23:30:20'!
sospechosos
	^sospechosos! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/7/2022 19:04:09'!
sospechososSegúnPistas: unasPistas
	
	^ (self pda) sospechosos: sospechosos segúnPistas: unasPistas.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 6/17/2022 19:28:50'!
terceroTestigoDelPaísDondeEstáElDetective
	^ (self ubicaciónDelDetective) testigos third.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'A.G 7/6/2022 11:13:05'!
tiempoRestante
	^ (reloj tiempoRestante).! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:09:14'!
ubicaciónDelDetective

	^ detectiveAsignado ubicación.! !

!CarmenSandiego methodsFor: 'accessing' stamp: 'A.G 7/7/2022 23:42:01'!
unSospechoso
	^ sospechosos anyOne.! !


!CarmenSandiego methodsFor: 'initialization' stamp: 'SA 7/8/2022 04:12:22'!
asignarTiempoRestante: unTiempoRestante
	
	reloj asignarUnTiempoRestante: unTiempoRestante.! !

!CarmenSandiego methodsFor: 'initialization' stamp: 'SA 7/7/2022 18:01:23'!
conSospechosos: unosSospechosos tiempoRestante: unReloj países: unosPaíses detective: unDetective recorridoDelLadron: unRecorrido
	
	sospechosos _ unosSospechosos.
	reloj _ unReloj.
	países _ unosPaíses.
	detectiveAsignado _ unDetective.
	recorridoDelLadron _ unRecorrido.! !

!CarmenSandiego methodsFor: 'initialization' stamp: 'A.G 7/7/2022 23:30:44'!
filtradoDeSospechososPorPDA: unaListaDeSospechososFiltrado 
	sospechosos _ unaListaDeSospechososFiltrado.! !

!CarmenSandiego methodsFor: 'initialization' stamp: 'SA 7/8/2022 04:26:08'!
iniciarPartidaConLadón: nombreDeUnSospechoso yPaísDelRobo: nombreDeUnPaís
			
	(sospechosos detect: [:unSopechoso | unSopechoso tieneNombre: nombreDeUnSospechoso]) asumirRolDeLadrón.
	(países detect: [:unPaís | unPaís tieneNombre: nombreDeUnPaís]) asumirRolDePaísDelRobo.
	
	detectiveAsignado ubicarEn: (self paísDelRobo).
	detectiveAsignado asignarReloj: reloj. "HACE FALTA ÉSTO? NO ALCANZA CON EL SETUP?"! !


!CarmenSandiego methodsFor: 'testing' stamp: 'SA 7/8/2022 04:22:33'!
esLimitrofe: unPaís con: otroPaís
	^ (unPaís paísesLimítrofes) includes: otroPaís.! !

!CarmenSandiego methodsFor: 'testing' stamp: 'SA 7/7/2022 18:59:47'!
haySospechosoÚnico

	^ sospechosos size = 1.! !

!CarmenSandiego methodsFor: 'testing' stamp: 'SA 7/5/2022 16:03:26'!
tieneTiempoDisponiblePara: unTiempo

	^ (self tiempoRestante) >= unTiempo.! !


!CarmenSandiego methodsFor: 'actions' stamp: 'A.G 7/7/2022 23:15:38'!
hacerInterrogarAlDetectiveA: unTestigo 
	| tiempoAContemplar |
	tiempoAContemplar _ (detectiveAsignado duraciónDeInterrogaciónA: unTestigo).
	
	(reloj estadoDelTiempoCon: tiempoAContemplar) interrogarA: unTestigo conDuracion: tiempoAContemplar para:self.! !

!CarmenSandiego methodsFor: 'actions' stamp: 'SA 7/8/2022 04:13:07'!
hacerInterrogarAlDetectiveCuandoTieneTiempoDisponibleA: unTestigo conDuracion: unTiempo 

	detectiveAsignado interrogarA: unTestigo conDuración: unTiempo enPartida: self.
	
	! !

!CarmenSandiego methodsFor: 'actions' stamp: 'A.G 7/8/2022 11:55:54'!
hacerOrdenDeArrestoCuandoHayUnicidadDeSospechosoA: unSospechoso enArchivo: unArchivo 
	(self resultadoDeArrestarA: unSospechoso) imprimirArchivo: unArchivo para: self.! !

!CarmenSandiego methodsFor: 'actions' stamp: 'SA 7/8/2022 04:09:14'!
hacerViajarAlDetectiveAPróximoDestino
	
	| tiempoAContemplar unPaísAViajar |
	unPaísAViajar _ detectiveAsignado próximoDestinoSegúnPDA.
	tiempoAContemplar _ self duraciónDeViajeDesde: (detectiveAsignado ubicación) Hasta: unPaísAViajar.

	(reloj estadoDelTiempoCon: tiempoAContemplar) viajarHacia: unPaísAViajar enPartida: self.! !

!CarmenSandiego methodsFor: 'actions' stamp: 'SA 7/8/2022 04:09:14'!
hacerViajarAlDetectiveHacia: paisDestino 

	| tiempoAContemplar | 
	 tiempoAContemplar _ self duraciónDeViajeDesde: (detectiveAsignado ubicación) Hasta: paisDestino.	

	(reloj estadoDelTiempoCon: tiempoAContemplar) viajarHacia: paisDestino enPartida: self.! !

!CarmenSandiego methodsFor: 'actions' stamp: 'A.G 7/8/2022 11:41:19'!
realizarOrdenDeArrestoEnArchivo: unArchivo

	(self estadoDeUnicidadDeSospechosos) realizarOrdenDeArrestoPara: self conArchivo: unArchivo.! !

!CarmenSandiego methodsFor: 'actions' stamp: 'A.G 7/6/2022 11:11:52'!
reducirTiempoRestanteEn: tiempoAReducir
	reloj reducirTiempoEn: tiempoAReducir.
	
	"reloj _ (reloj - tiempoAReducir)max:(0*hour)."! !

!CarmenSandiego methodsFor: 'actions' stamp: 'A.G 7/6/2022 15:32:36'!
viajarCuandoTieneTiempoHacia: unPaisDestino
	
	self reducirTiempoRestanteEn: (self duraciónDeViajeDesde: (self ubicaciónDelDetective) Hasta: unPaisDestino).
	detectiveAsignado ubicarEn: unPaisDestino.
	

	! !


!CarmenSandiego methodsFor: 'actions-private' stamp: 'A.G 7/8/2022 12:55:10'!
noHacerOrdenDeArrestoCuandoNoHayUnicidadDeSospechoso
	self error: self class errorDescriptionNoHayUnicidadDeSospechoso.! !

!CarmenSandiego methodsFor: 'actions-private' stamp: 'A.G 7/8/2022 00:35:38'!
perderPorFaltaDeTiempo
	self error: self class errorDescriptionGameOver.! !


!CarmenSandiego methodsFor: 'actions-double-dispatch' stamp: 'SA 7/8/2022 04:07:51'!
duraciónDeViajeCuandoEsLimítrofeConDestino: paísDestino
	^ detectiveAsignado duraciónDeViajeCuandoEsLimitrofeConDestino: paísDestino enPartida: self.! !

!CarmenSandiego methodsFor: 'actions-double-dispatch' stamp: 'A.G 7/7/2022 22:04:01'!
duraciónDeViajeCuandoNoEsLimítrofeConDestino: unPaís
	^ (unPaís demoraPorMigracion) + (self duraciónFijaPorViaje).! !


!CarmenSandiego methodsFor: 'private-name' stamp: 'A.G 7/8/2022 21:00:32'!
printOn: aStream 
	aStream nextPutAll: 'CarmenSandiego'.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CarmenSandiego class' category: 'TrabajoFinal-Grupo-AS'!
CarmenSandiego class
	instanceVariableNames: ''!

!CarmenSandiego class methodsFor: 'instance creation' stamp: 'SA 7/7/2022 16:25:03'!
conSospechosos: unaListaDeSospechosos tiempoRestante: unTiempo países: unaListaDePaises detective: unDetective recorridoDelLadron: unRecorrido 

	^self new conSospechosos: unaListaDeSospechosos tiempoRestante: unTiempo países: unaListaDePaises detective: unDetective recorridoDelLadron: unRecorrido.! !


!CarmenSandiego class methodsFor: 'accessing' stamp: 'A.G 7/8/2022 00:34:57'!
errorDescriptionGameOver
	^ 'GameOver'.! !

!CarmenSandiego class methodsFor: 'accessing' stamp: 'A.G 7/8/2022 12:55:41'!
errorDescriptionNoHayUnicidadDeSospechoso
	^ 'NoHayUnicidadDeSospechoso'.! !


!classDefinition: #CarmenSandiegoTest category: 'TrabajoFinal-Grupo-AS'!
TestCase subclass: #CarmenSandiegoTest
	instanceVariableNames: 'partida1 partida2 partida3 sospechoso1 sospechoso2 sospechoso3 sospechoso4 unDetective ojosVerdes ojosAzules ojosMarrones ojosNegros cabelloCorto cabelloPelado cabelloLargo cabelloLacio cabelloOndulado españa francia portugal italia cabelloNegro cabelloMarrón cabelloRubio pistaColorDeCabello pistaFormaDeCabello pistaColorDeOjos pistaDestinoFrancia pistaDestinoPortugal unDetectivePersuasivo unDetectiveInterpol pistaSinInformacion tiempo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 7/7/2022 23:40:31'!
interregorarATodosLosTestigosDelPaisActual

	| testigo1 testigo2 testigo3 |
	
	testigo1 _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	testigo2 _ partida1 segundoTestigoDelPaísDondeEstáElDetective.
	testigo3 _ partida1 terceroTestigoDelPaísDondeEstáElDetective.
	
	partida1 hacerInterrogarAlDetectiveA: testigo1.
	partida1 hacerInterrogarAlDetectiveA: testigo1.
	partida1 hacerInterrogarAlDetectiveA: testigo2.
	partida1 hacerInterrogarAlDetectiveA: testigo2.
	partida1 hacerInterrogarAlDetectiveA: testigo3.
	partida1 hacerInterrogarAlDetectiveA: testigo3.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'SA 6/16/2022 22:52:19'!
limítrofesDeEspaña
	
	| paísesLimitrofes |
	 
	paísesLimitrofes _ Set new.
	
	paísesLimitrofes add: francia.
	paísesLimitrofes add: portugal.
	
	^ paísesLimitrofes.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'SA 6/16/2022 23:02:49'!
limítrofesDeFrancia
	
	| paísesLimitrofes |
	 
	paísesLimitrofes _ Set new.
	
	paísesLimitrofes add: españa.
	paísesLimitrofes add: italia.
	
	^ paísesLimitrofes.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'SA 6/16/2022 23:03:01'!
limítrofesDeItalia
	
	| paísesLimitrofes |
	 
	paísesLimitrofes _ Set new.
	
	paísesLimitrofes add: francia.
	
	^ paísesLimitrofes.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 6/21/2022 23:15:50'!
limítrofesDePortugal
	
	| paísesLimitrofes |
	 
	paísesLimitrofes _ Set new.
	
	paísesLimitrofes add: españa.
	
	^ paísesLimitrofes.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'SA 7/3/2022 19:35:21'!
países
	| países |
	
	países _ Set new.
	
	países add: españa.
	países add: portugal.
	países add: francia.
	países add: italia.
	
	^ países.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 7/6/2022 08:13:04'!
pistas: unaPista y: otraPista 
	| pistas |
	pistas _ OrderedCollection new.
	pistas add: unaPista.
	pistas add: otraPista.
	pistas add: pistaSinInformacion.
	
	^ pistas.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 6/30/2022 17:02:12'!
recorridoDelLadron
	| recorrido |
	recorrido _ OrderedCollection new.
	
	recorrido add: españa.
	recorrido add: francia.
	recorrido add: portugal.
	
	^ recorrido.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'SA 7/3/2022 19:34:58'!
sospechosos

	| sospechosos |
	
	sospechosos _ Set new.
	
	sospechosos add: sospechoso1. "Ladrón"
	sospechosos add: sospechoso2. "Inocente"
	sospechosos add: sospechoso3. "Inocente"
	sospechosos add: sospechoso4. "Inocente"
	
	^ sospechosos! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 7/6/2022 08:16:33'!
testigosDeEspaña
	| testigos testigo1 testigo2 testigo3 |
	
	testigo1 _ Testigo conDificultadDeInterrogación: 20 conPistas: (self pistas:pistaColorDeCabello y: pistaFormaDeCabello).
	testigo2 _ Testigo conDificultadDeInterrogación: 16 conPistas: (self pistas:pistaDestinoFrancia y: pistaColorDeOjos).
	testigo3 _ Testigo conDificultadDeInterrogación: 30 conPistas: (self pistas:pistaColorDeCabello y: pistaSinInformacion).
	
	testigos _ OrderedCollection new.
	
	testigos add: testigo1.
	testigos add: testigo2.
	testigos add: testigo3.
	
	^ testigos.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 7/6/2022 08:17:00'!
testigosDeFrancia
	| testigos testigo1 testigo2 testigo3 |
	
	testigo1 _ Testigo conDificultadDeInterrogación: 26 conPistas: (self pistas:pistaColorDeCabello y: pistaFormaDeCabello).
	testigo2 _ Testigo conDificultadDeInterrogación: 44 conPistas: (self pistas:pistaDestinoPortugal y: pistaSinInformacion).
	testigo3 _ Testigo conDificultadDeInterrogación: 18 conPistas: (self pistas:pistaColorDeCabello y: pistaSinInformacion).
	
	testigos _ OrderedCollection new.
	
	testigos add: testigo1.
	testigos add: testigo2.
	testigos add: testigo3.
	
	^ testigos.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 7/6/2022 08:17:34'!
testigosDeItalia
	| testigos testigo1 testigo2 testigo3 |
	
	testigo1 _ Testigo conDificultadDeInterrogación: 40 conPistas: (self pistas:pistaSinInformacion y: pistaSinInformacion).
	testigo2 _ Testigo conDificultadDeInterrogación: 16 conPistas: (self pistas:pistaSinInformacion y: pistaSinInformacion).
	testigo3 _ Testigo conDificultadDeInterrogación: 24 conPistas: (self pistas:pistaSinInformacion y: pistaSinInformacion).
	
	testigos _ OrderedCollection new.
	
	testigos add: testigo1.
	testigos add: testigo2.
	testigos add: testigo3.
	
	^ testigos.! !

!CarmenSandiegoTest methodsFor: 'factory' stamp: 'A.G 7/6/2022 08:17:56'!
testigosDePortugal
	| testigos testigo1 testigo2 testigo3 |
	
	testigo1 _ Testigo conDificultadDeInterrogación: 36 conPistas: (self pistas:pistaColorDeOjos y: pistaColorDeCabello).
	testigo2 _ Testigo conDificultadDeInterrogación: 28 conPistas: (self pistas:pistaSinInformacion y: pistaSinInformacion).
	testigo3 _ Testigo conDificultadDeInterrogación: 26 conPistas: (self pistas:pistaFormaDeCabello y: pistaSinInformacion).

	testigos _ OrderedCollection new.
	
	testigos add: testigo1.
	testigos add: testigo2.
	testigos add: testigo3.
	
	^ testigos.! !


!CarmenSandiegoTest methodsFor: 'setUp' stamp: 'SA 7/8/2022 04:06:06'!
setUp	
	" ----------- OJOS ----------- "
	ojosVerdes _ Característica conParteDelCuerpo: 'Ojo' yDescripción: 'Verde'.
	ojosAzules _ Característica conParteDelCuerpo: 'Ojo' yDescripción: 'Azul'.
	ojosMarrones _ Característica conParteDelCuerpo: 'Ojo' yDescripción: 'Marrón'.
	ojosNegros _ Característica conParteDelCuerpo: 'Ojo' yDescripción: 'Negro'.
	
	" ----------- CABELLO ----------- "
	cabelloLargo _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Largo'.
	cabelloPelado _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Pelado'.
	cabelloCorto _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Corto'.
	cabelloLacio _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Lacio'.
	cabelloOndulado _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Ondulado'.
	
	" ----------- COLOR DE CABELLO ----------- "
	cabelloNegro _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Negro'.
	cabelloRubio _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Rubio'.
	cabelloMarrón _ Característica conParteDelCuerpo: 'Cabello' yDescripción: 'Marrón'.
	
	" -------------- IMPLICADOS  -------------- "	
	sospechoso2 _ Sospechoso conNombre: 'Juan' colorDeOjos: ojosVerdes formaDeCabello: cabelloPelado colorDeCabello: cabelloNegro.
	sospechoso1 _ Sospechoso conNombre: 'Carmen' colorDeOjos: ojosAzules formaDeCabello: cabelloLargo colorDeCabello: cabelloNegro.
	sospechoso3 _ Sospechoso conNombre: 'Facu' colorDeOjos: ojosMarrones formaDeCabello: cabelloCorto colorDeCabello: cabelloRubio.
	sospechoso4 _ Sospechoso conNombre: 'Carlos' colorDeOjos: ojosVerdes formaDeCabello: cabelloLacio colorDeCabello: cabelloNegro.
	sospechoso5 _ Sospechoso conNombre: 'Agus' colorDeOjos: ojosMarrones formaDeCabello: cabelloLacio colorDeCabello: cabelloMarrón.
	
	" ------------ PAISES -------------- "
	españa _ País conNombre: 'España' demoraPorMigración: 4*hour yObjetoDeValor: 'EspadaDorada'.
	francia _ País conNombre: 'Francia' demoraPorMigración: 8*hour yObjetoDeValor: 'Cofre'.
	portugal _ País conNombre: 'Portugal' demoraPorMigración: 5*hour yObjetoDeValor: 'Pintura'.
	italia _ País conNombre: 'Italia' demoraPorMigración: 6*hour yObjetoDeValor: 'Diamante'.
	
	" -------------- PISTAS  -------------- "
	pistaSinInformacion _ PistaSinInformación new.
	pistaColorDeCabello _ PistaDeCaracterística conCaracterística: cabelloNegro yDescripción: 'Cabello negro'.
	pistaFormaDeCabello _ PistaDeCaracterística conCaracterística: cabelloLargo yDescripción: 'Cabello largo'.
	pistaColorDeOjos _ PistaDeCaracterística conCaracterística: ojosAzules yDescripción: 'Ojos azules'.
	pistaDestinoFrancia _ PistaDePróximoDestino conPróximoDestino: francia yDescripción: 'Francia'.
	pistaDestinoPortugal _ PistaDePróximoDestino conPróximoDestino: portugal yDescripción: 'Portugal'.
	
	" ------------ PAISES -------------- "
	españa asignarPaísesLimítrofes: self limítrofesDeEspaña.
	francia asignarPaísesLimítrofes: self limítrofesDeFrancia.
	portugal asignarPaísesLimítrofes: self limítrofesDePortugal.
	italia asignarPaísesLimítrofes: self limítrofesDeItalia.
	
	españa asignarTestigos: self testigosDeEspaña.
	francia asignarTestigos: self testigosDeFrancia.
	portugal asignarTestigos: self testigosDePortugal.
	italia asignarTestigos: self testigosDeItalia.	
	
	" -------------- DETECTIVES  -------------- "
	unDetective _ DetectiveClasico conHabilidadDeInterrogación: 5.
	unDetectivePersuasivo _ DetectivePersuasivo conHabilidadDeInterrogación: 8.
	unDetectiveInterpol _ DetectiveDeInterpol conHabilidadDeInterrogación: 14.
	
	"----------------TIEMPO ------------------- "
	tiempo _ Reloj conTiempoRestante: 120*hour.
	
	" -------------- PARTIDAS  -------------- "
	partida1 _ CarmenSandiego conSospechosos: (self sospechosos) tiempoRestante: tiempo 	países: (self países) 	detective: unDetective recorridoDelLadron: (self recorridoDelLadron).
	partida2 _ CarmenSandiego conSospechosos: (self sospechosos) tiempoRestante: tiempo 	países: (self países) 	detective: unDetectivePersuasivo recorridoDelLadron: (self recorridoDelLadron).
	partida3 _ CarmenSandiego conSospechosos: (self sospechosos) tiempoRestante: tiempo 	países: (self países) 	detective: unDetectiveInterpol recorridoDelLadron: (self recorridoDelLadron).
	
	partida1 iniciarPartidaConLadón: 'Carmen' yPaísDelRobo: 'España'.
	partida2 iniciarPartidaConLadón: 'Carmen' yPaísDelRobo: 'España'.
	partida3 iniciarPartidaConLadón: 'Carmen' yPaísDelRobo: 'España'.
	! !


!CarmenSandiegoTest methodsFor: 'test-pda' stamp: 'A.G 7/8/2022 12:06:37'!
test01_CuandoInterrogaAlosTestigos_DisminuyeLaCantidadDeSospechosos
	
	Assert that: partida1 cantidadDeSospechosos isEqualTo: 4.
	
	self interregorarATodosLosTestigosDelPaisActual.
	
	Assert that: partida1 cantidadDeSospechosos isEqualTo: 1.
	
	
	! !


!CarmenSandiegoTest methodsFor: 'test-nombresDeClases' stamp: 'A.G 7/8/2022 14:53:43'!
test01_CuandoLaClaseDetective_TieneUnaUbicacion
	
	Assert that: (unDetective className) isEqualTo: 'DetectiveClasico'. ! !


!CarmenSandiegoTest methodsFor: 'test-testigos' stamp: 'A.G 7/6/2022 08:23:23'!
test01_cuandoUnTestigoSabeCuantasPistasTiene
	
	| unTestigo |
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	
	Assert that: unTestigo cantidadDePistas isEqualTo: 3.! !

!CarmenSandiegoTest methodsFor: 'test-testigos' stamp: 'SA 7/8/2022 04:46:19'!
test01_todoTestigoSabeQuéPistasTiene
	
	| unTestigo |
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	
	Assert isTrue: ((unTestigo pistas) includes: pistaColorDeCabello).! !

!CarmenSandiegoTest methodsFor: 'test-testigos' stamp: 'A.G 7/6/2022 19:59:14'!
test02_cuandoUnTestigoSabeSiTienePistas
	
	| unTestigo |
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	
	Assert isTrue: unTestigo tienePistas! !

!CarmenSandiegoTest methodsFor: 'test-testigos' stamp: 'A.G 7/6/2022 19:59:58'!
test03_cuandoUnTestigoTieneUnaDificultadDeInterrogacion
	
	| unTestigo |
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	
	Assert that: unTestigo dificultadDeInterrogación isEqualTo: 20.! !


!CarmenSandiegoTest methodsFor: 'tests-1-filtros' stamp: 'SA 7/7/2022 19:03:39'!
test01_cuandoSeFiltranLosSospechososDadoUnColorDeOjos

	| pistas sospechososFiltrados |
	pistas _ Set new.
	pistas add: pistaColorDeOjos.
	
	sospechososFiltrados _ (partida1 sospechososSegúnPistas: pistas).

	Assert isTrue: (sospechososFiltrados includes: sospechoso1).! !

!CarmenSandiegoTest methodsFor: 'tests-1-filtros' stamp: 'SA 7/7/2022 18:57:12'!
test02_cuandoSeFiltranLosSospechososDadoUnColorDeCabello

	| pistas sospechososFiltrados |
	pistas _ Set new.
	pistas add: pistaColorDeCabello.
	
	sospechososFiltrados _ partida1 sospechososSegúnPistas: pistas.

	Assert isTrue: (sospechososFiltrados includes: sospechoso1).! !

!CarmenSandiegoTest methodsFor: 'tests-1-filtros' stamp: 'SA 7/7/2022 18:57:50'!
test03_cuandoSeFiltranLosSospechososDadaUnaFormaDeCabello

	| pistas sospechososFiltrados |
	pistas _ Set new.
	pistas add: pistaFormaDeCabello.
	
	sospechososFiltrados _ partida1 sospechososSegúnPistas: pistas.

	Assert isTrue: (sospechososFiltrados includes: sospechoso1).! !

!CarmenSandiegoTest methodsFor: 'tests-1-filtros' stamp: 'SA 7/7/2022 18:58:28'!
test04_cuandoSeFiltranLosSospechososDadasVariasCaracterísticas

	| pistas sospechososFiltrados |
	pistas _ Set new.
	pistas add: pistaColorDeOjos.
	pistas add: pistaColorDeCabello.
	pistas add: pistaFormaDeCabello.
	
	sospechososFiltrados _ partida1 sospechososSegúnPistas: pistas.

	Assert isTrue: (sospechososFiltrados includes: sospechoso1).! !


!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'AD 6/16/2022 18:25:00'!
test01_unDetectiveSabeSuNivelDeHabilidadDeInterrogación
	
	Assert that: unDetective nivelDeInterrogación isEqualTo: 5.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'SA 7/7/2022 19:07:40'!
test02_alIniciarUnaPartida_ElDetectiveEstáEnElPaísDelRobo

	| paísDelRobo |	
	paísDelRobo _ partida1 paísDelRobo.

	Assert that: partida1 ubicaciónDelDetective isEqualTo: paísDelRobo.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'SA 7/7/2022 19:08:07'!
test03_cuandoUnDetectiveViaja_CambiaSuUbicacion
	
	| paísDestino |
	paísDestino _ portugal.	
	
	partida1 hacerViajarAlDetectiveHacia: paísDestino.
	
	Assert that: partida1 ubicaciónDelDetective isEqualTo: paísDestino.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 19:29:00'!
test04_cuandoUnDetectiveViajaAUnPaisLimitrofe_ElTiempoDeViajeSeReduceALaMitad

	| tiempoRestanteInicial tiempoRestanteFinal paísOrigen paísDestino |
	paísOrigen _ partida1 ubicaciónDelDetective.
	paísDestino _ portugal.
	tiempoRestanteInicial _ partida1 tiempoRestante.
	
	Assert isTrue: (partida1 tieneTiempoDisponiblePara: (partida1 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino)).
	
	partida1 hacerViajarAlDetectiveHacia: paísDestino.
	tiempoRestanteFinal _ tiempoRestanteInicial - (partida1 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino).
	
	Assert that: partida1 tiempoRestante isEqualTo:tiempoRestanteFinal. "110*hour"! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/7/2022 22:12:57'!
test05_cuandoUnDetectiveViajaAUnPaisQueNoEsLimitrofe_ElTiempoRestanteDisminuye

	| tiempoRestanteInicial tiempoRestanteFinal paísOrigen paísDestino |
	paísOrigen _ partida1 ubicaciónDelDetective.
	paísDestino _ italia.
	tiempoRestanteInicial _ partida1 tiempoRestante.
	
	Assert isTrue: (partida1 tieneTiempoDisponiblePara: (partida1 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino)).
	
	partida1 hacerViajarAlDetectiveHacia: paísDestino.
	tiempoRestanteFinal _ tiempoRestanteInicial - (partida1 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino).
	
	Assert that: partida1 tiempoRestante isEqualTo: tiempoRestanteFinal. "104*hour"! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 11:49:41'!
test06_cuandoUnDetectiveViaja_ElTiempoRestanteDisminuyeEnAmbos

	Assert that: partida1 tiempoRestante isEqualTo: 120*hour.
	Assert that: unDetective tiempoRestante isEqualTo: 120*hour.
	
	partida1 hacerViajarAlDetectiveHacia: francia.
	
	Assert that: partida1 tiempoRestante isEqualTo: 107*hour.
	Assert that: unDetective tiempoRestante isEqualTo: 107*hour.
	! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:46:18'!
test07_cuandoElDetectiveInterrogaUnTestigo_ObtieneUnaPista
	
	| unTestigo pista |
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	pista _ unTestigo últimaPista.
		
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	
	Assert isTrue: (unDetective personalAssistant tieneLaPista: pista).

	! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:04:27'!
test08_cuandoElDetectiveInterrogaATodosLosTestigos_DisminuyeElTiempoRestante
	| tiempoRestante testigo1 testigo2 testigo3 |
	
	tiempoRestante _ partida1 tiempoRestante.
	
	testigo1 _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	testigo2 _ partida1 segundoTestigoDelPaísDondeEstáElDetective.
	testigo3 _ partida1 terceroTestigoDelPaísDondeEstáElDetective.
	
	partida1 hacerInterrogarAlDetectiveA: testigo1.
	partida1 hacerInterrogarAlDetectiveA: testigo2.
	partida1 hacerInterrogarAlDetectiveA: testigo3.
	
	tiempoRestante _ tiempoRestante -
	(unDetective duraciónDeInterrogaciónA: testigo1) -
	(unDetective duraciónDeInterrogaciónA: testigo2) -
	(unDetective duraciónDeInterrogaciónA: testigo3).
	
	Assert that: partida1 tiempoRestante isEqualTo: tiempoRestante.
	
	
! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/7/2022 23:31:03'!
test09_cuandoElDetectiveInterrogaUnTestigo_DisminuyeElTiempoRestante
	| tiempoRestante unTestigo |
	
	tiempoRestante _ partida1 tiempoRestante.
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	
	tiempoRestante _ tiempoRestante - (unDetective duraciónDeInterrogaciónA: unTestigo).

	Assert that: partida1 tiempoRestante isEqualTo: tiempoRestante.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:04:14'!
test10_cuandoElDetectiveInterrogaUnTestigoQueNoVioAlSospechoso_ObtieneUnaPista
	| unTestigo |
	
	partida1 hacerViajarAlDetectiveHacia: francia.
	
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	
	Assert isTrue: (unDetective personalAssistant tieneLaPista: pistaFormaDeCabello).! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 14:22:16'!
test11_cuandoElDetectiveInterrogaVariasVecesAUnTestigo_SoloLeDaraLasPistasQueTengaElTestigo
	| unTestigo |
	
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	
	Assert that: (unTestigo cantidadDePistas) isEqualTo:3. 
	
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	
	Assert that: (unDetective personalAssistant cantidadDePistas) isEqualTo:3.
	
	 ! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:04:07'!
test12_cuandoElDetectiveTienePistas_PuedeFiltrarFiltrarLosSospechosos
	
	| unTestigo |
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	partida1 hacerInterrogarAlDetectiveA: unTestigo.
	
	
	Assert isTrue: (unDetective personalAssistant tieneLaPista: pistaFormaDeCabello).
	Assert isTrue: (unDetective personalAssistant tieneLaPista: pistaColorDeCabello).
	Assert isTrue: ((partida1 sospechosos) includes: sospechoso1)
	
	! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'SA 7/8/2022 04:33:22'!
test13_cuandoNoHayTiempoDisponible_ElDetectiveNoPuedeViajar

	partida1 asignarTiempoRestante: 0*hour.
	
	Assert should: [partida1 hacerViajarAlDetectiveHacia: portugal.] signal: Error  withDescription: CarmenSandiego errorDescriptionGameOver.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'SA 7/8/2022 04:33:10'!
test14_cuandoNoHayTiempoDisponible_ElDetectiveNoPuedeInterrogar

	| unTestigo |
	
	partida1 asignarTiempoRestante: 0*hour.
	unTestigo _ partida1 primerTestigoDelPaísDondeEstáElDetective.

	Assert should: [partida1 hacerInterrogarAlDetectiveA: unTestigo] signal: Error  withDescription: CarmenSandiego errorDescriptionGameOver.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 21:14:12'!
test15_cuandoElDetectiveDeInterpolInterrogaUnTestigo_ObtieneUnaPista
	
	| unTestigo pista|
	unTestigo _ partida3 primerTestigoDelPaísDondeEstáElDetective.
	pista _ unTestigo últimaPista.
	
	partida3 hacerInterrogarAlDetectiveA: unTestigo.
	
	Assert isTrue: (unDetectiveInterpol personalAssistant tieneLaPista: pista).
! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/7/2022 23:39:15'!
test16_cuandoElDetectivePersuasivoInterrogaUnTestigo_ObtieneDosPista
	
	| unTestigo |
	unTestigo _ partida2 primerTestigoDelPaísDondeEstáElDetective.
	
	partida2 hacerInterrogarAlDetectiveA: unTestigo.
	
	Assert that: unDetectivePersuasivo personalAssistant cantidadDePistas isEqualTo: 2.
! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/7/2022 23:39:21'!
test17_cuandoElDetectivePersuasivoInterrogaUnTestigo_DisminuyeElTiempoRestante
	| tiempoRestante unTestigo |
	
	tiempoRestante _ partida2 tiempoRestante.
	unTestigo _ partida2 primerTestigoDelPaísDondeEstáElDetective.
	
	partida2 hacerInterrogarAlDetectiveA: unTestigo.
	
	tiempoRestante _ tiempoRestante - (unDetectivePersuasivo duraciónDeInterrogaciónA: unTestigo).

	Assert that: partida2 tiempoRestante isEqualTo: tiempoRestante. "119*hour"! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:03:47'!
test18_cuandoElDetectiveDeInterpolinterroga_DisminuyeElTiempoRestante
	
	| tiempoRestanteInicial tiempoRestanteFinal paísOrigen paísDestino |
	paísOrigen _ partida3 ubicaciónDelDetective.
	paísDestino _ portugal.
	tiempoRestanteInicial _ partida3 tiempoRestante.
	
	Assert isTrue: (partida3 tieneTiempoDisponiblePara:(partida3 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino)).
	
	partida3 hacerViajarAlDetectiveHacia: paísDestino.
	tiempoRestanteFinal _ tiempoRestanteInicial - (partida3 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino).
	
	Assert that: partida3 tiempoRestante isEqualTo: tiempoRestanteFinal.
		
				! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:03:52'!
test19_cuandoElDetectiveDeInterpol_ElTiempoDeMigracionesEsAnulado
	
	| tiempoRestanteInicial tiempoRestanteFinal paísOrigen paísDestino |
	paísOrigen _ partida3 ubicaciónDelDetective.
	paísDestino _ portugal.
	tiempoRestanteInicial _ partida3 tiempoRestante.
	
	Assert isTrue: (partida3 tieneTiempoDisponiblePara:(partida3 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino)).
	
	partida3 hacerViajarAlDetectiveHacia: paísDestino.
	tiempoRestanteFinal _ tiempoRestanteInicial - (partida3 duraciónDeViajeDesde: paísOrigen Hasta: paísDestino).
	
	Assert that: partida3 tiempoRestante isEqualTo: tiempoRestanteFinal.
		
				! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:01:57'!
test20_cuandoElDetectiveRealizaUnaOrdenDeArrestoAUnLadron_GanaLaPartida

	| archivo |
	archivo _ Archivo new.
				
	partida1 hacerOrdenDeArrestoCuandoHayUnicidadDeSospechosoA: sospechoso1 enArchivo: archivo.
	
	Assert that: partida1 tiempoRestante isEqualTo: 120*hour.
	Assert that: archivo fileContents isEqualTo:
'VICTORY

Detalles del ladrón
Nombre: Carmen
Color de ojos: Azul
Color de cabello: Negro
Forma de cabello: Largo

Detalles de la partida
Objeto robado: EspadaDorada
Ruta del ladrón: España, Francia, Portugal, 
Tiempo restante: 120 * hours'.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:01:53'!
test21_cuandoElDetectiveRealizaUnaOrdenDeArrestoAUnSospechoso_PierdeLaPartida
				
	| archivo |
	archivo _ Archivo new.			
	
	partida1 hacerOrdenDeArrestoCuandoHayUnicidadDeSospechosoA: sospechoso2 enArchivo: archivo.
	
	Assert that: archivo fileContents isEqualTo:
'GAME OVER

Detalles del ladrón
Nombre: Carmen
Color de ojos: Azul
Color de cabello: Negro
Forma de cabello: Largo

Detalles de la partida
Objeto robado: EspadaDorada
Ruta del ladrón: España, Francia, Portugal, 
Tiempo restante: 120 * hours'.
	! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 11:59:48'!
test22_cuandoElDetectiveTienePistaDelProximoDestino_ViajarAlPaisCorrespondiente

	self interregorarATodosLosTestigosDelPaisActual.
	
	Assert isTrue: (unDetective personalAssistant tieneLaPista: pistaDestinoFrancia).
	
	partida1 hacerViajarAlDetectiveHacia:(unDetective personalAssistant próximoDestinoSegúnPistas) .
	
	Assert that: unDetective ubicación isEqualTo: francia.! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 12:56:50'!
test23_cuandoNoQuedaUnÚnicoSospechoso_NoSeEmiteUnaOrdenDeArresto
	
	| archivo |
	archivo _ Archivo new.			
	
	Assert should: [partida1 realizarOrdenDeArrestoEnArchivo: archivo.] signal: Error  withDescription: CarmenSandiego errorDescriptionNoHayUnicidadDeSospechoso .! !

!CarmenSandiegoTest methodsFor: 'tests-detective' stamp: 'A.G 7/8/2022 21:13:57'!
test24_cuandoQuedaUnÚnicoSospechoso_SeEmiteUnaOrdenDeArresto
	
	| archivo |
	archivo _ Archivo new.
	
	self interregorarATodosLosTestigosDelPaisActual. 
	
	partida1 hacerViajarAlDetectiveAPróximoDestino.
	partida1 realizarOrdenDeArrestoEnArchivo: archivo.
	
	Assert that: partida1 tiempoRestante isEqualTo: 95*hour.  
	Assert that: archivo fileContents isEqualTo:
'VICTORY

Detalles del ladrón
Nombre: Carmen
Color de ojos: Azul
Color de cabello: Negro
Forma de cabello: Largo

Detalles de la partida
Objeto robado: EspadaDorada
Ruta del ladrón: España, Francia, Portugal, 
Tiempo restante: 95 * hours'.! !


!CarmenSandiegoTest methodsFor: 'tests-paises' stamp: 'SA 6/16/2022 23:10:48'!
test01_cuandoEspañaEsLimítrofeConFrancia
	
	Assert isTrue: (partida1 esLimitrofe: españa con: francia).! !

!CarmenSandiegoTest methodsFor: 'tests-paises' stamp: 'SA 6/17/2022 14:14:54'!
test02_cuandoPortugalNoEsLimítrofeConItalia
	
	Assert isFalse: (partida1 esLimitrofe: portugal con: italia).! !

!CarmenSandiegoTest methodsFor: 'tests-paises' stamp: 'A.G 6/30/2022 15:46:58'!
test03_todoPaísTieneUnObjetoDeValor
	
	Assert that: españa objetoDeValor isEqualTo: 'EspadaDorada'.! !


!CarmenSandiegoTest methodsFor: 'tests-partida' stamp: 'A.G 7/8/2022 12:37:08'!
test01_alIniciarUnaPartida_SeTieneUnaCantidadDeSospechosos
	
	Assert that: partida1 cantidadDeSospechosos isEqualTo: 4.! !

!CarmenSandiegoTest methodsFor: 'tests-partida' stamp: 'SA 6/17/2022 14:33:24'!
test02_alIniciarUnaPartida_SeTieneUnTiempoDeterminado

	Assert that: partida1 tiempoRestante isEqualTo: 120*hour.! !

!CarmenSandiegoTest methodsFor: 'tests-partida' stamp: 'A.G 7/8/2022 21:09:47'!
test03_alIniciarUnaPartida_SeTieneUnLadron

	Assert that: partida1 ladronDeLaPartida isEqualTo: sospechoso1.! !

!CarmenSandiegoTest methodsFor: 'tests-partida' stamp: 'SA 6/17/2022 14:32:51'!
test05_alIniciarUnaPartida_SeTieneUnDetectiveAsignado

    Assert that: partida1 detectiveAsignado isEqualTo: unDetective.! !

!CarmenSandiegoTest methodsFor: 'tests-partida' stamp: 'A.G 7/6/2022 15:22:09'!
test06_alIniciarUnaPartida_SeSabeDóndeFueElRobo

    Assert that: partida1 paísDelRobo isEqualTo: españa.! !


!CarmenSandiegoTest methodsFor: 'tests-sospechosos' stamp: 'SA 6/10/2022 21:01:06'!
test01_cuandoUnSospechosoTieneUnNombre
	
	Assert that: sospechoso3 nombre isEqualTo: 'Facu'.! !

!CarmenSandiegoTest methodsFor: 'tests-sospechosos' stamp: 'SA 6/20/2022 19:51:07'!
test02_cuandoUnSospechosoTieneUnColorDeOjos
	
	Assert that: sospechoso2 colorDeOjos isEqualTo: ojosVerdes. "Luego pensar si conviene usar colab para saber el color"! !

!CarmenSandiegoTest methodsFor: 'tests-sospechosos' stamp: 'SA 6/20/2022 19:51:41'!
test03_cuandoUnSospechosoTieneUnaFormaDeCabello
	
	Assert that: sospechoso3 formaDeCabello isEqualTo: cabelloCorto.! !

!CarmenSandiegoTest methodsFor: 'tests-sospechosos' stamp: 'SA 6/20/2022 19:52:36'!
test04_cuandoUnSospechosoTieneUnColorDeCabello
	
	Assert that: sospechoso3 colorDeCabello isEqualTo: cabelloRubio.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CarmenSandiegoTest class' category: 'TrabajoFinal-Grupo-AS'!
CarmenSandiegoTest class
	instanceVariableNames: 'españa'!


!classDefinition: #Archivo category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Archivo
	instanceVariableNames: 'contenido'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Archivo methodsFor: 'accesing' stamp: 'A.D 6/29/2022 16:51:13'!
fileContents
	^ contenido contents.! !


!Archivo methodsFor: 'action' stamp: 'A.D 6/29/2022 16:48:10'!
forceWriteStreamDo: aBlockClosure 
	aBlockClosure value: contenido .! !


!Archivo methodsFor: 'initialization' stamp: 'A.D 6/29/2022 16:40:40'!
initialize
	contenido _ ReadWriteStream on: ''.! !


!classDefinition: #Característica category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Característica
	instanceVariableNames: 'parteDelCuerpo rasgo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Característica methodsFor: 'initializate' stamp: 'SA 7/7/2022 20:46:46'!
initializeConParteDelCuerpo: unaParteDelCuerpo yDescripción: unaDescripción 
	parteDelCuerpo _ unaParteDelCuerpo.
	rasgo _ unaDescripción.! !


!Característica methodsFor: 'accessing' stamp: 'SA 7/7/2022 20:36:51'!
rasgo

	^ rasgo.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Característica class' category: 'TrabajoFinal-Grupo-AS'!
Característica class
	instanceVariableNames: ''!

!Característica class methodsFor: 'instance creation' stamp: 'A.G 7/6/2022 11:07:46'!
conParteDelCuerpo: unaParteDelCuerpo yDescripción: unaDescripción 
	
	^self new initializeConParteDelCuerpo: unaParteDelCuerpo yDescripción: unaDescripción. ! !


!classDefinition: #Detective category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Detective
	instanceVariableNames: 'ubicación nivelDeInterrogación pda reloj'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Detective methodsFor: 'accessing' stamp: 'A.G 7/8/2022 21:04:59'!
duraciónDeInterrogaciónA: unTestigo

	^ (self subclassResponsibility).! !

!Detective methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:07:50'!
duraciónDeViajeCuandoEsLimitrofeConDestino: paísDestino enPartida: unaPartida

	^ (unaPartida duraciónDeViajeCuandoEsLimítrofeYEsClasicoConDestino: paísDestino)! !

!Detective methodsFor: 'accessing' stamp: 'A.D 6/29/2022 16:19:59'!
nivelDeInterrogación

	^ nivelDeInterrogación.! !

!Detective methodsFor: 'accessing' stamp: 'SA 7/8/2022 03:57:11'!
personalAssistant

	^ pda.! !

!Detective methodsFor: 'accessing' stamp: 'SA 7/7/2022 18:59:08'!
próximoDestinoSegúnPDA

	^ pda próximoDestinoSegúnPistas.! !

!Detective methodsFor: 'accessing' stamp: 'SA 7/8/2022 03:57:35'!
tiempoRestante

	^ reloj tiempoRestante.! !

!Detective methodsFor: 'accessing' stamp: 'A.G 7/8/2022 21:04:41'!
tipoDeDetective
	^ (self subclassResponsibility).! !

!Detective methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:09:14'!
ubicación

	^ ubicación.! !


!Detective methodsFor: 'action' stamp: 'A.G 7/6/2022 09:58:39'!
averiguarPistasDe: unTestigo

	pda registrarPista: (unTestigo unaPista).! !

!Detective methodsFor: 'action' stamp: 'SA 7/8/2022 04:13:07'!
interrogarA: unTestigo conDuración: unTiempo enPartida: unaPartida

	reloj reducirTiempoEn: unTiempo.
	self averiguarPistasDe: unTestigo.
	pda filtrarSospechososPara: unaPartida.
	
	
	! !

!Detective methodsFor: 'action' stamp: 'A.D 6/29/2022 16:20:30'!
ubicarEn: unPaís

	ubicación _ unPaís.! !


!Detective methodsFor: 'initialization' stamp: 'SA 7/8/2022 04:11:05'!
asignarReloj: unReloj

	reloj _ unReloj.! !

!Detective methodsFor: 'initialization' stamp: 'A.G 7/8/2022 14:30:26'!
initialize
	pda _ PDA new.! !

!Detective methodsFor: 'initialization' stamp: 'SA 7/7/2022 18:09:25'!
initializeConHabilidadDeInterrogación: unNivel
	
	nivelDeInterrogación _ unNivel.! !


!Detective methodsFor: 'private-name' stamp: 'A.G 7/8/2022 21:12:41'!
printOn: aStream 
	aStream nextPutAll:'Detective'.
	aStream space.
	aStream nextPutAll:(self tipoDeDetective).
	aStream space.
	aStream nextPutAll:'Ubicado en:'.
	aStream space.
	aStream nextPutAll:(ubicación printString).
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Detective class' category: 'TrabajoFinal-Grupo-AS'!
Detective class
	instanceVariableNames: ''!

!Detective class methodsFor: 'instance creation' stamp: 'A.D 6/29/2022 16:19:30'!
conHabilidadDeInterrogación: unNivel
	
	^ self new initializeConHabilidadDeInterrogación: unNivel.! !


!classDefinition: #DetectiveClasico category: 'TrabajoFinal-Grupo-AS'!
Detective subclass: #DetectiveClasico
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!DetectiveClasico methodsFor: 'accessing' stamp: 'SA 6/19/2022 12:02:16'!
duraciónDeInterrogaciónA: unTestigo

	^ 2*hour.! !

!DetectiveClasico methodsFor: 'accessing' stamp: 'A.G 7/8/2022 21:03:56'!
tipoDeDetective
	^ 'Clasico'.! !


!classDefinition: #DetectiveDeInterpol category: 'TrabajoFinal-Grupo-AS'!
Detective subclass: #DetectiveDeInterpol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!DetectiveDeInterpol methodsFor: 'accessing' stamp: 'SA 6/19/2022 12:01:52'!
duraciónDeInterrogaciónA: unTestigo

	^ ((unTestigo dificultadDeInterrogación) div: nivelDeInterrogación)*hour.! !

!DetectiveDeInterpol methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:07:50'!
duraciónDeViajeCuandoEsLimitrofeConDestino: paísDestino enPartida: unaPartida 

	 ^ (unaPartida duraciónDeViajeCuandoEsLimítrofeYEsDeInterpolConDestino: paísDestino)! !

!DetectiveDeInterpol methodsFor: 'accessing' stamp: 'A.G 7/8/2022 21:12:28'!
tipoDeDetective
	^ 'De Interpol'.! !


!classDefinition: #DetectivePersuasivo category: 'TrabajoFinal-Grupo-AS'!
Detective subclass: #DetectivePersuasivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!DetectivePersuasivo methodsFor: 'accessing' stamp: 'SA 7/8/2022 03:56:49'!
averiguarPistasDe: unTestigo

	2 timesRepeat: [pda registrarPista: (unTestigo unaPista)].! !

!DetectivePersuasivo methodsFor: 'accessing' stamp: 'SA 6/19/2022 12:02:09'!
duraciónDeInterrogaciónA: unTestigo

	^ 1*hour.! !

!DetectivePersuasivo methodsFor: 'accessing' stamp: 'A.G 7/8/2022 21:04:24'!
tipoDeDetective
	^ 'Persuasivo'.! !


!classDefinition: #EscritorDeArchivos category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #EscritorDeArchivos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!EscritorDeArchivos methodsFor: 'action' stamp: 'SA 7/7/2022 21:47:37'!
detallesDeLaPartida: unaPartida enStream: unStream

	unStream nextPutAll: 'Objeto robado: '. 									unStream nextPutAll: (unaPartida objetoDeValorDelPaísRobado).										unStream newLine.
		unStream nextPutAll: 'Ruta del ladrón: '.									(unaPartida rutaDeEscapeDelLadrón) do: [:pais | unStream nextPutAll: (pais nombre). unStream nextPutAll: ', ']. unStream newLine.
		unStream nextPutAll: 'Tiempo restante: '.									unStream nextPutAll: (unaPartida tiempoRestante)printString! !

!EscritorDeArchivos methodsFor: 'action' stamp: 'SA 7/7/2022 21:45:56'!
detallesDelLadrónDePartida: unaPartida enStream: unStream

	unStream nextPutAll: 'Nombre: '. 									unStream nextPutAll: (unaPartida nombreDelLadrón). 								unStream newLine.
		unStream nextPutAll: 'Color de ojos: '.									unStream nextPutAll: (unaPartida colorDeOjosDelLarón). 								unStream newLine.
		unStream nextPutAll: 'Color de cabello: '.									unStream nextPutAll: (unaPartida colorDeCabelloDelLarón). 								unStream newLine.
		unStream nextPutAll: 'Forma de cabello: '.									unStream nextPutAll: (unaPartida formaDeCabelloDelLadrón). 								unStream newLine! !

!EscritorDeArchivos methodsFor: 'action' stamp: 'SA 7/7/2022 21:47:23'!
escribirEn: unArchivo poniendoTítulo: unString para: unaPartida

	unArchivo forceWriteStreamDo: [:unStream |
		unStream nextPutAll: unString.									unStream newLine.
		unStream newLine.
		unStream nextPutAll: 'Detalles del ladrón'.									unStream newLine.
		self detallesDelLadrónDePartida: unaPartida enStream: unStream.
		unStream newLine.
		unStream nextPutAll: 'Detalles de la partida'.									unStream newLine.
		self detallesDeLaPartida: unaPartida enStream: unStream.
	].! !


!classDefinition: #Limítrofe category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Limítrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Limítrofe methodsFor: 'action' stamp: 'SA 7/8/2022 04:17:22'!
descontarHorasDeViajePara: unaPartida

 	^ self subclassResponsibility.! !


!Limítrofe methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:17:02'!
duraciónDeViajeDesde: paísOrigen Hasta: paísDestino para: unaPartida

	^ self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Limítrofe class' category: 'TrabajoFinal-Grupo-AS'!
Limítrofe class
	instanceVariableNames: ''!

!Limítrofe class methodsFor: 'action' stamp: 'SA 6/17/2022 16:26:48'!
estadoDeLimitrofesDe: paisOrigen para: paísDestino 
	^ (self allSubclasses detect:[:unaClase | unaClase elPais: paisOrigen esLimitrofeCon: paísDestino])new.! !


!classDefinition: #EsLimitrofe category: 'TrabajoFinal-Grupo-AS'!
Limítrofe subclass: #EsLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!EsLimitrofe methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:08:19'!
duraciónDeViajeDelDetectiveHasta: paísDestino para: unaPartida

	^ unaPartida duraciónDeViajeCuandoEsLimítrofeConDestino: paísDestino.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EsLimitrofe class' category: 'TrabajoFinal-Grupo-AS'!
EsLimitrofe class
	instanceVariableNames: ''!

!EsLimitrofe class methodsFor: 'testing' stamp: 'AD 6/13/2022 20:20:24'!
elPais: unPaisDeOrigen esLimitrofeCon: unPaisAViajar 
	^ (unPaisDeOrigen esLimitrofeCon: unPaisAViajar).! !


!classDefinition: #NoEsLimitrofe category: 'TrabajoFinal-Grupo-AS'!
Limítrofe subclass: #NoEsLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!NoEsLimitrofe methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:17:49'!
duraciónDeViajeDelDetectiveHasta: paísDestino para: unaPartida

	^ unaPartida duraciónDeViajeCuandoNoEsLimítrofeConDestino: paísDestino.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoEsLimitrofe class' category: 'TrabajoFinal-Grupo-AS'!
NoEsLimitrofe class
	instanceVariableNames: ''!

!NoEsLimitrofe class methodsFor: 'testing' stamp: 'A.G 7/8/2022 12:33:57'!
elPais: unPaisOrigen esLimitrofeCon: unPaisAViajar 
	 ^ (unPaisOrigen esLimitrofeCon: unPaisAViajar)not.! !


!classDefinition: #PDA category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #PDA
	instanceVariableNames: 'pistas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!PDA methodsFor: 'action' stamp: 'SA 7/8/2022 04:18:28'!
filtrarSospechososPara: unaPartida

	| sospechososFiltrados |	
	sospechososFiltrados _ self sospechosos: (unaPartida sospechosos) segúnPistas: (self pistasDeCaracterísticas).
	
	unaPartida filtradoDeSospechososPorPDA: sospechososFiltrados.! !

!PDA methodsFor: 'action' stamp: 'SA 7/8/2022 04:19:29'!
registrarPista: unaPista

	pistas add: unaPista.! !


!PDA methodsFor: 'initialization' stamp: 'A.G 7/6/2022 09:47:52'!
initialize
	pistas _ Set new.! !


!PDA methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:18:07'!
cantidadDePistas

	^ pistas size.! !

!PDA methodsFor: 'accessing' stamp: 'A.G 7/6/2022 09:53:24'!
pistasDeCaracterísticas

	^ pistas select: [:unPista | unPista esPistaDeCaracterística].! !

!PDA methodsFor: 'accessing' stamp: 'SA 7/7/2022 18:59:08'!
próximoDestinoSegúnPistas

	| pista destino | 
	pista _ (pistas detect: [:unaPista | unaPista esPistaDePróximoDestino]).
	destino _ pista próximoDestino.

	^ destino.! !

!PDA methodsFor: 'accessing' stamp: 'SA 7/7/2022 18:53:57'!
sospechosos: unosSospechosos segúnPistas: unasPistas
	
	^ unosSospechosos select: [: unSospechoso | unSospechoso coincideConCaracterísticas: unasPistas].! !


!PDA methodsFor: 'testing' stamp: 'SA 7/8/2022 04:19:44'!
tieneLaPista: unaPista

	^ pistas includes: unaPista.! !


!PDA methodsFor: 'private-name' stamp: 'A.G 7/8/2022 21:02:36'!
printOn: aStream 
	aStream nextPutAll:'Personal Digital Assistant'.! !


!classDefinition: #País category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #País
	instanceVariableNames: 'demoraPorMigración testigos paísesLimítrofes nombre objetoDeValor esPaísDelRobo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!País methodsFor: 'initialization' stamp: 'SA 7/8/2022 04:22:24'!
asignarPaísesLimítrofes: unosPaíses

	paísesLimítrofes _ unosPaíses.! !

!País methodsFor: 'initialization' stamp: 'SA 7/5/2022 14:53:16'!
asignarTestigos: unosTestigos

	testigos _ unosTestigos.! !

!País methodsFor: 'initialization' stamp: 'SA 7/5/2022 14:50:03'!
asumirRolDePaísDelRobo

	esPaísDelRobo _ true.! !

!País methodsFor: 'initialization' stamp: 'SA 7/5/2022 14:48:21'!
initialize
	
	esPaísDelRobo _ false! !

!País methodsFor: 'initialization' stamp: 'SA 6/22/2022 17:13:08'!
initializeConNombre: unNombre demoraPorMigración: unTiempo yObjetoDeValor: unObjetoDeValor 
	
	nombre _ unNombre.
	demoraPorMigración _ unTiempo.
	objetoDeValor _ unObjetoDeValor.! !


!País methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:54:07'!
demoraPorMigracion

	^ demoraPorMigración.! !

!País methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:54:10'!
nombre

	^ nombre.! !

!País methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:54:13'!
objetoDeValor

	^ objetoDeValor.! !

!País methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:22:33'!
paísesLimítrofes

	^ paísesLimítrofes.! !

!País methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:54:22'!
testigos

	^ testigos.! !


!País methodsFor: 'testing' stamp: 'SA 7/8/2022 04:22:24'!
esLimitrofeCon: unPais

	^ paísesLimítrofes includes: unPais.! !

!País methodsFor: 'testing' stamp: 'SA 7/5/2022 14:54:52'!
esPaísDelRobo

	^ esPaísDelRobo.! !

!País methodsFor: 'testing' stamp: 'SA 7/5/2022 14:54:40'!
tieneNombre: unNombre

	^ nombre = unNombre.! !


!País methodsFor: 'private-name' stamp: 'A.G 7/8/2022 20:32:05'!
printOn: aStream 
	aStream nextPutAll: (self nombre).! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'País class' category: 'TrabajoFinal-Grupo-AS'!
País class
	instanceVariableNames: ''!

!País class methodsFor: 'instanceCreation' stamp: 'SA 6/22/2022 17:12:17'!
conNombre: unNombre demoraPorMigración: unTiempo yObjetoDeValor: unObjetoDeValor
	
	^ self new initializeConNombre: unNombre demoraPorMigración: unTiempo yObjetoDeValor: unObjetoDeValor! !


!classDefinition: #Pista category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Pista
	instanceVariableNames: 'descripción'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Pista methodsFor: 'testing' stamp: 'SA 7/8/2022 04:26:57'!
esPistaDeCaracterística

	^ false.! !

!Pista methodsFor: 'testing' stamp: 'SA 7/8/2022 04:27:11'!
esPistaDeInformación

	^ (self esPistaDeCaracterística) | (self esPistaDePróximoDestino).! !

!Pista methodsFor: 'testing' stamp: 'SA 7/8/2022 04:27:17'!
esPistaDePróximoDestino

	^ false.! !

!Pista methodsFor: 'testing' stamp: 'SA 7/8/2022 04:27:23'!
esPistaSinInformación

	^ false.! !


!classDefinition: #PistaDeCaracterística category: 'TrabajoFinal-Grupo-AS'!
Pista subclass: #PistaDeCaracterística
	instanceVariableNames: 'característica'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!PistaDeCaracterística methodsFor: 'initialization' stamp: 'SA 6/21/2022 01:31:13'!
initializeConCaracterística: unaCaracterística yDescripción: unaDescripción 
	
	característica _ unaCaracterística.
	descripción _ unaDescripción.! !


!PistaDeCaracterística methodsFor: 'testing' stamp: 'SA 7/8/2022 04:27:31'!
esCaracterísticaDe: unLadrón

	^ unLadrón tieneCaracterística: característica.! !

!PistaDeCaracterística methodsFor: 'testing' stamp: 'SA 7/8/2022 04:27:41'!
esPistaDeCaracterística

	^ true.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PistaDeCaracterística class' category: 'TrabajoFinal-Grupo-AS'!
PistaDeCaracterística class
	instanceVariableNames: ''!

!PistaDeCaracterística class methodsFor: 'instance creation' stamp: 'SA 6/21/2022 01:30:55'!
conCaracterística: unaCaracterística yDescripción: unaDescripción
	
	^ self new initializeConCaracterística: unaCaracterística yDescripción: unaDescripción.! !


!classDefinition: #PistaDePróximoDestino category: 'TrabajoFinal-Grupo-AS'!
Pista subclass: #PistaDePróximoDestino
	instanceVariableNames: 'próximoDestino'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!PistaDePróximoDestino methodsFor: 'testing' stamp: 'SA 7/8/2022 04:27:48'!
esPistaDePróximoDestino

	^ true.! !

!PistaDePróximoDestino methodsFor: 'testing' stamp: 'SA 7/8/2022 04:27:52'!
próximoDestino

	^ próximoDestino.! !


!PistaDePróximoDestino methodsFor: 'initialization' stamp: 'SA 7/8/2022 04:28:18'!
initializeConPróximoDestino: unPaís yDescripción: unaDescripción 
	
	próximoDestino _ unPaís.
	descripción _ unaDescripción.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PistaDePróximoDestino class' category: 'TrabajoFinal-Grupo-AS'!
PistaDePróximoDestino class
	instanceVariableNames: ''!

!PistaDePróximoDestino class methodsFor: 'instance creation' stamp: 'SA 6/22/2022 15:56:08'!
conPróximoDestino: unPais yDescripción: unaDescripción
	
	^ self new initializeConPróximoDestino: unPais yDescripción: unaDescripción! !


!classDefinition: #PistaSinInformación category: 'TrabajoFinal-Grupo-AS'!
Pista subclass: #PistaSinInformación
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!PistaSinInformación methodsFor: 'accesing' stamp: 'SA 7/8/2022 04:29:01'!
esPistaSinInformación

	^ true.! !


!PistaSinInformación methodsFor: 'initialization' stamp: 'SA 7/5/2022 23:02:18'!
initialize

	descripción _ 'No tengo información'! !


!classDefinition: #Reloj category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Reloj
	instanceVariableNames: 'tiempo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Reloj methodsFor: 'initialization' stamp: 'SA 7/8/2022 04:29:56'!
asignarUnTiempoRestante: unTiempoRestante

	tiempo _ unTiempoRestante.! !

!Reloj methodsFor: 'initialization' stamp: 'A.G 7/6/2022 11:08:46'!
initializeConTiempoRestante: unTiempo 
	
	tiempo _ unTiempo.! !


!Reloj methodsFor: 'accessing' stamp: 'A.G 7/6/2022 14:47:27'!
estadoDelTiempoCon: unTiempo 
	^ Tiempo estadoDeTiempoCon: unTiempo para: self.! !

!Reloj methodsFor: 'accessing' stamp: 'A.G 7/6/2022 11:09:11'!
tiempoRestante
	^ tiempo.! !


!Reloj methodsFor: 'action' stamp: 'A.G 7/6/2022 11:12:26'!
reducirTiempoEn: tiempoAReducir 
	tiempo _ (tiempo - tiempoAReducir)max:(0*hour).! !


!Reloj methodsFor: 'testing' stamp: 'A.G 7/6/2022 14:54:59'!
tieneTiempoDisponiblePara: unTiempo 
	^ (tiempo > unTiempo).! !


!Reloj methodsFor: 'private-name' stamp: 'A.G 7/8/2022 21:02:26'!
printOn: aStream 
	aStream nextPutAll:'Tiempo Restante:'.
	aStream space.
	aStream nextPutAll:((self tiempoRestante)printString).
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Reloj class' category: 'TrabajoFinal-Grupo-AS'!
Reloj class
	instanceVariableNames: ''!

!Reloj class methodsFor: 'instance creation' stamp: 'A.G 7/6/2022 11:08:32'!
conTiempoRestante: unTiempo 
	
	^self new initializeConTiempoRestante: unTiempo.! !


!classDefinition: #ResultadoDePartida category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #ResultadoDePartida
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!ResultadoDePartida methodsFor: 'accessing' stamp: 'A.G 7/6/2022 10:45:02'!
emitirUnaOrdenDeArrestoParaPartida: unaPartida 
	^ self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ResultadoDePartida class' category: 'TrabajoFinal-Grupo-AS'!
ResultadoDePartida class
	instanceVariableNames: ''!

!ResultadoDePartida class methodsFor: 'testing' stamp: 'A.G 6/21/2022 23:42:47'!
resultadoDeArrestarA: unSospechoso 
	^ (self allSubclasses detect:[:unaClase | unaClase puedeDecidirPor:unSospechoso])new.! !


!classDefinition: #PartidaGanada category: 'TrabajoFinal-Grupo-AS'!
ResultadoDePartida subclass: #PartidaGanada
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!PartidaGanada methodsFor: 'action' stamp: 'SA 7/8/2022 04:34:31'!
imprimirArchivo: unArchivo para: unaPartida
	
	| escritor |
	escritor _ EscritorDeArchivos new.
	
	escritor escribirEn: unArchivo poniendoTítulo: 'VICTORY' para: unaPartida.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PartidaGanada class' category: 'TrabajoFinal-Grupo-AS'!
PartidaGanada class
	instanceVariableNames: ''!

!PartidaGanada class methodsFor: 'testing' stamp: 'SA 7/5/2022 14:22:08'!
puedeDecidirPor: unSospechoso 
	^ (unSospechoso esLadrón)! !


!classDefinition: #PartidaPerdida category: 'TrabajoFinal-Grupo-AS'!
ResultadoDePartida subclass: #PartidaPerdida
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!PartidaPerdida methodsFor: 'action' stamp: 'SA 7/8/2022 04:34:41'!
imprimirArchivo: unArchivo para: unaPartida
	
	| escritor |
	escritor _ EscritorDeArchivos new.
	
	escritor escribirEn: unArchivo poniendoTítulo: 'GAME OVER' para: unaPartida.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PartidaPerdida class' category: 'TrabajoFinal-Grupo-AS'!
PartidaPerdida class
	instanceVariableNames: ''!

!PartidaPerdida class methodsFor: 'testing' stamp: 'A.G 7/8/2022 12:33:46'!
puedeDecidirPor: unSospechoso 
	^ (unSospechoso esLadrón)not.! !


!classDefinition: #Sospechoso category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Sospechoso
	instanceVariableNames: 'nombre colorDeOjos formaDeCabello colorDeCabello esLadrón'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Sospechoso methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:19:26'!
colorDeCabello

	^ colorDeCabello.! !

!Sospechoso methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:19:22'!
colorDeOjos

	^ colorDeOjos.! !

!Sospechoso methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:22:55'!
formaDeCabello

	^ formaDeCabello.! !

!Sospechoso methodsFor: 'accessing' stamp: 'SA 7/5/2022 14:18:55'!
nombre

	^ nombre.! !


!Sospechoso methodsFor: 'initialization' stamp: 'SA 7/5/2022 14:22:47'!
asumirRolDeLadrón
	
	esLadrón _ true.! !

!Sospechoso methodsFor: 'initialization' stamp: 'SA 7/5/2022 14:39:03'!
initialize
	
	esLadrón _ false.! !

!Sospechoso methodsFor: 'initialization' stamp: 'SA 7/5/2022 14:39:16'!
initializeConNombre: unNombre colorDeOjos: unColorDeOjos formaDeCabello: unaFormaDeCabello colorDeCabello: unColorDeCabello 
	
	nombre _ unNombre.
	colorDeOjos _ unColorDeOjos.
	formaDeCabello _ unaFormaDeCabello.
	colorDeCabello _ unColorDeCabello.! !


!Sospechoso methodsFor: 'testing' stamp: 'SA 7/5/2022 14:22:29'!
coincideConCaracterísticas: unasCaracterísticas

	^ unasCaracterísticas allSatisfy: [:unaCaracterística | unaCaracterística esCaracterísticaDe: self].! !

!Sospechoso methodsFor: 'testing' stamp: 'SA 7/5/2022 14:22:07'!
esLadrón

	^ esLadrón.! !

!Sospechoso methodsFor: 'testing' stamp: 'SA 7/5/2022 14:26:40'!
tieneCaracterística: unaCaracterística

	^ (self colorDeCabello = unaCaracterística) | (self colorDeOjos = unaCaracterística) | (self formaDeCabello = unaCaracterística).! !

!Sospechoso methodsFor: 'testing' stamp: 'SA 7/5/2022 14:18:51'!
tieneNombre: unNombre
	
	^ nombre = unNombre.! !


!Sospechoso methodsFor: 'private-name' stamp: 'A.G 7/8/2022 21:00:58'!
printOn: aStream 
	aStream nextPutAll:(self nombre).
	aStream space.
	aStream nextPutAll:'es ladron:'.
	aStream space.
	aStream nextPutAll: ((self esLadrón) printString).! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Sospechoso class' category: 'TrabajoFinal-Grupo-AS'!
Sospechoso class
	instanceVariableNames: ''!

!Sospechoso class methodsFor: 'instance creation' stamp: 'SA 7/5/2022 14:37:48'!
conNombre: unNombre colorDeOjos: unColorDeOjos formaDeCabello: unaFormaDeCabello colorDeCabello: unColorDeCabello
	
	^ self new initializeConNombre: unNombre colorDeOjos: unColorDeOjos formaDeCabello: unaFormaDeCabello colorDeCabello: unColorDeCabello.! !


!classDefinition: #Testigo category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Testigo
	instanceVariableNames: 'pistas dificultadDeInterrogación pistaSinInformación'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Testigo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:35:58'!
cantidadDePistas

	^ pistas size.! !

!Testigo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:36:09'!
dificultadDeInterrogación

	^ dificultadDeInterrogación.! !

!Testigo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:36:35'!
iniciarPistaSinInformación

	| pistaSinInformacíonAObtener |
	pistaSinInformacíonAObtener _ pistas detect: [:pista | pista esPistaSinInformación].
	
	pistaSinInformación _ pistaSinInformacíonAObtener.! !

!Testigo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:37:26'!
pistas

	^ pistas.! !

!Testigo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:37:37'!
pistasConInformación

	^ pistas select: [:pista | pista esPistaDeInformación].
	
	! !

!Testigo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:38:04'!
unaPista

	| pista |	
	pista _ (self últimaPista).
	
	pistas 	remove: pista ifAbsent: pistas.
	
	^ pista.
	    ! !

!Testigo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:38:20'!
últimaPista
	
	^ (self pistasConInformación) lastIfEmpty: [pistaSinInformación].! !


!Testigo methodsFor: 'initialization' stamp: 'A.G 7/6/2022 08:51:31'!
initializeConDificultadDeInterrogación: unaDificultadDeinterrogacion conPistas: unasPistas 

	dificultadDeInterrogación _ unaDificultadDeinterrogacion.
	pistas _ unasPistas.
	
	(self iniciarPistaSinInformación).
	! !


!Testigo methodsFor: 'testing' stamp: 'SA 7/8/2022 04:39:12'!
tienePistas

	^ pistas notEmpty.! !


!Testigo methodsFor: 'private-name' stamp: 'A.G 7/8/2022 21:02:49'!
printOn: aStream 
	aStream nextPutAll:'Testigo'.
	aStream space.
	aStream nextPutAll:'con difucultad:'.
	aStream space.
	aStream nextPutAll:((self dificultadDeInterrogación)printString).! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Testigo class' category: 'TrabajoFinal-Grupo-AS'!
Testigo class
	instanceVariableNames: ''!

!Testigo class methodsFor: 'instance creation' stamp: 'A.G 7/6/2022 08:13:42'!
conDificultadDeInterrogación: unaDificultadDeinterrogacion conPistas: unasPistas 

	^self new initializeConDificultadDeInterrogación: unaDificultadDeinterrogacion conPistas: unasPistas ! !


!classDefinition: #Tiempo category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #Tiempo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!Tiempo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:39:30'!
interrogarA: unTestigo conDuración: unTiempo enPartida: unaPartida

	^ self subclassResponsibility.! !

!Tiempo methodsFor: 'accessing' stamp: 'SA 7/8/2022 04:39:34'!
viajarHacia: unPaisDestino enPartida: unaPartida

	^ self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Tiempo class' category: 'TrabajoFinal-Grupo-AS'!
Tiempo class
	instanceVariableNames: ''!

!Tiempo class methodsFor: 'action' stamp: 'SA 7/8/2022 04:39:50'!
estadoDeTiempoCon: unTiempo para: unReloj

	^ (self allSubclasses detect: [:unaClase | unaClase tieneTiempoDisponiblePara: unTiempo para: unReloj])new.! !


!classDefinition: #TiempoAgotado category: 'TrabajoFinal-Grupo-AS'!
Tiempo subclass: #TiempoAgotado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!TiempoAgotado methodsFor: 'action' stamp: 'SA 7/8/2022 04:43:27'!
interrogarA: unTestigo conDuracion: unTiempo para: unaPartida

	 unaPartida perderPorFaltaDeTiempo.
	! !

!TiempoAgotado methodsFor: 'action' stamp: 'SA 7/8/2022 04:43:15'!
viajarHacia: unPaisDestino enPartida: unaPartida

	 unaPartida perderPorFaltaDeTiempo.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TiempoAgotado class' category: 'TrabajoFinal-Grupo-AS'!
TiempoAgotado class
	instanceVariableNames: ''!

!TiempoAgotado class methodsFor: 'testing' stamp: 'SA 7/8/2022 04:40:27'!
tieneTiempoDisponiblePara: unTiempo para: unReloj

	^ (unReloj tieneTiempoDisponiblePara: unTiempo)not.! !


!classDefinition: #TiempoDisponible category: 'TrabajoFinal-Grupo-AS'!
Tiempo subclass: #TiempoDisponible
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!TiempoDisponible methodsFor: 'action' stamp: 'A.G 7/7/2022 23:15:03'!
interrogarA: unTestigo conDuracion: unTiempo para: unaPartida 
	unaPartida hacerInterrogarAlDetectiveCuandoTieneTiempoDisponibleA: unTestigo conDuracion:unTiempo.
	! !

!TiempoDisponible methodsFor: 'action' stamp: 'A.G 6/17/2022 23:12:09'!
viajarHacia: unPaisDestino enPartida: unaPartida 
	unaPartida viajarCuandoTieneTiempoHacia: unPaisDestino.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TiempoDisponible class' category: 'TrabajoFinal-Grupo-AS'!
TiempoDisponible class
	instanceVariableNames: ''!

!TiempoDisponible class methodsFor: 'testing' stamp: 'SA 7/8/2022 04:40:40'!
tieneTiempoDisponiblePara: unTiempo para: unReloj

	^ unReloj tieneTiempoDisponiblePara: unTiempo.! !


!classDefinition: #UnicidadDeSospechosos category: 'TrabajoFinal-Grupo-AS'!
Object subclass: #UnicidadDeSospechosos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!UnicidadDeSospechosos methodsFor: 'action' stamp: 'A.G 7/6/2022 10:43:35'!
realizarOrdenDeArrestoPorElDetective: unDetective enPartida: unaPartida
	^ self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'UnicidadDeSospechosos class' category: 'TrabajoFinal-Grupo-AS'!
UnicidadDeSospechosos class
	instanceVariableNames: ''!

!UnicidadDeSospechosos class methodsFor: 'action' stamp: 'SA 7/8/2022 04:41:16'!
estadoDeUnicidadPara: unaPartida

	^ (self allSubclasses detect: [:unaClase | unaClase hayUnSoloSospechosoEnPartida: unaPartida])new.! !


!classDefinition: #HayUnicidadDeSospechoso category: 'TrabajoFinal-Grupo-AS'!
UnicidadDeSospechosos subclass: #HayUnicidadDeSospechoso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!HayUnicidadDeSospechoso methodsFor: 'action' stamp: 'A.G 7/8/2022 11:55:55'!
realizarOrdenDeArrestoPara: unaPartida conArchivo: unArchivo 
	unaPartida hacerOrdenDeArrestoCuandoHayUnicidadDeSospechosoA: (unaPartida unSospechoso) enArchivo: unArchivo.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'HayUnicidadDeSospechoso class' category: 'TrabajoFinal-Grupo-AS'!
HayUnicidadDeSospechoso class
	instanceVariableNames: ''!

!HayUnicidadDeSospechoso class methodsFor: 'testing' stamp: 'SA 7/8/2022 04:41:26'!
hayUnSoloSospechosoEnPartida: unaPartida

	^ unaPartida haySospechosoÚnico.! !


!classDefinition: #NoHayUnicidadDeSospechoso category: 'TrabajoFinal-Grupo-AS'!
UnicidadDeSospechosos subclass: #NoHayUnicidadDeSospechoso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Grupo-AS'!

!NoHayUnicidadDeSospechoso methodsFor: 'action' stamp: 'A.G 7/8/2022 12:51:42'!
realizarOrdenDeArrestoPara: unaPartida conArchivo: unArchivo 
	unaPartida noHacerOrdenDeArrestoCuandoNoHayUnicidadDeSospechoso.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoHayUnicidadDeSospechoso class' category: 'TrabajoFinal-Grupo-AS'!
NoHayUnicidadDeSospechoso class
	instanceVariableNames: ''!

!NoHayUnicidadDeSospechoso class methodsFor: 'testing' stamp: 'A.G 7/8/2022 12:33:30'!
hayUnSoloSospechosoEnPartida: unaPartida

	^ (unaPartida haySospechosoÚnico)not.! !
