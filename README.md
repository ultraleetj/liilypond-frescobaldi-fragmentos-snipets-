# English

## purpose and a little background

I am a blind musician. After almost 12 years of using lilypond, starting with university musical work, I finally found that frescobaldi is the best choice for managing, creating and editing lilypond documents. As of 2021, Almost every feature of this program is accessible. I am sharing a personally crafted collection of such snipets in hopes of making coding easier for some commonly needed tasks mainly regarding visual tweaks and common practices used for jazz, lead sheets and popular music notation that might be needed when finalizing or creating a score. The xml file might be downloaded using the table above where the files for this project are located.

### who is this for?

Primarily I aim this to be for other blind people who use lilypond and frescobaldi, as I am a blind coder myself but I am sure just about anyone, blind or not,  can benefit from these as well.

## prerequisites

You will need to have installed lilypond and frescobaldi before being able to  import the xml file that contains the snipets.

## contents and explanation (usage) of each snipet

This project contains an xml file of for now six (6) snipets which can be imported directly into the snipet manager for frescobaldi. All of them will appear in the code fragments (insert menu, accessed by pressing alt plus i in the main window) of frescobaldi, except the template which will appear on the second "new" item on the file menu, effectively as a template. Current snipets are named in Spanish, but I could make a version with English names if desired or needed. These are:

* coda as a rehearsal mark: Puts a coda symbol into a markup text instruction where the edit cursor is currently located. You can substitute the word coda inside the code for segno or any other musical symbol you might need.
* enclose selected text into modern rehearsal mark: This just puts a markup block and a box block around the selected text at the edit cursor. This is done because normally, boxes around letters which indicate a song section such as A, B, and so on are seen more clearly by  sighted musicians.
* Midi importing of melodies for leadsheets: This is a lilypond template. It has the term midi in it because it uses the completion heads engraver, so that notes that run off at the end of the  bar are tied automatically, but unfortunately this does not work well at all. Still, it includes sections for typing in chords, a melody and lyrics so it can be used to create lead sheets on the fly. 
* indicate custom note pulse beaming or grouping: this is just a way to save typing, so that the cursor is placed where you would put the numbers in the parenthesis of the lilypond code, such as 3 2. For example, this grouping is commonly used in Venezuelan Merengue which has a compound five eighths time signature, in which the first pulse has three eighth notes and the second pulse has 2.
* move rehearsal mark: The edit cursor is placed where you would but the numbers. The first number moves a rehearsal mark horizontally with higher numbers being to the right and lower ones being to the left, and the second number moves it vertically, with higher numbers being up and lower numbers being down. This is helpful because lilypond's default placement of a rehearsal mark may collide with chord symbols.
* Repeats with several flexible endings: Normally, a regular, print repeat with more than one ending consists of a line and some dots to start (imagine a bracket and a colon), then the music, and a line and some dots to end (imagine a closing bracket and a colon), and then the rest of the music is enclosed in boxes (known as endings). There are sometimes numbers which can be appended to a note (at the  top and inside the brackets) or the double bars, such as ×3 or ×5 to tell how many times a section should repeat.  In a similar way, a musician may find many  different endings indicated in a repeat (1,2,3,4), or even something like "1,3" in the first ending or box and "2, 4," in the second box. Sometimes its also possible to find 1, 2, 3  for the first ending, and 4 for the second ending. This snipet makes it possible to produce these endings and the cursor will be located where the section to be repeated starts.

## sources

