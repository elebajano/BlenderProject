# Progetto FCG - modellazione di un edificio
## 1. Modellazione della base dell'edificio
La forma base dell'edificio é stata modellata partendo da un cubo. Dopo aver spostato la mesh sull'asse z di un metro, in modo che sia posizionato sullo zero rispetto a questo, ne sono state cambiate le dimensioni tramite lo strumento *Grab*. Le parti sporgenti sono invece state estruse. 

Per migliorare la precisione, e rendere la procedura piú semplice, ho attivato sotto il menu *Mesh edit mode overlays* l'opzione edge length, in modo da avere sotto controllo le misure della parte di mesh selezionata.
![1_base_edificio](ImgRepo/1/1_base_edificio.png)

## 2. Modellazione base del tetto
La seconda parte è composta da quattro mesh separate: tre per il tetto e una per il camino. Per tutte e quattro le parti la figura di partenza é il cubo, che é stato inserito tramite il comando *shift A* e in seguito posizionato sopra la mesh giá modellata al punto [1].

Il secondo e terzo tetto, contando da sinistra, sono stati modellati allo steso modo della base dell'edificio, creando poi i lati inclinati spostando, sempre con lo strumento *Grab*, non tutta la faccia ma solamente lo spigolo desiderato. Il tetto rimanente ed il camino hanno invece richiesto un po' di lavoro in piú:
- Il tetto doveva essere intersecato con due forme, il secondo tetto e la base dell'edificio. Inizialmente ho applicato il modifier booleano, con l'intenzione di applicare una sottrazione di forme, ma essendo applicabile a due sole mesh, e non volendo unire il tetto all'edificio, ho optato per una divisione, seppur un poco più grezza, manuale. Questa é stata eseguita tramite *LoopCut* e la modifica delle forme tramite strumento *Grab* applicato agli spigoli. ![tetto_dettaglio](ImgRepo/2/2_base_tetto_dettaglio.png)
- Similmente il camino, che è stato ritagliato utilizzando il *LoopCut* e il *Join*, per poi elimiare le facce eccedenti, in modo da non creare una sovrapposizione di forme. ![tetto_dettaglio_camino](ImgRepo/2/2_base_tetto_dettaglio_camino.png)

Il risultato finale é quindi il seguente:
![tetto](ImgRepo/2/2_base_tetto.png)

## 3. Dettagli dell'edificio
Data la maggiore quantitá di dettagli, e quindi *LoopCut*, da aggiungere, questa terza fase é stata suddivisa in piú sottosezioni. 

La mesh dell'edificio modellata al punto [1] é stata divisa in due parti, in modo da avere separati piano terra e primo piano. Per eseguire questa operazione é bastato selezionare le faccie di quello che sará il primo piano e separarle con il comando *p*. Utilizzando poi il focus (*/*) sono andata a lavorare sulle due sottosezioni separatamente. 

### 3.1 Dettagli piano terra
In questa prima parte era chiaro che i *LoopCut* inseriti al punto [1] sulla mesh non sarebbero andati bene, anche perché erano stati eseguiti per avere le suddivisioni di entrambi i piani, creando un piano di lavoro parecchio confusivo. Tramite la selezione multipla (tenendo premuto *shift*) e la selezione di *LoopCut* (*alt* piú right click del mouse nella modalitá selezione spigoli) sono stati quindi cancellati utilizzando il comando *ctrl x*.

Avendo ora una mesh pulita sono stati eseguiti dei nuovi *LoopCut*, questa volta concentrandosi solo su quelli necessari per il piano terra, e dove saranno posizionate porte e finestre é stata eseguita un'estrusione.

Per rendere i volumi meglio visibili anche in object mode la *cavity* nel menu *Viewport shading* é stata spuntata e selezionata su "entrambi". Gli ultimi dettagli aggiunti in questa fase ed estrusi sono le assi di legno sporgenti che separano i due piani.
Edit mode | Object mode
:-------------------------:|:-------------------------:
![3_dettagli_edificio_1](ImgRepo/3/3_dettagli_edificio_1.png) | ![3_dettagli_edificio_2](ImgRepo/3/3_dettagli_edificio_2.png)

