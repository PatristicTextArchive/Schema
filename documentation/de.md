Die Editionsrichtlinien für das PTA sind in einem Schema festgehalten, das die umfassenden und häufig redundanten Regelungen des TEI TEI-konform eingrenzt und das auch die Grundlage der folgenden Regeln und Beispiele ist.

> Diese Editionsrichtlinien sind eine leicht gekürzte, aber auf Version 2.0 des Schemas hin aktualisierte Fassung von [Annette v. Stockhausen, Die Modellierung kritischer Editionen im digitalen Zeitalter, ZAC 24 (2020), 123–160](https://nbn-resolving.org/urn:nbn:de:kobv:b4-opus4-35237). Dieses Schema hat seinen Ursprung in den Epidoc Guidelines, hat diese aber erheblich erweitert und verändert. 

Durch die Wahl der Auszeichnungssprache TEI-XML für die Kodierung der digitalen kritischen Edition ist ein fundamentaler Unterschied zur klassischen kritischen Edition, wie wir sie aus unseren gedruckten Ausgaben kennen, markiert, nämlich die Unterscheidung zwischen der Kodierung der Edition im digitalen Format und ihrer Präsentation im Druck, im Internet, als E-Book, etc. Die Edition im eigentlichen Sinn sind die in TEI-XML kodierten Daten, von denen zu erwarten ist, dass sie langzeitverfügbar und rezipierbar bleiben, während es sich bei ihrer Präsentation im Druck oder auch im Internet um im Informationsgehalt reduzierte (oder auch angereicherte) Erscheinungsformen dieser Daten handelt, die zumal im Falle der Online-Präsentation dem fortwährenden Wandel der Technologie unterworfen sind.

Festzuhalten sind auf jeden Fall die Vorteile einer kritischen digitalen
Edition, wie sie im Folgenden definiert und exemplifiziert wird:

1.  Die Erstellung von Volltext-Transkriptionen (anstelle der    Aufzeichnung nur von Lesarten in einer Kollationstabelle) und die Publikation auch dieser Forschungsdaten als Teil der digitalen Edition erhöhen die Nachvollziehbarkeit der von der Editorin     gefällten textkritischen Entscheidungen und ermöglichen überhaupt erst eine umfängliche Überprüfung, die weit über das in der     Praefatio einer gedruckten Edition an Varianten Präsentierte hinausgeht, da es dort ja immer um die Konzentration von Information auf möglichst knappen Raum geht.

2.  Die der *constitutio textus* zugrunde liegenden Entscheidungen können durch textkritische Kommentare *in situ* erläutert werden. Auch dies erhöht die Transparenz der Edition.

3.  Durch die gleichzeitige Bereitstellung von Handschriftentranskription *und* kritischer Edition bleibt die Edition für unterschiedliche editionsphilologische Ansätze offen.

4.  Durch die strikte Trennung von Daten (mit dem Fokus auf Vollständigkeit) und Präsentation der Daten (in einer für das     jeweilige Medium und den jeweiligen Zweck bzw. die jeweilige Fragestellung getroffenen Auswahl an präsentierten Phänomenen)   können auf Basis eines Datensatzes ganz unterschiedliche Darstellungsweisen gewählt werden, die zusätzlich durch weitere    Daten anderer Herkunft noch angereichert werden können.

## Aufbau einer digitalen Edition nach TEI {#aufbau}

> In diesen Richtlinien werden folgende Schreibkonventionen verwendet: Mit `<element>` sind XML-Elemente gemeint, mit `@attribut` XML-Attribute und mit `Wert` die den Attributen zugeschriebenen Werte; `#` in einem Wert bedeutet, dass es sich um einen an anderer Stelle in der TEI-Datei, normalerweise dem `<teiHeader>`, definierten Identifikator handelt, auf den an dieser Stelle verwiesen wird.

TEI-Dateien sind grundsätzlich zweigeteilt: Sie enthalten einen
Abschnitt [`<teiHeader>`](https://tei-c.org/release/doc/tei-p5-doc/en/html/ref-teiHeader.html) mit allen Metadaten und einen Abschnitt [`<text>`](https://tei-c.org/release/doc/tei-p5-doc/en/html/ref-text.html)
mit der Edition.

Alle Dateien (Transkriptionen, Edition oder Übersetzungen) enthalten im
`<teiHeader>` die folgenden Metadaten:

@import "examples/teiHeader.xml" {class="line-numbers"}


Der Abschnitt `<fileDesc>` enthält die bibliographischen Angaben zur
Datei, insbesondere Angaben 
- zum Titel (`<titleStmt>`)
- zur Veröffentlichung (`<publicationStmt>`). Anzupassen sind in diesem Abschnitt vor allem die IDs (`<idno>`) (u.a. CPG, CPL, BHG, Pinakes-Oeuvre), da dadurch die Austauschbarkeit und Verlinkung der Daten ernmöglicht wird. 
- zu den Quellen
(`<sourceDesc>`). In diesem Abschnitt unterscheiden sich die Angaben in den drei Arten von Dateien (Transkription, kritische Edition, Übersetzung) signifikant. 

Der Abschnitt `<encodingDesc>` bietet alle
Angaben, die die Kodierung der Datei betreffen, und enthält in jedem
Fall ein Element `<refsDecl>`, das die Gliederungsstruktur der Datei
entsprechend den [„CapiTainS Guidelines“](http://capitains.org/) definiert.

Informationen
zur Datierung (`<date>`) und Verortung (`placeName`) des Textes werden
im Element `<creation>` und zur Gattung (unter Verwendung der Texttypenklassifikation von 
    <https://www.comphistsem.org/46.html>) im Element `<textClass>`
innerhalb des Abschnittes `<profileDesc>` geboten. 

Da es sich bei digitalen Editionen im Gegensatz zu gedruckten Editionen um potentiell sehr fluide Daten handeln kann, ist es von großer Bedeutsamkeit, dass im Abschnitt `<revisionDesc>` alle signifikanten Änderungen an der Datei
und ihre Urheber festgehalten werden, und so die Versionsgeschichte der einzelnen Dateien auch losgelöst vom [Git-Repositorium des PTA](https://github.com/PatristicTextArchive/pta_data/) nachvollziehbar bleibt. 

## Transkription der Überlieferungsträger

Handschriften sind Zeugen eines spezifischen Überlieferungsstadiums
eines Textes. Im Gegensatz zum klassischen „Lachmannschen“ Ansatz, bei
dem in der Praxis nur die Varianten zu einem Vorlagentext notiert
werden, ist es für digitale Editionen – durchaus auch unter Aufnahme
des Grundgedankens der „New Philology" einer Wertschätzung jedes
einzelnen Überlieferungsträgers – angebracht und zudem auch
arbeitsökonomisch durchaus sinnvoll, jeweils den gesamten Text zu
transkribieren und dann in einem zweiten Schritt die Kollation der
Zeugen mit Hilfe des Computers durchzuführen. 

> Im Berliner Akademienvorhaben wird dafür das Programm [CollateX](https://web.archive.org/web/20200329141404/https://collatex.net/) verwendet, wobei die Transkriptionsdateien mit Hilfe eines     Python-Skripts (<https://github.com/PatristicTextArchive/collator>) in das für CollateX nötige Eingabeformat konvertiert werden. Kleinere Fehler bei der Ausrichtung der Kollationstabelle können  dabei nachträglich manuell korrigiert werden.

Auch die Transkriptionen sind somit Editionen und das Ergebnis von
Interpretation. Sie unterscheiden sich von der kritischen Edition (s.u.)
aber dadurch, dass sie einem diplomatischen (dokumentarischen)
Editionsparadigma folgen: Die in der Handschrift vorfindlichen
Phänomene wie Schreibung der Worte, Akzentsetzung, Interpunktion
und Worttrennung werden bei der Transkription grundsätzlich nicht
normalisiert, d.h. nicht ggfs. korrigiert. Außerdem werden Seiten-,
Columnen- und Zeilenumbrüche, Initialen und Ektheseis, Marginalien,
Abkürzungen, Markierungen, Rubriken, Tilgungen, Hinzufügungen – auch in
diachroner Betrachtung (sc. im Blick auf Schreiberwechsel) –
aufgenommen, dabei aber nicht entsprechend ihrer visuellen Erscheinung,
sondern entsprechend ihrer Semantik ausgezeichnet und das heißt einer
Deutung unterzogen. Auch Phänomene, die nicht gedeutet werden können,
wie z.B. nicht zu entziffernder Text, werden als solche markiert und
damit auch Unsicherheiten nicht verdeckt.

Ggfs. können in den Metadaten der Transkriptionen nähere Angaben gemacht werden, inwieweit Phänomene aufgenommen werden oder nicht. 

### Metadaten der Transkription {#meta_transkription}

Der Header der Transkriptionsdatei enthält zusätzlich zu den oben
genannten Metadaten innerhalb des Abschnittes `<sourceDesc>` im Element
`<msDesc>` kurze Angaben zur Handschrift, die mindestens das Element
`<msIdentifier>` umfassen. Das Element erhält eine eigene `@xml:id`, die z.B. für die Identifikation der Handschrift bei der Kollation ausgelesen wird. 
Lassen sich in einer Handschrift mehrere
Schreiber feststellen, so ist es außerdem sinnvoll, in einem weiteren
Abschnitt `<physDesc>`, der der Beschreibung der physischen
Beschaffenheit der Handschrift dient, diese Schreiber im Element
`<handNote>` innerhalb eines Unterabschnittes `<handDesc>` kurz zu
beschreiben. Das Attribut `@xml:id` wird dabei in der Edition als Identifikator referenziert und ist auf jeden Fall zu setzen; daneben stehen noch weitere Attribute zur Verfügung, z.B. kann das Attribut  `@scribe` verwendet werden, wenn der Schreiber namentlich bekannt ist.

Handelt es sich bei der Handschrift z.B. um eine
Randkatene, so kann das Layout im selben Abschnitt in der `<objectDesc>`
innerhalb des Elements `<layoutDesc>` beschrieben werden.

@import "examples/transc_metadata.xml" {class="line-numbers"}

### Edition

Die gesamte Transkription steht im `<text>`-Teil der Datei in einem
Abschnitt `<div>`. Das Element hat die folgenden Attrribute: 
- `type="edition"`
- `@xml:lang` mit der Angabe der Sprache des edierten Textes unter Verwendung von [ISO 639-2](https://www.loc.gov/standards/iso639-2/php/code_list.php).
- `@n` mit der URN der Datei, s. [unten](#dateistruktur).

#### Auszeichnung der Textstruktur

Innerhalb dieses Abschnittes ist zumindest ein Unterabschnitt `<div>`
vom `@type="textpart"` zu verwenden, wobei das Attribut `@subtype`
folgende Werte annehmen darf: `section` für Fließtexte, `fragment` für
fragmentarisch Überlieferungen, `commented` und `commentary` für
Kommentare oder vergleichbare Texte, bei denen zwischen einem
kommentierten und einem kommentierenden Text unterschieden wird.

Im Fall einer Katene kann das z.B. folgendermaßen aussehen:

@import "examples/structure_catena.xml" {class="line-numbers"}

Der Text wird dabei durch das Element <seg> weiter unterteilt,
dem jeweils auch eine @xml-id zugewiesen wird, um so die Bezüge zwischen den korrespondieren Teilen (Text, Kommentar) auszeichnen zu können.

Bei der Transkription kann mit Hilfe des Elementes `<milestone>` auf Gliederungen des Textes (angegeben mit Hilfe der Attribute `@unit` und `@n`) durch Editionen (angegeben mit `@edRef`) verwiesen werden: 

@import "examples/milestone.xml" {class="line-numbers"}

Bei Editionen, die im PTA vorhanden sind, ist der Wert des Attributes `@edRef` die URN der Edition (also z.B. `urn:cts:pta:pta0001.pta028.pta-grcBibex`).

#### Zeichensetzung

Die Interpunktion wird – ohne explizite Auszeichnung – der Handschrift
entsprechend transkribiert.

#### Titel und titelähnliche Elemente

Titel werden mit dem Element `<title>` innerhalb des Elementes
`<head>` ausgezeichnet:

@import "examples/title_head.xml" {class="line-numbers"}

#### Zeilen-, Spalten-, Seiten-, Bogenanfänge

Zeilenanfänge werden mit `<lb/>`, Spaltenanfänge mit `<cb/>`, 
Seitenanfänge mit `<pb/>` und Bogenanfänge mit `<gb/>` ausgezeichnet.

Befindet sich ein Umbruch innerhalb eines Wortes, erhält das jeweilige
Element das Attribut `@break` mit dem Wert `no`. Am Ende des Wortteiles steht kein Leerzeichen.

Beim Seiten- (ggfs. auch beim Bogenanfang) erhält das Element das Attribut `@n` für die Eingabe
der Seitennummerierung und – wo vorhanden – das Attribut `@facs` für
die Eingabe des Links auf ein digitales Faksimile.

@import "examples/beginnings.xml" {class="line-numbers"}

#### Absätze

Absätze werden – soweit sie in der Handschrift (z.B. durch eine Lücke)
markiert sind – mit dem Element `<p>` ausgezeichnet. Jede Transkription besteht aus mindestens einem Absatz.

#### Initialen und Ektheseis

Initialen und Ektheseis werden mit dem Element `<hi>` ausgezeichnet. Im
Attribut `@rend` wird angegeben, ob es sich um eine (mehrere Zeilen übergreifende) Initiale (`initial`)
oder um eine Ekthesis (`ekthesis`) handelt.

@import "examples/ekthesis_initiale.xml" {class="line-numbers"}

#### Andere Hervorhebungen

Rubrizierter Text wird ebenfalls mit dem Element `<hi>` ausgezeichnet;
das Attribut `@rend` erhält den Wert `rubricated`.

Mit einer Linie über dem Buchstaben oder Wort hervorgehobener Text wird
mit `<hi rend="overline">` markiert.

Unterstrichener Text wird mit `<hi rend="underline">` markiert.

#### Marginalien

Marginalien werden in der Transkription als `<note>` ausgezeichnet,
wobei das Element im Text möglichst nahe zu der Stelle eingeführt wird,
an der sich die Marginalie befindet.

Die Position der Marginalie wird im Attribut `@place` angegeben.
Erlaubte Werte sind `top` (ggfs. näher spezifiert: `top_inner`,
`top_center`, `top_outer`), `bottom` (`bottom_inner`, `bottom_center`,
`bottom_outer`), `margin_inner` und `margin_outer`.

@import "examples/notes_transcr.xml" {class="line-numbers"}

#### Getilgter Text

Vom Schreiber oder einem späteren Korrektor getilgter Text wird mit
`<del>` ausgezeichnet. Die Art der Tilgung wird im Attribut `@rend`
angegeben. Erlaubte Werte sind `erasure` (ausradiert), `strikethrough` (durchgestrichen), `overwrite` (durch Überschreiben)
und `expunction` (durch Auspunktieren).

Stammt eine Tilgung nicht vom Schreiber, kann dies durch das Attribut
`@hand` angegeben werden, wobei die Korrektoren (`#m2`, `#m3`, ... –
allgemein `#mr` für *manus recentior*; zur Angabe der Hände in den Metadaten s. [oben](#meta_transkription)) unterschieden werden sollten. Ist
nicht zu entscheiden, von welcher Hand eine Korrektur vorgenommen worden
ist, wird dem Attribut der Wert `unknown` zugewiesen.

@import "examples/del_transcr.xml" {class="line-numbers"}

#### Korrekturen

Korrekturen (Worte, aber auch einzelne Buchstaben) werden mit dem Element `<subst>` gekennzeichnet.

Stammt eine Korrektur nicht vom Schreiber, kann dies durch das Attribut
`@hand` angegeben werden, wobei die Korrektoren (`#m2`, `#m3`, ... --
allgemein `#mr` für *manus recentior*, zur Angabe der Hände in den Metadaten s. [oben](#meta_transkription)) unterschieden werden sollten. Ist
nicht zu entscheiden, von welcher Hand eine Korrektur vorgenommen worden
ist, wird dem Attribut der Wert `unknown` zugewiesen.

Innerhalb dieses Elementes wird der *getilgte Text* mit `<del>`
ausgezeichnet. Die Art der Tilgung wird im Attribut `@rend` angegeben.
Erlaubte Werte sind `unmarked` (der zu ersetzende Text ist überhaupt nicht explizit markiert), `marker` (der zu ersetzende Text ist mit einem Zeichen, z.B. einem Obelus
o.ä., markiert), `erasure` (ausradiert), `strikethrough` (durchgestrichen), `overwrite` (durch Überschreiben)
und `expunction` (durch Auspunktieren).

Der *hinzugefügte Text* wird mit `<add>` ausgezeichnet. Der Ort der
Hinzufügung wird mit Hilfe des Attributes `@place` angegeben. Erlaubte
Werte sind `above` (darüber), `inline` (in der Zeile) und `margin` (am Rand).

@import "examples/subst_transcr.xml" {class="line-numbers"}


#### Hinzugefügter Text

Hinzugefügter Text, der nicht mit einer Korrektur einhergeht, wird mit
dem Element `<add>` ausgezeichnet. Der Ort der Hinzufügung wird im
Attribut `@place` angegeben. Erlaubte Werte sind `above` (darüber), `inline` (in der Zeile) und
`margin` (am Rand).

Stammt eine Korrektur nicht vom Schreiber, kann dies durch das Attribut
`@hand` angegeben werden, wobei die Korrektoren (`#m2`, `#m3`, ... –
allgemein `#mr` für *manus recentior*; zur Angabe der Hände in den Metadaten s. [oben](#meta_transkription)) unterschieden werden sollten. Ist
nicht zu entscheiden, von welcher Hand eine Korrektur vorgenommen worden
ist, wird dem Attribut der Wert `unknown` zugewiesen.

@import "examples/add_transcr.xml" {class="line-numbers"}

#### Nicht lesbarer Text

Nicht lesbarer Text wird mit dem selbstschließenden Element `<gap>` angegeben (für andere Anwendungsfälle dieses Elementes vgl. [den nächsten Eintrag](#transcr_gap)). Dem Attribut
`@reason` wird der Wert `illegible` (nicht lesbar) zugewiesen. Der (geschätzte) Umfang
(`@quantity`) wird in Buchstaben (`@unit="character"`), ggfs. Zeilen (`@unit="line"`) angegeben.

@import "examples/illegible_transcr.xml" {class="line-numbers"}

#### Lücke im Text {#transcr_gap}

Eine Lücke im Text wird ebenfalls mit dem Element `<gap>` angebeben. Dem
Attribut `@reason` wird in diesem Fall der Wert `damage` (physische
Beschädigung) oder `fenestra` (vom Schreiber freigelassen) zugewiesen.
Der (geschätzte) Umfang (`@quantity`) wird in Buchstaben, Zeilen oder
Seiten (`@unit` mit Wert `character`, `line` oder `page`) angegeben.

@import "examples/gap_transcr.xml" {class="line-numbers"}

Ist eine Lücke jedoch durch die Zerstörung von Text durch den Schreiber
(sc. Rasur: `@rend="erasure"`) entstanden, so wird diese mit dem Element
`<del>` ausgezeichnet; ggfs. ist im Falle der Zerstörung durch eine andere Hand das Attribut
`@hand` anzugeben, wobei die Korrektoren (`#m2`, `#m3`, ... –
allgemein `#mr` für *manus recentior*; zur Angabe der Hände in den Metadaten s. [oben](#meta_transkription)) unterschieden werden sollten. Ist
nicht zu entscheiden, von welcher Hand eine Korrektur vorgenommen worden
ist, wird dem Attribut der Wert `unknown` zugewiesen.

@import "examples/erasure_transcr.xml" {class="line-numbers"}

#### Unsichere Lesung

Ist ein Text nicht sicher zu entziffern, wird er mit dem Element
`<unclear>` markiert.

@import "examples/unclear_transcr.xml" {class="line-numbers"}

#### Wechsel des Schreibers

Wechselt der Schreiber im Text, so wird an der Position des Wechsels das
Element `<handShift/>`eingefügt. Die Schrift kann mit Hilfe der
Attribute `@medium` (Charakteristik der Tinte oder des
Schreibmaterials), `@scribeRef` oder `@scriptRef`, wobei bei den
letzteren Attributen auf die entsprechenden `@xml:id` im `<teiHeader>`
(`<handDesc>`, s. [oben](#meta_transkription)) zu verweisen ist.

@import "examples/handshift_transcr.xml" {class="line-numbers"}

#### Nomina sacra

Nomina sacra *können* ausgezeichnet werden. Dafür wird innerhalb eines
`<choice>`-Elementes das Kürzel mit `<abbr>` mit dem Attribut `@type`
vom Wert `nomSac` aufgenommen und die aufgelöste Form im Element
`<expan>` notiert.

@import "examples/nomSac_transcr.xml" {class="line-numbers"}

#### Abkürzungen

Soll der Umstand der Abkürzung, nicht aber die abgekürzte Form selbst vermerkt werden, so kann das Element `<expan>` verwendet werden.  

> Auf die Notierung der abgekürzten Form wird an der BBAW aus Gründen der Umsetzbarkeit und des andernfalls anzusetzenden Zeitaufwandes bewußt verzichtet; sollen Abkürzungen umfassend aufgenommen werden, so ist analog zu den Nomina sacra vorzugehen.

@import "examples/expan_transcr.xml" {class="line-numbers"}

#### Zahlen

Zahlen werden mit dem Element `<num>` ausgezeichnet.

@import "examples/num_transcr.xml" {class="line-numbers"}

#### Diple und Paragraphos

Zitate werden in Handschriften oft mit einer Diple (einfach oder
doppelt) am Rand markiert. Sie werden in der Transkription mit Hilfe von
`<g type="diple"/>` bzw. `<g type="doubled_diple"/>` vermerkt. (Das Element `<quote>` findet in der Transkription *keine* Verwendung!)

@import "examples/diple_transcr.xml" {class="line-numbers"}

In der Handschrift mit einem Paragraphos am Rand markierte Zeilen werden
mit Hilfe von `<g type="paragraphos"/>` vermerkt.

## Kritische Edition

### Metadaten der kritischen Edition

#### Handschriftliche Zeugen und frühere Editionen {#sourceDesc}

Der Header der Editionsdatei enthält zusätzlich zu den [oben genannten
Metadaten](#aufbau) innerhalb des Abschnittes `<sourceDesc>` in einem
Unterabschnitt `<listWit>` eine Auflistung der verwendeten
Handschriften. Die Informationen zu den einzelnen Handschriften werden
mit Hilfe des Elementes `<witness>` zur Verfügung gestellt. Dabei sollte die Transkription der Handschrift (in Form ihrer URN, s. [unten](#dateistruktur)) im Attribut `@corresp` verlinkt werden.

Alle Einträge erhalten eine maschinenlesbare ID im Attribut `@xml-id`,
der im `<witness>` untergeordneten Element `<abbr type="siglum">` eine
menschlesbare Sigle, die auch weitere Formatierungen enthalten kann,
korrespondiert.

Handelt es sich bei der Handschrift um die Abschrift einer anderen
Handschrift, so wird auf die `xml:id` dieser Handschrift im Attribut
`@source` verlinkt. Dadurch ist es möglich, eine so markierte Handschrift (und alle von ihr bezeugten Textvarianten) z.B. für die Präsentation, aber auf für die Analyse durch ein Transformationsskript zu eliminieren.

Der übliche lateinische Name der Handschrift wird im Element `<name>`
angegeben, die Datierung der Handschrift im Element `<origDate>` (ggfs. zusätzlich maschinenlesbar mit Hilfe der Attribute `@notBefore` und `@notAfter` bzw. `@when`),
und die Folia bzw. Seiten, auf denen sich der edierte Text befindet,
werden im Element `<locus>` (ggfs. maschinenlesbar mit Hilfe der Attribute `@from` and `@to`) angegeben.

Ist eine ausführlichere Beschreibung der Handschrift nötig oder
erwünscht, weil z.B. eine Werkausgabe eines Autors erarbeitet wird und
Handschriften aus diesem Grund für mehrere Texte relevant sind, so ist
es sinnvoll, diese in eine eigene Datei und unter möglichst
vollständiger Ausschöpfung der in den TEI-Richtlinien im Kapitel
„Manuscript Description“ beschriebenen Elemente auszulagern und auf
diese dann im Attribut `@corresp` des Elements `<name>` zu verweisen. 

> Für die an der BBAW erstellten Editionen werden solche (auf den Inhalt fokussierte) Handschriftenbeschreibungen standardmäßig angelegt, die unter eindeutigen Handschriften-IDs auf <https://pta.bbaw.de/manuscripts/> angeführt werden.

Handschriftenfamilien und Hyparchetypen können innerhalb des Abschnittes
`@listWit` in einem eigenen Unterabschnitt `<listWit>` mit eigenem
Element `<head>` zusammengefaßt werden, der im Attribut `@xml:id` eine
eigene maschienenlesbare ID für die Familie bekommt (und analog im
Element `<abbr type="siglum">` eine menschenlesbare Sigle).

Auch die indirekte Überlieferung oder alte wie moderne Übersetzungen
sollten auf diese Art vermerkt werden, wenn auf sie in den
Apparat-Einträgen der Edition verwiesen werden soll.

@import "examples/ed_listWit.xml" {class="line-numbers"}

Entsprechend der Auflistung der Handschriften in einem Unterabschnitt
`<listWit>` innerhalb des Abschnittes `<sourceDesc>` werden frühere
Editionen in einem Unterabschnitt `<listBibl>` jeweils im Element
`<bibl>` (oder `<biblStruct>`) angeführt:

@import "examples/ed_listBibl.xml" {class="line-numbers"}

Konjektoren, die nicht im obigen Sinne bibliographiert werden können,
weil z.B. die Konjekturen mündlich übermittelt wurden oder sie in einer
anderen Edition zitiert werden, werden folgendermaßen aufgenommen:

@import "examples/ed_list_edd.xml" {class="line-numbers"}

#### Kodierung von Bibelstellenangaben

Im Abschnitt `<encodingDesc>` wird in einem weiteren Element
`<refsDecl>` mit dem Attribut `@xml:id` vom Wert `biblical` maschinen-
und menschenlesbar angegeben, nach welchem System Bibelstellen
referenziert werden und wie diese Referenzen aufgelöst werden können.

@import "examples/ed_refsDecl.xml" {class="line-numbers"}

Die im PTA verwendeten Abkürzungen für die Bücher des Alten Testamentes (LXX) sind:

@import "examples/abbr_LXX.txt"

Die im PTA verwendeten Abkürzungen für die Bücher des Neuen Testamentes sind:

@import "examples/abbr_NT.txt"

Die Stellenangaben werden folgendermaßen gebildet:
Bibl. Korpus (LXX, Hexapla, Vg oder NT):Buch:Kapitel:Vers (z.B.: 1,1-2,1.4), z.B. `LXX:Gn:1:1-3`.

#### Angabe der ausgezeichneten Phänomene

Ebenfalls noch im Abschnitt `<encodingDesc>` wird anschließend im
Abschnitt `<editorialDecl>` innerhalb des Unterabschnittes
`<interpretation>` ausgeführt, welche Phänomene im Text ausgezeichnet
wurden. Dadurch können Nutzer der Edition schnell erkennen, was sie von
der Edition zu erwarten haben. Anpassungen sind ggfs. vorzunehmen.

@import "examples/ed_interpretation.xml" {class="line-numbers"}

#### Normalisierung

Innerhalb des Abschnittes `<editorialDecl>` wird in den Unterabschnitten
`<normalization>` und `<punctuation>` beschrieben, inwieweit der
handschriftlich überlieferte Text in der kritischen Edition normalisiert
worden ist. Anpassungen sind ggfs. vorzunehmen.

@import "examples/ed_normalisation_punct.xml" {class="line-numbers"}

#### Art der Auszeichnung der Varianten

Als letztes Element im Abschnitt `<encodingDesc>` wird die Art der
Auszeichnung der textkritischen Varianten angegeben. Der Eintrag *muss*
lauten:

@import "examples/ed_variantencoding.xml" {class="line-numbers"}

#### Status der Edition

Schließlich erhält das Element `<revisionDesc>` ein Attribut `@status`,
in dem der Status der Edition angegeben wird. Möglich sind dabei
folgende Werte:

-   `critical-edition` für eine kritische Edition, bei der die
    textkritischen Varianten kodiert worden sind. Das sollte der
    Normalfall für Neueditionen sein, die dem hier vorgestellten Modell
    folgen.

-   `critical-edition-no-app` für eine kritische Edition, bei der die
    textkritischen Varianten nicht kodiert worden sind, z.B. weil es
    sich um die Retrodigitalisierung einer gedruckten kritischen Edition
    handelt und aus urheberrechtlichen Gründen der Apparat in die
    Retrodigitalisierung nicht einbezogen werden kann.

-   `critical-edition-outdated` für eine Edition, die zwar textkritische
    Varianten vermerkt, aber z.B. den handschriftlichen Befund nicht
    umfassend einbezieht.

-   `pre-critical-edition` für vormoderne Editionen (z.B. in der
    Patrologia Graeca oder Latina).

-   `preliminary-edition` für die vorläufige Veröffentlichung von in 
    Arbeit befindlichen kritischen Editionen. Mit substantiellen Änderungen ist bei so ausgezeichneten Editionen jederzeit zu rechnen!

### Edition

Die gesamte kritische Edition steht im `<text>`-Teil der Datei. Sie
besteht mindestens aus einem Element `<div>`, das den edierten Text enthält. Das Element hat die folgenden Attrribute: 
- `type="edition"`
- `@xml:lang` mit der Angabe der Sprache des edierten Textes unter Verwendung von [ISO 639-2](https://www.loc.gov/standards/iso639-2/php/code_list.php).
- `@n` mit der URN der Datei, s. [unten](#dateistruktur).

@import "examples/ed_div-edition.xml" {class="line-numbers"}

Bei Neueditionen sollte der Edition ein Abschnitt
`<div type="praefatio">` mit der Praefatio vorangehen.

#### Praefatio

Die Praefatio bietet in einem Fließtext alles, was zum Verständnis
des folgenden Textes und seiner Überlieferung notwendig ist. Vor allem
sollte der kritische Wert der Handschriften und ihr gegenseitigen
Verhältnis zueinander dargelegt, antike Übersetzungen und die sonstige
indirekte Überlieferung sowie früheren Ausgaben und Übersetzungen in
moderne Sprachen genannt und in ihrem kritischen Wert gewürdigt werden.

Grundsätzlich ist es dabei sinnvoll, die Angaben, die im `<teiHeader>`
gemacht wurden, zu verlinken.

Unterabschnitte können mit Hilfe von `<div type="section" n="1">` eingerichtet werden, die im Element `<head>` auch eigene Überschriften enthalten können.

@import "examples/ed_div_praefatio.xml" {class="line-numbers"}

#### Text

##### Auszeichnung der Textstruktur

Innerhalb des Elements `<div type="edition">` wird die vom Editor
rekonstruierte Textstruktur (entsprechend den Angaben in der
`<refsDecl n="CTS">` im `<teiHeader>`) mit Hilfe von (auch ineinander
geschachtelten) Unterabschnitten `<div>` vom `@type="textpart"`
ausgezeichnet, wobei folgende Werte für das Attribut `@subtype`
möglich sind:

-   Buch (nummeriert): `<div type="textpart" subtype="book" n="1">`

-   Homilie (nummeriert): `<div type="textpart" subtype="homily" n="1">`

-   Kapitel (nummeriert):
    `<div type="textpart" subtype="chapter" n="1">`

-   Unterdokument (nummeriert): `<div type="textpart" subtype="subdok" n="1">`

-   Praefatio (nicht-nummeriertes Vorwort im Text): `<div type="textpart" subtype="praefatio" n="praefatio">`

-   Abschnitt (nummeriert):
    `<div type="textpart" subtype="section" n="1">`

-   Fragment (nummeriert):
    `<div type="textpart" subtype="fragment" n="1">`

-   Kommentierter Text (kommentierte Stelle): `<div type="textpart" subtype="commented" n="Gen_1_1">` 

-   Kommentierung (kommentierte Stelle):
    `<div type="textpart" subtype="commentary" n="Gen_1_1">` 

-   Hypopsalmos (nicht nummeriert): `<div type="textpart" subtype="hypopsalmos" n="hypopsalmos">` 

-   Hypothesis (nicht nummeriert): `<div type="textpart" subtype="hypothesis" n="hypothesis">` 

-   Perioche (nicht nummeriert): `<div type="textpart" subtype="perioche" n="perioche">` 

Absätze innerhalb dieser Unterabschnitte werden mit Hilfe des Elements `<p>` ausgezeichnet. Jedes Element `<div>` enthält mindestens ein Element `<p>`.
##### Auszeichnung weiterer struktureller Elemente

Die Seitenumbrüche in den Handschriften und früheren Editionen werden nach Bedarf
mit Hilfe des Elementes `<pb>` angegeben; die Seitenangabe steht im
Attribut `@n` und auf die Handschrift bzw. die Edition wird im Attribut
`@edRef` verwiesen:

@import "examples/ed_pb.xml" {class="line-numbers"}

##### Auszeichnung von Bibel- und anderen Zitaten (und Anspielungen)

Zitate werden mit Hilfe des Elementes `<quote>` ausgezeichnet und können
ein Attribut `@type` erhalten, so dass zwischen markierten (`marked`)
und nicht-markierten (`unmarked`) Zitaten unterschieden werden kann; für
paraphrasierende Zitate – soweit sie überhaupt als Zitat markiert
werden – kann der Wert `paraphrase` verwendet werden. Bei Editionen
biblischer Kommentare erhalten Lemma-Zitate den Wert `lemma`, um sie von
anderen Zitaten zu differenzieren.

Explizite Zitate unter Anführung des Autors des Zitates werden mit dem
Element `<cit>` ausgezeichnet und die das Zitat anführende Phrase darin
mit dem Element `<ref>`. Einschübe im Zitat (wie z.B. „sagte") werden
mit Hilfe von `<seg type="insertion">` innerhalb des Zitates ausgezeichnet.

Anspielungen (z.B. auf biblische Geschichten und Ereignisse) werden mit
Hilfe von `<seg type="allusion">` ausgezeichnet.

Pseudo-Zitate können mit Hilfe von `<seg type="psq">` ausgezeichnet
werden.

Bei Bibelzitaten wird die jeweilige Bibelstelle innerhalb des Elementes
`<ref>` mit Verweis auf die Spezifikationen im `<teiHeader>`
(`@decls="#biblical"`) im Attribut `@cRef` angegeben.

@import "examples/ed_quote.xml" {class="line-numbers"}

##### Auszeichnung von Similia und Quellen

Similia werden mit Hilfe von `<seg type="similar">`, Quellen (soweit kein Zitat vorliegt) mit Hilfe
von `<seg type="source>` ausgezeichnet. Die Fundstelle wird innerhalb
des `<seg>`-Elementes in einem `<ref>`-Element angegeben.

@import "examples/ed_similia.xml" {class="line-numbers"}

##### Auszeichung direkter Rede

Direkte Rede wird mit Hilfe des Elementes `<said>` ausgezeichnet.

@import "examples/ed_said.xml" {class="line-numbers"}

##### Auszeichnung von Personen, Organisationen und Orten

**Personen** werden mit Hilfe des Elementes `<persName>` ausgezeichnet. Im Fall von biblischen Personen wird das Attribut `@type` mit dem Wert `biblical` verwendet, alle anderen Personen erhalten kein Attribut `@type`. 
Im Attribut `@key` wird die `person_id` der [PTA-Personen-Liste](https://github.com/PatristicTextArchive/pta_metadata/blob/main/pta_persons.json) angegeben, die ihrerseits auf die  Liste [„Translators Individualised Proper Names with all References”](https://github.com/tyndale/STEPBible-Data) sowie ein eigenes Register der nicht-biblischen Personen zurückgreift. 
Nicht-biblische Personen, die im PTA-Register fehlen, können nach [Rücksprache](mailto:annette.von_stockhausen@bbaw.de) ergänzt werden.

**Institutionen (wie Synoden oder theologische Gruppierungen), Völker und sonstige Gruppen** werden mit Hilfe des Elementes `<orgName>` ausgezeichnet.
Im Attribut `@key` wird die `org_id` der [PTA-Oranganisationen-Liste](https://github.com/PatristicTextArchive/pta_metadata/blob/main/pta_orgs.json) angegeben. Organisationen, die im PTA-Register fehlen, können nach [Rücksprache](mailto:annette.von_stockhausen@bbaw.de) ergänzt werden.

**Orte** werden mit Hilfe des Elementes `<placeName>` ausgezeichnet, im
Attribut `@ref` wird auf die ID des Pleiades-Gazetteers (in Form der
kompletten URL) verwiesen.

@import "examples/ed_placeName.xml" {class="line-numbers"}


##### Bezeugung des Textes

Die handschriftliche Bezeugung des Textes wird im Element `<app>` mit
dem Attribut `@type="witnesses"` dokumentiert. Das Element enthält nur ein Element `<rdg>` mit dem Attribut `@wit`, in dem eines der
selbst-schließenden Elemente `<witStart/>` (= Beginn eines Zeugen), `<witEnd/>` (= Ende eines Zeugen),`<lacunaStart/>` (= Beginn einer Lücke) oder `<lacunaEnd/>` (= Ende einer Lücke) eingefügt wird.

@import "examples/ed_witnesses.xml" {class="line-numbers"}

##### Auszeichnung der Varianten

Die Auszeichnung der Varianten spiegelt die im Editionsprozess erfolgten editorischen Entscheidungen, insbesondere die Beurteilung der Varianten und der stemmatischen Zusammenhänge, wieder und ist *keine* neutrale Beschreibung des Überlieferungsbestandes, sondern eine Interpretation desselben.

An jeder Stelle im Text, die in unterschiedlichen Fassungen überliefert ist, werden die Varianten innerhalb des Elementes `<app>` angegeben, das ein Attribut `@type` mit dem Wert `textcritical` erhält. Innerhalb dieses Elementes `<app>` wird der rekonstruierte Text mit dem Element `<lem>` ausgezeichnet, die als sekundär eingeschätzten Varianten mit dem Element `<rdg>`, wobei dieses innerhalb eines `<app>`-Eintrages im Gegensatz zu `<lem>` mehrfach vorkommen darf. 
Alle im folgenden beschriebenen Arten von varianter Überlieferung setzen eine Einschätzung der einzelnen Varianten als primär (`<lem>`) oder sekundär (`<rdg>`) voraus.

*Alle* Variantenträger werden im `<lem>`- und in den `<rdg>`-Elementen im Attribut `@wit` angegeben, wenn die Variante in einer Handschrift steht, im Attribut `@source` oder `@resp`, wenn die Variante auf eine
Konjektur in einer Edition oder einer Person zurückgeht.

Bei einer gedruckten Edition würde man also von einem positiven Apparat sprechen, mit der Besonderheit, dass im Fall der digitalen kritischen Edition auch die Lesarten von codices descripti angegeben werden. Der Schritt der Elimination bzw. die Reduktion des positiven Apparates auf einen negativen Apparat kann, muss aber nicht, bei der Aufbereitung der Daten für die Präsentation (im Druck oder online) durchgeführt werden. In dieser Unterscheidung von vollständiger Datenaufnahme, die die Nachvollziehbarkeit und die Überprüfbarkeit der editorischen Entscheidungen in viel höherem Maße als bisher ermöglicht, und ggfs. selektiver Präsentation besteht der kategoriale Unterschied zwischen der überkommenen kritischen Edition im Druck und der kritischen digitalen Edition.

Die Werte der Elemente `@wit`, `@source` und `@resp` verweisen dabei auf die im Element `<sourceDesc>` (im `<teiHeader>`, [s.o.](#sourceDesc)) jeweils angegebenen Werte des Attributs `@xml:id` des Elementes `<witness>`, `<bibl>` oder `<person>`.

Zur Erhöhung der Lesbarkeit für menschliche Rezipienten der Edition sollten alle Variantenträger innerhalb des Attributes `@wit` in einer einheitlichen Reihenfolge (und unter Berücksichtigung stemmatischer Zusammenhänge) präsentiert werden.

Bei mehreren Varianten innerhalb eines `<app>`-Elementes sollen die verschiedenen `<rdg>`-Einträge so gereiht werden, dass sie desto früher angeführt werden, je näher sie stemmatisch (nach Einschätzung des Editors) der `<lem>`-Variante stehen.

In ihrer Genese oder auch sonst als zusammengehörig eingeschätzte Varianten (`<lem>` und `<rdg>` oder mehrere `<rdg>`-Einträge) können zur Verdeutlichung in einem Element `<rdgGrp>` zusammengefaßt werden.

Der Text der Variante ist immer in seinem vollen Wortlaut anzugeben und unter keinen Umständen abzukürzen.

##### Typisierung von Varianten

Varianten können ein Attribut `@type` erhalten, mit dessen Hilfe die Editorin dem Rezipienten der Edition eine Analyse der Variante zur Verfügung stellt und die dadurch für die Präsentation auch leicht zu filtern sind. Folgende Werte dieses Attributes sind möglich:

-   `orthographic`, wenn eine Variante vom Editor als nur die     Schreibweise betreffende, d.h.  beispielsweise bei griechischen   Handschriften mit großer  Wahrscheinlichkeit auf Itazismus beruhende Variante interpretiert wird.
-   `homoioteleuton` oder `homoiarkton`, wenn eine Variante nach Einschätzung der Editorin auf Homoioteleuton oder Homoiarkton zurückzuführen ist.
-   `dittography`, wenn eine Variante als Dittographie gedeutet wird.

@import "examples/ed_textcritical_type.xml" {class="line-numbers"}

##### Analyse der Gründe für die Variation

Die Ergebnisse der Analyse von Gründen für Varianten werden im Attribut
`@cause` angegeben.

###### Hinzufügungen

Hinzufügungen, auch Dittographien und andere Wiederholungen, werden im
Element `<rdg>` als `<@cause="addition">` ausgezeichnet. Das Element
`<lem>` bliebt dabei ohne Textinhalt („self-closing“).

@import "examples/ed_addition.xml" {class="line-numbers"}

###### Auslassungen

Auslassungen werden als `<@cause="omission">` ausgezeichnet. Das Element
`<rdg>` bleibt ohne Textinhalt („self-closing“).

@import "examples/ed_omission.xml" {class="line-numbers"}

###### Löschungen

Löschungen werden als `<@cause="deletion">` usgezeichnet, wobei (im Gegensatz zur Transkription) nicht mehr differenziert wird, wie der Text gelöscht worden ist, da diese Information jederzeit der Transkriptions-Datei zu entnehmen ist.

Löschungen werden von Auslassungen analytisch dadurch unterschieden,
dass sie auf einen bewussten Eingriff des Schreibers der jeweiligen Handschrift zurückzuführen sind. 
Das Element `<rdg>` ist wiederum ohne Textinhalt („self-closing“).

@import "examples/ed_deletion.xml" {class="line-numbers"}

###### Nicht lesbarer Text

Nicht lesbarer Text wird als `<@cause="illegible">` ausgezeichnet. Das Element `<rdg>` ist ohne Textinhalt („self-closing“).



###### Umstellungen

Umstellungen werden als `<@cause="transposition">` ausgezeichnet. Im Element `<rdg>` wird der umgestellte Text in seinem vollen Wortlaut (sc. nicht abgekürzt) wiedergegeben.

@import "examples/ed_transposition.xml" {class="line-numbers"}

Umstellungen, die längere Textpassagen betreffen, werden – besonders wenn sie sich über strukturelle Einheiten hinweg erstrecken – als Auslassung und Hinzufügung ausgezeichnet, wobei beide `<app>`-Elemente jeweils ein Attribut `@xml:id` erhalten und auf das jeweils andere mit Hilfe der Attribute `@prev` und `@next` verwiesen wird.

@import "examples/ed_transposition_ext.xml" {class="line-numbers"}

###### Korrekturen durch Schreiber

Korrekturen des Textes durch den Schreiber oder einen späteren Korrektor werden so ausgezeichnet, dass im Element `<rdg>` mit Hilfe des Attributes `@varSeq` die Reihenfolge der verschiedenen Stadien der Überlieferung angegeben wird.

Ist eine durch Korrektur entstandene Variante mit einer anderen Variante identisch, so kann dieser anderen Variante ein eindeutiger Identifikator
im Attribut `@xml:id` gegeben werden und die korrigierende Variante im Attribut `@copyOf` auf diesen Identifikator verweisen; das Element `<rdg>` ist in diesem Falle leer („self-closing”).

Das Element `<rdg>` kann zusätzlich das Attribut `@hand` enthalten, wobei der Schreiber (`#m1`) und die Korrektoren (`#m2`, `#m3`, ... – allgemein `#mr` für *manus recentior*) unterschieden werden sollten. Ist nicht zu entscheiden, von welcher Hand eine Korrektur vorgenommen worden ist, erhält das Attribut den Wert `unknown`.

Der Ort der Korrektur wird mit Hilfe des Attributes `@style` angegeben; mögliche Werte sind `supralinear`, `marginal` und `inline`.

@import "examples/ed_hand.xml" {class="line-numbers"}

Mikroskopische Textersetzungen (wie z.B. die Ersetzung einzelner Buchstaben innerhalb eines Wortes) werden besser entsprechend dem Vorgehen bei der Handschriftentranskription innerhalb eines `<subst>`-Elementes mit dem Element `<del>` (ersetzter Text) und dem Element `<add>` (ergänzter Text) ausgezeichnet. Das Element `<subst>` erhält in diesem Fall das Attribut `@hand`. 
Wird bei einer Korrektur nur Text hinzugefügt oder getilgt, so wird nur das Element `<add>` bzw. `<del>` verwendet und das Attribut `@hand` diesem Element beigefügt.

@import "examples/ed_subst.xml" {class="line-numbers"}

###### Konjekturen durch Editoren

Konjekturen werden mit `<@cause="conjecture">` ausgezeichnet: Erfolgt
dies im Element `<lem>`, so handelt es sich um eine Emendation des
Editors (oder eine ältere, der sich der Editor anschließt), erfolgt dies im Element `<rdg>`, so handelt es sich um eine vom Editor nicht übernommene Konjektur anderen Ursprunges.

Korrekturen kleinerer Fehler (bzw. orthographische Normalisierungen),
die nicht die Höhe einer Konjektur erreichen, werden mit
`<@cause="correction">` ausgezeichnet.

@import "examples/ed_correction.xml" {class="line-numbers"}

Vorschläge von Konjekturen (*proposuit* oder *dubitanter*) werden im Element `<rdg>` als `<@cause="proposition">` ausgezeichnet. Ggfs. kann der Wahrscheinlichkeitsgrad des Zutreffens im Attribut `@cert`
festgehalten werden; mögliche Werte sind: `low`, `medium`, `high`.

@import "examples/ed_proposition.xml" {class="line-numbers"}

Vom Editor getilgter Text wird mit `<@cause="deletion">` im Element `<lem>` ausgezeichnet. Soll der getilgt Text angeführt werden, so wird er mit Hilfe des Elementes `<surplus>` ausgezeichnet; ansonsten
bleibt das Element ohne Textinhalt („self-closing“). Tilgungen durch andere Editoren werden ebenfalls als
`<@cause="deletion">` ausgezeichnet. 

@import "examples/ed_surplus.xml" {class="line-numbers"}

Durch Emendation hinzugefügter Text wird mit `<@cause="addition">` ausgezeichnet. Der hinzugefügte Text wird mit Hilfe des Elementes `<supplied>` ausgezeichnet.  Die handschriftlich überlieferte Variante wird im Element `<rdg>` mit `@cause="omission"` ausgezeichnet; das Element `<rdg>` bleibt ohne Textinhalt („self closing“). 

@import "examples/ed_supplied.xml" {class="line-numbers"}

Auf den Autor einer Konjektur, Emendatio oder Korrektur wird im Attribut `@resp` bzw. im Falle einer aus einer Edition übernommenen Konjektur im Attribut `@source` verwiesen (im Gegensatz zum Attribut `@wit` für Handschriften).

@import "examples/ed_resp.xml" {class="line-numbers"}

###### Lücken im Text

Von der Editorin vermutete Lücken im überlieferten Textbestand werden mit `<gap reason="missing"/>` ausgezeichnet. Die vermutete Ausdehnung (`@quantity`) der Lücke wird, wo es sinnvoll und möglich erscheint (!), in Buchstaben, Worten, Zeilen oder Seiten (`@unit` mit Wert `character`, `word`, `line` oder `page`) angegeben.

Wird die Feststellung einer Lücke von einem früheren Editor übernommen, so wird die Quelle im Attribut `@source` bzw. `@resp` angeführt.

@import "examples/ed_gap.xml" {class="line-numbers"}

Von anderen Editoren vermutete, aber nicht übernommene Lücken werden in einem Apparateintrag als `<rdg>` ausgezeichnet und erhalten das Attribut `@cause="lacunam_indicavit"`. Das Element ist ohne Textinhalt („self closing“).

@import "examples/ed_lacuna.xml" {class="line-numbers"}

###### Crux

Vom Editor nicht zu emendierender, aber sicher verderbter Text („Crux“) wird mit Hilfe des Elementes `<sic>` ausgezeichnet. Das Element kann dabei sowohl den verderbten Text umschließen oder als
selbst-schließendes („leeres“) Element die Stelle der Verderbnis markieren.

@import "examples/ed_crux.xml" {class="line-numbers"}

###### Varianten innerhalb von Varianten

Varianten können auch ineinander geschachtelt werden. Das Lemma des
übergreifenden Apparatus-Eintrages erhält in diesem Fall kein Attribut
`@wit`, da sich die Bezeugung aus den `@wit`-Attributen der Elemente
<lem> und <rdg> des inneren Apparat-Eintrages errechnen lässt.

Der innere `<app>`-Eintrag muss unbedingt im Element `<lem>`, d.h. im rekonstruierten Text, des äußeren Apparatus-Eintrages stehen, keinesfalls im Element `<rdg>`.

@import "examples/ed_app-in-app.xml" {class="line-numbers"}

##### Ökonomische Schreibweise

In ihrer Genese zusammengehörige Variantenteile sollten, solange die
Variantenträger identisch sind, zur Erhöhung der Lesbarkeit möglichst
zusammengefasst werden.

@import "examples/ed_schreibweise1.xml" {class="line-numbers"}

und nicht:

@import "examples/ed_schreibweise2.xml" {class="line-numbers"}

##### Überlappungen

Ein aus der Struktur der Auszeichnungssprache XML resultierendes Problem
bilden Überlappungen von Elementen untereinander; vgl. dazu auch das Kapitel [„Non-hierarchical Structures“ in den TEI-Richtlinien](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/NH.html). 

Nach Möglichkeit sollte entsprechend der ebd. genannten Methode [„Fragmentation and Reconstitution of Virtual Elements“](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/NH.html#NHVE) vorgegangen werden.

Überschneiden sich Elemente unterschiedlicher Kategorie, also z.B. eine textkritische Anmerkung und ein Zitat, so ist dem Element `<app>` der Vorrang einzuräumen und das Element `<quote>` aufzuteilen, wobei die zusammengehörigen Teile des Elementes mit Hilfe der Attribute `@prev` und `@next`, die auf die im Attribut `@xml:id` jeweils zugeteilte ID verweisen, miteinander verbunden werden:

@import "examples/ed_prevnext.xml" {class="line-numbers"}

Überschreitet eine Variante eine Gliederungsebene, so muss dieser der
Vorrang eingeräumt und das Element `<app>` analog dem obigen Vorgehen
aufgeteilt und untereinander verlinkt werden.

@import "examples/ed_prevnext2.xml" {class="line-numbers"}

##### Kommentierung textkritischer Entscheidungen

Erscheint es nötig, textkritische Überlegungen, die über die Typisierung (mit Hilfe des Attributes `@type`) oder die Angabe von Ursachen (mit Hilfe des Attributes `@cause`) hinausgehen, auszuführen, so kann dafür an Ort und Stelle innerhalb des Elementes `<app>` ein Element `<note>` für Bemerkungen, die das gesamte `<app>`-Element betreffen, oder ein Element `<witDetail>` für Bemerkungen, die sich auf eine spezielle Handschrift bezieht, angefügt werden. Das Element `<app>`, `<lem>` oder `<rdg>` erhält in diesem Fall ein Attribut `@xml:id`, auf das im Element `<note>` bzw. `<witDetail>` in einem Attribut `@target` verwiesen wird.

@import "examples/ed_witDetail.xml" {class="line-numbers"}


## Dateien-Struktur jeder Edition {#dateistruktur}

Für eine möglichst einfache Wiederbenutzbarkeit sind schließlich auch eine einheitliche Benennung der einzelnen Dateien und eine strukturierte Dateiablage sinnvoll. Das „Patristic Text Archive“ folgt hier den [„Capitains Guidelines“](http://capitains.org) und verwendet [CTS URNs](http://www.homermultitext.org/hmt-docs/cite/cts-urn-overview.html) (vgl. auch [Christopher W. Blackwell und Neel Smith, „The CITE Architecture: a Conceptual and Practical Overview“, in Monica Berti, Hg., Digital Classical Philology. Ancient Greek and Latin in the Digital Revolution (Age of Access? Grundfragen der Informationsgesellschaft 10; Berlin, 2019), 73–93](https://doi.org/10.1515/9783110599572-006)). 

Innerhalb eines Ordners `data` erhält jeder Autor (oder jede Werkgruppe) einen Ordner, der nach der ID für den Autor oder die Werkgruppe benannt ist. Innerhalb dieses Ordners befinden sich Unterordner, die jeweils nach der IDs für das einzelne Werk benannt sind. In jedem Ordner befindet sich eine Datei `__cts__.xml`, die die Metadaten für die Daten der jeweiligen Ebene enthalten.

    data/
      |- pta0013
        |- __cts__.xml
        |- pta003
          |- __cts__.xml
          |- pta0013.pta003.pta-deu1.xml
          |- pta0013.pta003.pta-grc1.xml
          |- pta0013.pta003.pta-MsLa.xml
          |- pta0013.pta003.pta-MsPg.xml
          |- pta0013.pta003.pta-MsPs.xml
          |- pta0013.pta003.pta-MsVi.xml

Die Dateinamen folgen den CTS URNs und sind folgendermaßen aufgebaut: Das Kürzel „pta0013“ steht dabei für den Autor Amphilochius und „pta003“ für das Werk „Epistula synodalis“. Der letzte Teil der URN identifiziert die spezifische „Edition" eines Werkes: Im Beispiel sind das die
kritische Edition des griechischen Textes (pta-grc1), die deutsche Übersetzung (pta-deu1) und die Transkriptionen der vier Handschriften (pta-MsLa, pta-MsPg, pta-MsPs, pta-MsVi).