all of the tweaks here are from the [lilypond snipet repository](http://lsr.di.unimi.it/LSR/Search) and the [lilypond notation reference.](http://lilypond.org/doc/v2.20/Documentation/notation/)

# español

## propósito de esto y un poco de historia

Soy un músico ciego. Después de casi 12 años de usar lilypond, empezando con trabajo musical universitario, finalmente encontré que frescobaldi es la mejor opción para gestionar, crear y editar documentos de lilypond. A partir de 2021, casi todas las características de este programa son accesibles. Estoy compartiendo una colección hecha a mano personalmente de estos fragmentos de código con la esperanza de hacer que la codificación sea más fácil para algunas tareas comúnmente necesarias para afinar ajustes visuales al finalizar o crearse una partitura. Estos fragmentos también incluyen prácticas o técnicas comunes que son utilizadas en jazz, hojas guía o partituras de música popular. El archivo xml que contiene los fragmentos se puede descargar usando la tabla que muestra los archivos para el proyecto.

##  ¿Para quién es esto?

Principalmente mi objetivo es que sea para otras personas ciegas que utilizan lilypond y frescobaldi, pero estoy seguro de que casi cualquier persona, ciega o no, puede beneficiarse de estos también.

## Requisitos previos

Necesitarás haber instalado lilypond y frescobaldi antes de poder importar el archivo xml que contiene los fragmentos.

## contenido y explicación (uso) de cada snipet

Este proyecto contiene un archivo xml de por ahora seis (6) fragmentos que se pueden importar directamente en el gestor de fragmentos de código de frescobaldi. Todos, excepto la plantilla, aparecerán en el menú Fragmentos de código , (o también llamado insertar, accediendo presionando más i latina en la ventana principal de frescobaldi), y el último fragmento aparecerá bajo el menú archivo, en el submenú de nuevo como una plantilla. Los snipets actuales se nombran en español, pero podría hacer una versión con nombres en inglés si se desea o es necesario. Estos son:

* coda como marca de ensayo: coloca un símbolo de coda en una instrucción de texto de marcado donde se encuentra actualmente el cursor de edición. Se puede sustituir la palabra coda por segno o cualquier otro síbmolo musical que se necesite dentro del código generado.
* encerrar el texto seleccionado en una marca de ensayo moderna: Esto solo coloca un bloque de marcado y un bloque de cuadro alrededor del texto seleccionado en el cursor de edición. Esto se hace porque normalmente, las cajas alrededor de las letras que indican una sección de canción como A, B, y así sucesivamente se entienden más claramente por músicos que ven.
* Importación midi de melodías para hojas guía: Esta es una plantilla de lilypond. Tiene el término midi en él porque utiliza el grabador que completa la terminación de las notas, por lo que las notas que se salgan al final del compás se ligan automáticamente, pero por desgracia esto no funciona bien en absoluto. Aún así, incluye secciones para escribir acordes, una melodía y letras para que pueda ser utilizada para crear hojas de guía al instante. 
 * indicar  la agrupación del pulso: esta es sólo una manera de ahorrar tecleo, de modo que el cursor se coloca donde se colocan los números en el paréntesis del código lilypond, como 3 2. Por ejemplo, esta agrupación se utiliza comúnmente en el Merengue venezolano que tiene un compás compuesto de cinco octavos, en el que el primer pulso tiene tres corcheas y el segundo pulso tiene 2.
* mover la marca de ensayo: el cursor de edición se coloca donde se ponen los números. El primer número mueve una marca de ensayo horizontalmente con números más altos a la derecha y los más bajos a la izquierda, y el segundo número la mueve verticalmente, con números más altos siendo arriba y números más bajos siendo hacia abajo. Esto es útil porque la colocación predeterminada de una marca de ensayo de Lilypond puede colisionar con símbolos de acorde.
* Repeticiones con varios finales flexibles: Normalmente, una repetición regular, en el pentagrama que tiene más de un final consiste en una línea y algunos puntos para empezar (imagina un corchete que se abre seguido por  dos puntos), luego la música, y una línea y algunos puntos para terminar (imagina un corchete de cierre y dos puntos), y luego el resto de la música está encerrada en finales (conocidos como casillas). A veces hay números que se pueden anexar a una nota (en la parte superior y dentro de los corchetes) o de las barras dobles, como ×3 o ×5 para indicar cuántas veces debe repetirse una sección.  De manera similar, un músico puede encontrar muchos finales diferentes indicados en una repetición (1,2,3,4), o incluso algo así como "1,3" en la primer casilla o cuadro y "2, 4," en el segundo cuadro. A veces también es posible encontrar 1, 2, 3 para el primer final, y 4 para el segundo final. Este snipet permite producir estos finales y el cursor se ubicará donde comienza la sección a repetir, que está dentro de las barras dobles .

## Fuentes

todos los ajustes aquí son del [repositorio de snipet de lilypond](http://lsr.di.unimi.it/LSR/Search) y la [referencia de notación de lilypond](http://lilypond.org/doc/v2.20/Documentation/notation/)
  