### 3.2 Dettagli primo piano
Sono state eseguite pressoché le stesse operazioni iniziali della parte [3.1] per quanto riguarda i *LoopCut* e le estrusioni delle finestre. Ció che ha richiesto piú lavoro é stata la modellazione delle assi di legno, in particolar modo quelle posizionate in orizzontale. In un primo momento il comando *Bevel*, giá utilizzato per qualche asse verticale, era sembrata una buona soluzione, ma questo creava degli artefatti agi estremi dell'asse. Ho trovato un buon compromesso aggiungendo manualmente degli ulteriori *LoopCut* per ottenere dove necessario dei nuovi vertici, collegandoli poi in maniera appropriata tramite il comando *Join*. A questo punto eseguire le estrusioni ha completato il lavoro.
Edit mode | Object mode
:-------------------------:|:-------------------------:
![3_dettagli_edificio_3](ImgRepo/3/3_dettagli_edificio_3.png) | ![3_dettagli_edificio_4](ImgRepo/3/3_dettagli_edificio_4.png)

### 3.3 Dettagli finali
Dopo l'aggiunta di qualche dimenticanza e la correzione di alcuni errori e artifatti l'edificio si presenta cosí:
![3_dettagli_edificio_5](ImgRepo/3/3_dettagli_edificio_5.png)

## 4. Dettagli del tetto
Come per la parte [3], il lavoro é stato suddiviso in sottosezioni. Le tre parti che compongono il tetto erano giá divise in 3 mesh, 4 se contiamo anche quella del camino.

### 4.1 Primo tetto
Dopo essere stato allargato per somigliare di piú all'immagine di riferimento, sono stati estrusi i bordi. Il camino é stato poi modellato, aggiungendo qualche forma e i camini, posizionati come due ottagoni.
Edit mode | Object mode
:-------------------------:|:-------------------------:
![4_dettagli_tetto_1](ImgRepo/4/4_dettagli_tetto_1.png) | ![4_dettagli_tetto_2](ImgRepo/4/4_dettagli_tetto_2.png)

### 4.2 Secondo tetto
Il secondo é stato piú complicato, dato il maggior numero di dettagli da aggiungere sulla parte frontale per comporre il terzo piano, ma con estrusioni, Bevel e qualche collegamento in piú sui vertici é stato ottenuto un buon risultato.
Edit mode | Object mode
:-------------------------:|:-------------------------:
![4_dettagli_tetto_3](ImgRepo/4/4_dettagli_tetto_3.png) | ![4_dettagli_tetto_4](ImgRepo/4/4_dettagli_tetto_4.png)

### 4.3 Terzo tetto
Per il terzo tetto sono state effettuate le stesse operazioni dei due precedenti per quanto riguarda la resize, effettuata tramite selezione e spostamento degli edge, ed estrusione delle parti necessarie. 

Piú difficile é stata la creazione dell'abbaino: dopo aver creato i *LoopCut* necessari per delimitare lo spazio ho estruso le faccie che sarebbero diventate la parte verticale esterna dell'abbaino. Ponendo il cursore sulla parte selezionata e utilizzando il comando *Scale* sull'asse x in modo che arrivi a zero si crea la struttura base desiderata. 

Per realizzare il tetto dell'abbaino sono stati necessari alcuni tentativi, poiché estrudere le faccie, spostare con il comando *g* il lato superiore o procedere ancora una volta per *LoopCut* non ha funzionato. Alla fine ho trovato come soluzione estrudere i singoli vertici e modificarne un po' a misure un po' "a occhio" la posizione, per poi selezionarli a quattro a quattro e creare le faccie con il comando *f*.
Edit mode | Object mode
:-------------------------:|:-------------------------:
![4_dettagli_tetto_5](ImgRepo/4/4_dettagli_tetto_5.png) | ![4_dettagli_tetto_6](ImgRepo/4/4_dettagli_tetto_6.png)

### 4.4 Stato dell'edificio a fine quarta fase
Edit mode | Object mode
:-------------------------:|:-------------------------:
![4_dettagli_tetto_7](ImgRepo/4/4_dettagli_tetto_7.png) | ![4_dettagli_tetto_8](ImgRepo/4/4_dettagli_tetto_8.png)

## 5. Porte e finestre
Porte e finestre sono state realizzate aggiungendo delle nuove mesh, sempre partendo dal cubo. Anche in questo caso il lavoro é stato suddiviso in sottofasi.
### 5.1 Porte e finestre del piano terra
Sono stati ritagliati gli spazi dove inserire le nuove mesh, selezionando le faccie opportune ed eliminandole. ![5_porte_finestre_0](ImgRepo/5/5_porte_finestre_0.png)

In secondo luogo, una alla volta, sono state aggiunte e modelllate le nuove mesh: per far sí che queste venissero posizionate direttamente negli spazi a loro designate, in object mode ho selezionato il piano terra e passando in edit mode l'angolo specifico da cui partire; a questo punto ho spostato il cursore sulla selezione, utilizzando il menu che si presenta al comando *shift s*. Con la posizione corretta impostata sono uscita dall'edit mode e ho deselezionato la mesh, in modo che una volta inserito il nuovo cubo questo non venga collegato al piano terra e possa essere modellato separatamente. Fatto questo é cominciata la modellazione, sfruttando *LoopCut*, estrusioni e il *Grab*.
#### 5.1.1 Piano terra - prima sezione
Sia per la porta che per la finestra, una volta che con il *Grab* la mesh é stata modellata cosí che coprisse lo spazio ritagliato, la superficie é stata suddivisa tramite *LoopCut*. I bordi che definiscono la specchiatura degli infissisono stati estrusi, cosí come le altre superfici che lo necessitavano, come i confini della porta e il davanzale della finestra. Gli esterni della specchiatura sono stati infine modificati tramite il comando *bevel*, in modo da renderli piú realistici.
Edit mode | Object mode
:-------------------------:|:-------------------------:
![5_porte_finestre_1](ImgRepo/5/5_porte_finestre_1.png) | ![5_porte_finestre_2](ImgRepo/5/5_porte_finestre_2.png)

#### 5.1.2 Piano terra - seconda sezione
Anche per questa porta e finestra sono state aggiunte due nuove mesh, posizionate correttamente sfruttando l'ubicazione del cursore, e gli spazi di queste sono stati definiti tramite *LoopCut*. Come prima sono stati estrusi davanzale, bordi delle specchiature degli infissi e qualche dettaglio per la porta. In questo caso é stata aggiunta anche la divisione a metá per le ante della finestra e della la porta: sono stati eseguiti tre *LoopCut*, uno a metá e due molto vicini ai lati, dopo di che in edge mode é stato selezionato il taglio centrale e spostato tramite *Grab* di poco all'interno.

La parte superiore della porta doveva inoltre avere una forma ad arco. Questa é stata ottenuta tramite *Bevel*, dopo non pochi tentativi e fallimenti. Prima di tutto la parte superiore della mesh é stata divisa dalla stessa, in modo da poter agire su questa separatamente. Sono stati quindi cancellati gli edge non necessari, selezionandoli e usando il comando *ctrl x*. Selezioando poi i due edge esterni é stato applicato il *Bevel* e scorrendo con la rotella del mouse é stato aumentato il numero di segmenti.

Edit mode | Object mode
:-------------------------:|:-------------------------:
![5_porte_finestre_3](ImgRepo/5/5_porte_finestre_3.png) | ![5_porte_finestre_4](ImgRepo/5/5_porte_finestre_4.png)

#### 5.1.3 Piano terra - terza sezione
La finestra é stata realizzata allo stesso modo di quella della sezione precedente. Anche per la porta sono state usate le stesse tecniche, *LoopCut* ed estrusioni, ad eccezione della maniglia, per cui é stata inserita una mesh cilindrica, posizinata nel punto designato grazie al cursore. Questa é stata ruotata di 90 gradi e rimpicciolita; una parte é stata estrusa e scalata, in modo da formare il pomello.

Edit mode | Object mode
:-------------------------:|:-------------------------:
![5_porte_finestre_5](ImgRepo/5/5_porte_finestre_5.png) | ![5_porte_finestre_6](ImgRepo/5/5_porte_finestre_6.png)

### 5.2 Finestre del primo piano
Tutte e 6 le finestre del primo piano sono state costruite come quella della sezione [5.1.2]: definizione degli spazi tramite *LoopCut*, estrusione dei margini, *Bevel* delle specchiature degli infissi. Unico comando differente è stato utilizzato per la parte laterale: lo spazio riservato agli infissi in questo caso era uguale, il che mi ha permesso di costruire un'unica finestra, duplicarla, utilizzando il comando *shift d*, e spostarla nella posizione ad essa designata sempre con il *Grab*.
Parte frontale | Parte laterale
:-------------------------:|:-------------------------:
![5_porte_finestre_7](ImgRepo/5/5_porte_finestre_7.png) | ![5_porte_finestre_8](ImgRepo/5/5_porte_finestre_8.png)

## 6. Esterni e dettagli
Terminata la parte strutturale dell'edificio mi sono concentrata su qualche dettaglio di questo e sulle decorazioni esterne.
### 6.1 Decorazioni separatori
Un dettaglio che ho voluto mantenere dalle immagini di riferimento è stato quello delle assi orizzontali che spuntano dai cornicioni in legno che separano i piani. Per modellarle ho semplicemente aggiunto un nuovo cubo, rimpicciolendolo per avere la misura desiderata e posizionandolo all'inizio del cornicione. A questo punto ho applicato il modifier *Array*, modificandone i parametri fino ad ottenere una serie di oggetti, identici all'originale, che arrivasse in fondo all'asse.
. | .
:-------------------------:|:-------------------------:
![6_esterni1](ImgRepo/6/6_esterni1.png) | ![6_esterni2](ImgRepo/6/6_esterni2.png)
### 6.2 Lampione
Per prima cosa è stata modellata l'asse orizzontale che avrebbe dovuto sorreggere il lampione, inserendo sempre un nuovo cubo e ruotandolo con *r*. 

La costruzione dell'armatura è stata più articolata, anche se non troppo complessa: ho aggiunto un cilindro, diminuendone le faccie a 6. Ho poi estruso quelli che sarebbero diventati i due bordi inferiore e superiore. Quest'ultimo è stato selezionato, in edge mode *alt e click del mouse*, e scalato in modo che fosse poco più grande di quello sottostante. I lati della specchiatura sono stati selezionati e modificati tramite *Bevel*, così che fossero più spessi di una semplice riga, per creare una divisione più marcata. 

La parte a punta sopra l'armatura è stata realizzata trovando il centro dell'esagono superiore, unendo i punti opposti tramite join, ed estrudendo in alto quest'ultimo. Le faccie orizzontali sono quindi state cancellate e ne sono state create di nuove selezionando i punti e utilizzando il comanco *Face*. Un'operazione simile è stata effettuata per la parte inferiore, ma questa è stata anche scalata per ridurne le dimensioni.

Molto più complicata è risultata la curva che unisce il braccio orizzontale al lampione. Inizialmente avevo provato a realizzarlo con un altro cilindro, ottenendo un risultato meno che ideale. Con qualche ricerca in più la soluzione più semplice è risultata quella di utilizzare una *BezierCurve*. Spendendo un po' di tempo a modellare la curva, aggiungendo dei nuov segmeni tramite estrusione, ho ottenuto una forma soddisfaciente, che più si avvicina a quella che avevo in mente. Infine, per creare lo spessore, ho inserito un *Bevel Circle*, ridimesionandolo della misura voluta, e sempre sulla curva, sotto *Geometry*, nella parte *Bevel* è stato selezionato quest'ultimo.
Edit mode | Object mode
:-------------------------:|:-------------------------:
![6_esterni3](ImgRepo/6/6_esterni3.png) | ![6_esterni4](ImgRepo/6/6_esterni4.png)
### 6.3 Tavoli e sedie
Di entrambi ne è stato creato uno solo, duplicato e riposizionato allo stesso modo delle finestre al punto [5.2]. Inserendo un nuovo cubo, questo è stato ridimensionato, ne sono stati definiti gli spazi con *LoopCut* e tramite tagli ed estrusioni ne è stata modellata la struttura. Le rientranze e i bordi decorativi sono stati creati tramite scalature e selezione di loop in edge mode e spostamenti.

Edit mode | Object mode
:-------------------------:|:-------------------------:
![6_esterni6](ImgRepo/6/6_esterni6.png) | ![6_esterni7](ImgRepo/6/6_esterni7.png)
![6_esterni8](ImgRepo/6/6_esterni8.png) | ![6_esterni9](ImgRepo/6/6_esterni9.png)

Dopo aver duplicato (*ctrl+D*) il tavolo e la sedia originale, le copie sono state spostate e ruotate di qualche grado, in modo da creare una composizione che possa somigliare a come si presenterebbe l'esterno di un bar.
![6_esterni10](ImgRepo/6/6_esterni10.png)

### 6.4 Cartello esterno
Modellato come in precedenza a partire da un cubo, prima di tutto sono state ridotte le dimensioni tramite *Grab* sulle faccie, poi con il *LoopCut* la mesh é stata tagliata a metá. Temporaneamente separate dal comando *P*, le due metá sono state modellate separatamente, subito dopo aver aggiunto le gambe con l'estrusione di una sezione ritagliata da *LoopCut*. 

Il retro del cartello é stato lasciato pressoché invariato, l'unico cambiamento é stata l'aggiunta di un ulteriore *LoopCut* a pochi centimetri dal bordo superiore per poter ruotare (*R*) la parte inferiore della mesh e creare l'angolo che permette al cartello di stare in piedi.

Le stesse operazioni sono state eseguite sulla parte anteriore, con l'aggiunta, in questo caso, di 4 ulteriori *LoopCut* per creare la superficie poi estrusa verso l'interno che rappresenta la parte in ardesia del cartello.

Edit mode | Object mode
:-------------------------:|:-------------------------:
![6_esterni11](ImgRepo/6/6_esterni11.png) | ![6_esterni12](ImgRepo/6/6_esterni12.png)

## 7. UV unwrapping
Il processo dell'UV unwrapping é stato piuttosto lungo, non tanto per la difficoltá quanto per il numero di elementi da manipolare. Sono state curate 15 mappe in totale: 
- Piano terra
- Primo piano
- I tre tetti
- la decorazione del tetto
- Il camino
- I due lampioni
- Il braccio del primo lampione
- Separatore tra piano terra e primo piano
- Marciapiede
- Il cartello
- Sedie
- Tavoli

Ogni mappa é stata creata sfruttando i *Seam* e il *Smart Uv Project*, entrambi sotto il menu invocato dal comando *U*.

Per prima cosa é stata selezionata la mesh di cui fare l'unwrap e tramite il comando */* le altre sono state nascoste. É stato quindi aperto l'editor uv di fianco alla Viewport tramite il menu in alto a sinistra. Di seguito, dalla Viewport, con la selezione degli edge, sono stati posizionati i *Seam* dove sembrava opportuno "tagliare" la mesh. 

A questo punto, selezionando in Edit mode tutte le faccie con *A*, é stata creata la mappa tramite il comando *Smart Uv Project*. Nella maggior parte dei casi le proiezioni delle faccie sono state riposizionate, ruotate e talvolta scalate in modo da andare a ricoprire la maggiore superficie possibile. Per eseguire queste operazioni sono stati utilizzati i comandi *R* rotate, *S* scale, *G* grab e infine *constrain to image bound*, aggiunto ai preferiti *Q* per un accesso piú veloce.

Nel caso di tavoli e sedie, oggetti identici essendo stati creati tramite duplicazione, é stata curata una singola mappa uv, poi trasferita tramite selezione in Object mode e strumento di link, con il comando *ctrl+L &rarr; Object Data*.

. | .
:-------------------------:|:-------------------------:
![7_uvMap1](ImgRepo/7/7_UVunwrap_floor0.png) | ![7_uvMap2](ImgRepo/7/7_UVunwrap_floor1.png)
![7_uvMap3](ImgRepo/7/7_UVunwrap_roof1.png) | ![7_uvMap4](ImgRepo/7/7_UVunwrap_roof2.png)
![7_uvMap5](ImgRepo/7/7_UVunwrap_roof3.png) | ![7_uvMap6](ImgRepo/7/7_UVunwrap_chimney.png)
![7_uvMap7](ImgRepo/7/7_UVunwrap_roofDec.png) | ![7_uvMap8](ImgRepo/7/7_UVunwrap_separator.png)
![7_uvMap9](ImgRepo/7/7_UVunwrap_light1.png) | ![7_uvMap10](ImgRepo/7/7_UVunwrap_light2.png)
![7_uvMap11](ImgRepo/7/7_UVunwrap_lampHolder.png) | ![7_uvMap12](ImgRepo/7/7_UVunwrap_sidewalk.png)
![7_uvMap13](ImgRepo/7/7_UVunwrap_chair.png) | ![7_uvMap14](ImgRepo/7/7_UVunwrap_table.png)
![7_uvMap15](ImgRepo/7/7_UVunwrap_sign.png) |

## 8. Textures
Terminato l'UV unwrapping l'ultima fase prima della renderizzazione é la creazione e l'applicazione delle texture. La finestra a sinistra é stata cambiata sulla visualizzazione dello *Shader editor*, mentre a destra, dalla visualizzazione *Solid* si é passati a quella *Material preview*. In basso a destra, invece, sono state modificate le impostazioni sotto la scheda *render* in modo che questo venga eseguito con l'impostazione *Cycles*.

É quindi cominciata la creazione delle varie textures da applicare ai materiali: in totale ne sono state realizzate 12.

**Nota**: poco dopo la realizzazione della prima texture, quella del muro, mi sono accorta di alcuni errori presenti sulla mesh:
1. Overlapping di alcune facce, risultando in "macchie" nere
2. Array modifier non applicato alle parti decorative del tetto e separatore prima di unire le mesh

Per correggere questi errori ho dovuto duplicare il file 7_UVunwrap.blend e ripartire dallo step precedente, applicando i modifier in modo da avere l'array completo una volta unite le mesh e aggiustando le parti in overlapping. \
Ho tenuto il vecchio file con gli errori, rinominandolo 0_building_abandoned.blend.

Essendo la prima texture su cui ho lavorato, quella del muro ha richiesto piú ricerca per comprendere il funzionamento dello *Shader editor* di Blender. Sono stati particolarmente di aiuto i [tutorial di Blender per le texture](https://docs.blender.org/manual/en/latest/render/shader_nodes/textures/index.html), qualche articolo trovato online come [questo di Medium](https://medium.com/@samuelsullins/make-this-easy-procedural-wood-material-in-blender-with-just-10-nodes-c94a3f8b54ad) usato in seguito per il legno, e una prima infarinatura tramite [video tutorial](https://www.youtube.com/watch?v=f74DotbFFGc&t=758s) di YouTube. \
Le texture del legno, ardesia, vetro, sedie e tavoli hanno richiesto meno ricerca tecnica perché realizzate in modo simile. \
I nodi piú utilizzati sono stati il *Bump node*, *Noise*, *Color ramp*, *Bevel*, *Mix* e *Mapping e Texture Coordinates*. 

. | .
:-------------------------:|:-------------------------:
![8_muro](ImgRepo/8/8_muro.png) | ![8_legno](ImgRepo/8/8_legno.png)
![8_ardesia](ImgRepo/8/8_ardesia.png) | ![8_tavoli](ImgRepo/8/8_tavoli.png)
![8_sedie-legno](ImgRepo/8/8_sedie-legno.png) | ![8_sedie-pelle](ImgRepo/8/8_sedie-pelle.png)
![8_vetro](ImgRepo/8/8_vetro.png) | 

Per le texture che avrebbero invece richiesto delle immagini di base per risultare piú realistiche, ho optato per la ricerca online, trovando un buon add-on con delle ottime texture gratuite da poter inserire nel mio modello. 

. | .
:-------------------------:|:-------------------------:
![8_marciapiede](ImgRepo/8/8_marciapiede.png) | ![8_mattoni](ImgRepo/8/8_mattoni.png)
![8_metallo](ImgRepo/8/8_metallo.png) | ![8_pietre](ImgRepo/8/8_pietre.png)
![8_tetto](ImgRepo/8/8_tetto.png) |