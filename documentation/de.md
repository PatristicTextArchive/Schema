Die Editionsrichtlinien für das PTA sind in einem Schema
festgehalten,[^1] das die umfassenden und häufig redundanten Regelungen
des TEI TEI-konform eingrenzt[^2] und das auch die Grundlage der
folgenden Regeln und Beispiele ist.[^3]

Durch die Wahl der Auszeichnungssprache TEI-XML für die Kodierung der
digitalen kritischen Edition ist ein fundamentaler Unterschied zur
klassischen kritischen Edition, wie wir sie aus unseren gedruckten
Ausgaben kennen, markiert, nämlich die Unterscheidung zwischen der
Kodierung der Edition im digitalen Format und ihrer Präsentation im
Druck, im Internet, als E-Book, etc. Die Edition im eigentlichen Sinn
sind die in TEI-XML kodierten Daten, von denen zu erwarten ist, dass sie
langzeitverfügbar und rezipierbar bleiben, während es sich bei ihrer
Präsentation im Druck oder auch im Internet um im Informationsgehalt
reduzierte (oder auch angereicherte) Erscheinungsformen dieser Daten
handelt, die zumal im Falle der Online-Präsentation dem fortwährenden
Wandel der Technologie unterworfen sind.

Festzuhalten sind auf jeden Fall die Vorteile einer kritischen digitalen
Edition,[^4] wie sie im Folgenden definiert und exemplifiziert wird:

1.  Die Erstellung von Volltext-Transkriptionen (anstelle der
    Aufzeichnung nur von Lesarten in einer Kollationstabelle) und die
    Publikation auch dieser Forschungsdaten[^5] als Teil der digitalen
    Edition erhöhen die Nachvollziehbarkeit der von der Editorin
    gefällten textkritischen Entscheidungen und ermöglichen überhaupt
    erst eine umfängliche Überprüfung, die weit über das in der
    Praefatio einer gedruckten Edition an Varianten Präsentierte
    hinausgeht, da es dort ja immer um die Konzentration von Information
    auf möglichst knappen Raum geht.[^6]

2.  Die der *constitutio textus* zugrunde liegenden Entscheidungen[^7]
    können durch textkritische Kommentare *in situ* erläutert werden.
    Auch dies erhöht die Transparenz der Edition.

3.  Durch die gleichzeitige Bereitstellung von
    Handschriftentranskription *und* kritischer Edition bleibt die
    Edition für unterschiedliche editionsphilologische Ansätze offen.

4.  Durch die strikte Trennung von Daten (mit dem Fokus auf
    Vollständigkeit) und Präsentation der Daten (in einer für das
    jeweilige Medium und den jeweiligen Zweck bzw. die jeweilige
    Fragestellung getroffenen Auswahl an präsentierten Phänomenen)
    können auf Basis eines Datensatzes ganz unterschiedliche
    Darstellungsweisen gewählt werden, die zusätzlich durch weitere
    Daten anderer Herkunft noch angereichert werden können.

## Aufbau einer digitalen Edition nach TEI {#aufbau}

TEI-Dateien[^8] sind grundsätzlich zweigeteilt: Sie enthalten einen
Abschnitt `<teiHeader>` mit allen Metadaten und einen Abschnitt `<text>`
mit der Edition.[^9]

Alle Dateien (Transkriptionen, Edition oder Übersetzungen) enthalten im
`<teiHeader>` die folgenden Metadaten:

@import "examples/teiHeader.xml" {class="line-numbers"}


Der Abschnitt `<fileDesc>` enthält die bibliographischen Angaben zur
Datei, insbesondere Angaben zum Titel (`<titleStmt>`), zur
Veröffentlichung (`<publicationStmt>`)[^10] und zu den Quellen
(`<sourceDesc>`)[^11]. Der Abschnitt `<encodingDesc>` bietet alle
Angaben, die die Kodierung der Datei betreffen, und enthält in jedem
Fall ein Element `<refsDecl>`, das die Gliederungsstruktur der Datei
entsprechend den „Capitains Guidelines"[^12] dokumentiert. Informationen
zur Datierung (`<date>`) und Verortung (`placeName`) des Textes werden
im Element `<creation>` und zur Gattung[^13] im Element `<textClass>`
innerhalb des Abschnittes `<profileDesc>` geboten. Da es sich bei
digitalen Editionen im Gegensatz zu gedruckten Editionen um potentiell
sehr fluide Daten handeln kann, ist es von großer Bedeutsamkeit, dass im
Abschnitt `<revisionDesc>` alle signifikanten Änderungen an der Datei
und ihre Urheber festgehalten werden und nachvollziehbar bleiben.

## Transkription der Überlieferungsträger

Handschriften sind Zeugen eines spezifischen Überlieferungsstadiums
eines Textes. Im Gegensatz zum klassischen „Lachmannschen“ Ansatz, bei
dem in der Praxis nur die Varianten zu einem Vorlagentext notiert
werden, ist es für digitale Editionen – durchaus auch unter Aufnahme
des Grundgedankens der „New Philology" einer Wertschätzung jedes
einzelnen Überlieferungsträgers[^14] – angebracht und zudem auch
arbeitsökonomisch[^15] durchaus sinnvoll, jeweils den gesamten Text zu
transkribieren und dann in einem zweiten Schritt die Kollation der
Zeugen mit Hilfe des Computers durchzuführen.[^16] Auch die
Transkriptionen sind somit Editionen und das Ergebnis von
Interpretation. Sie unterscheiden sich von der kritischen Edition (s.u.)
aber dadurch, dass sie einem diplomatischen (dokumentarischen)
Editionsparadigma folgen:[^17] Die in der Handschrift vorfindlichen
Phänomene wie Schreibung der Worte, Akzentsetzung,[^18] Interpunktion
und Worttrennung werden bei der Transkription grundsätzlich nicht
normalisiert, d.h. nicht ggfs. korrigiert. Außerdem werden Seiten-,
Columnen- und Zeilenumbrüche, Initialen und Ektheseis, Marginalien,
Abkürzungen, Markierungen, Rubriken, Tilgungen, Hinzufügungen -- auch in
diachroner Betrachtung (sc. im Blick auf Schreiberwechsel) --
aufgenommen, dabei aber nicht entsprechend ihrer visuellen Erscheinung,
sondern entsprechend ihrer Semantik ausgezeichnet und das heißt einer
Deutung unterzogen. Auch Phänomene, die nicht gedeutet werden können,
wie z.B. nicht zu entziffernder Text, werden als solche markiert und
damit auch Unsicherheiten nicht verdeckt.

### Metadaten der Transkription {#meta_transkription}

Der Header der Transkriptionsdatei enthält zusätzlich zu den oben
genannten Metadaten innerhalb des Abschnittes `<sourceDesc>` im Element
`<msDesc>` kurze Angaben zur Handschrift, die mindestens das Element
`<msIdentifier>` umfassen.[^19] Lassen sich in einer Handschrift mehrere
Schreiber feststellen, so ist es außerdem sinnvoll, in einem weiteren
Abschnitt `<physDesc>`, der der Beschreibung der physischen
Beschaffenheit der Handschrift dient, diese Schreiber im Element
`<handNote>` innerhalb eines Unterabschnittes `<handDesc>` kurz zu
beschreiben.[^20] Handelt es sich bei der Handschrift z.B. um eine
Randkatene, so kann das Layout im selben Abschnitt in der `<objectDesc>`
innerhalb des Elements `<layoutDesc>` beschrieben werden.

@import "examples/transc_metadata.xml" {class="line-numbers"}

### Edition

Die gesamte Transkription steht im `<text>`-Teil der Datei in einem
Abschnitt `<div type="edition">`[^21].

#### Auszeichnung der Textstruktur

Innerhalb dieses Abschnittes ist zumindest ein Unterabschnitt `<div>`
vom `@type="textpart"` zu verwenden, wobei das Attribut `@subtype`
folgende Werte annehmen darf: `section` für Fließtexte, `fragment` für
fragmentarisch Überlieferungen, `commented` und `commentary` für
Kommentare oder vergleichbare Texte, bei denen zwischen einem
kommentierten und einem kommentierenden Text unterschieden wird.

Im Fall einer Katene kann das z.B. folgendermaßen aussehen:[^22]

@import "examples/structure_catena.xml" {class="line-numbers"}

#### Zeichensetzung

Die Interpunktion wird – ohne explizite Auszeichnung – der Handschrift
entsprechend transkribiert.

#### Titel und titelähnliche Elemente

Titel werden mit dem Element `<title>`[^23] innerhalb des Elementes
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

#### Handschriftliche Zeugen und frühere Editionen

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

```xml
<person xml:id="AvS">
 <persName ref="http://d-nb.info/gnd/124321291">
  <abbr type="siglum">AvS</abbr>
  <forename>Annette</forename>
  <surname>von Stockhausen</surname>
 </persName>
 <!-- ggfs. angeben -->
 <note>Zitiert in <ref target="#Sav">Savile</ref>.</note>
</person>
```

#### Kodierung von Bibelstellenangaben

Im Abschnitt `<encodingDesc>` wird in einem weiteren Element
`<refsDecl>` mit dem Attribut `@xml:id` vom Wert `biblical` maschinen-
und menschenlesbar angegeben, nach welchem System Bibelstellen
referenziert werden und wie diese Referenzen aufgelöst werden können.

```xml
<encodingDesc>
    ...
<refsDecl xml:id="biblical">
 <cRefPattern matchPattern="(.+):(.+):([0-9]+):([0-9]+)[\-\.]*[0-9]*" replacementPattern="https://www.bibelwissenschaft.de/bibelstelle/$2$3,$4/$1">
   <p>Referenzen beziehen sich auf biblisches Buch, Kapitel, Vers, sc. LXX:Gn:1:1; ebenso möglich ist: LXX:Gn:1:1-3 für eine Reihe von Versen oder LXX:Gn:1:1.3 für zwei Verse, die nicht aufeinander folgen.</p>
   <p>Es werden die folgenden Abkürzungen verwendet: Gn, Ex, Lv, Num, Dt, Jos, Judg, Rt, 1Sa, 2Sa, 1Ko, 2Ko, 1Chr, 2Chr, 3Esr, Esr, Est, Jdt, Tob, 1Mak, 2Mak, 3Mak, 4Mak, Ps, Oden, Prov, Eccl, Song, Job, Wis, Sir, PsSal, Hos, Am, Mi, Joel, Ob, Jon, Nah, Hab, Zeph, Hag, Sach, Mal, Is, Jr, Bar, Lam, EpistJer, Hes, Sus, Dn, Bel; Mt, Mk, Lk, Jn, Act, Rom, 1Cor, 2Cor, Gal, Eph, Phil, Col, 1Th, 2Th, 1Tim, 2Tim, Tt, Phm, Heb, Jak, 1P, 2P, 1Jn, 2Jn, 3Jn, Jud, Rev.</p>
 </cRefPattern>
 <cRefPattern matchPattern="(.+):(.+):([0-9]+)[\-\.]*[0-9]*" replacementPattern="https://www.bibelwissenschaft.de/bibelstelle/$2$3/$1">
   <p>Referenzen beziehen sich auf biblisches Buch, Kapitel, sc. LXX:Gn:1; ebenso möglich ist: LXX:Gn:1-3 für eine Reihe von Kapiteln oder LXX:Gn:1.3 für zwei Kapitel, die nicht aufeinander folgen.</p>
 </cRefPattern>
 <cRefPattern matchPattern="(.+):(.+)" replacementPattern="https://www.bibelwissenschaft.de/bibelstelle/$2/$1">
   <p>Referenzen beziehen sich auf biblisches Buch, sc. LXX:Gn.</p>
 </cRefPattern>
</refsDecl>
```

#### Angabe der ausgezeichneten Phänomene

Ebenfalls noch im Abschnitt `<encodingDesc>` wird anschließend im
Abschnitt `<editorialDecl>` innerhalb des Unterabschnittes
`<interpretation>` ausgeführt, welche Phänomene im Text ausgezeichnet
wurden. Dadurch können Nutzer der Edition schnell erkennen, was sie von
der Edition zu erwarten haben.

```xml
<editorialDecl>
  <interpretation>
    <p xml:id="biblical-quotations">
    Bibelzitate sind ausgezeichnet und nach den oben angeführten Grundsätzen nachgewiesen.
    </p>
    <p xml:id="places">
    Orte sind ausgezeichnet und mit den IDs des <ref target="https://pleiades.stoa.org/">Pleiades Gazetteers</ref>
referenziert.
    </p>
    <p xml:id="persons">
    Personen sind ausgezeichnet. Biblische Personen sind mit den IDs der <ref target="https://github.com/tyndale/STEPBible-Data">TIPNR - Tyndale Individualised Proper Names with all References</ref>-Liste, alle übrigen Personen und Gruppen mit den IDs der
<ref target="https://lobid.org/gnd">GND</ref> referenziert.
    </p>
  </interpretation>
  ...
</editorialDecl>
```

#### Normalisierung

Innerhalb des Abschnittes `<editorialDecl>` wird in den Unterabschnitten
`<normalization>` und `<punctuation>` beschrieben, inwieweit der
handschriftlich überlieferte Text in der kritischen Edition normalisiert
worden ist.

```xml
<editorialDecl>
  ...
  <normalization>
   <p>
    Angaben zur Handhabung von Großschreibung,
    ν-ephelkystikon, σ: οὕτως, Iota subscriptum/adscriptum,
    Trema, Enklitika, Apostroph/Elisionen, Zahlzeichen, Worttrennung,
    nomina sacra.
   </p>
  </normalization>
  <punctuation>
   <p>
    Angaben zur Normalisierung der Interpunktion: Setzung von Punkt,
    Komma, Semikolon, Fragezeichen, Gedankenstrichen und Klammern
   </p>
  </punctation>
</editorialDecl>
```

#### Art der Auszeichnung der Varianten

Als letztes Element im Abschnitt `<encodingDesc>` wird die Art der
Auszeichnung der textkritischen Varianten angegeben. Der Eintrag muss
lauten:

```xml
<variantEncoding method="parallel-segmentation" location="internal"/>
```

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
    Arbeit befindlichen kritischen Editionen.

### Edition

Die gesamte kritische Edition steht im `<text>`-Teil der Datei. Sie
besteht mindestens aus dem Abschnitt `<div type="edition">`[^30] mit dem
edierten Text, dem aber normalerweise ein Abschnitt
`<div type="praefatio">` mit der Praefatio vorangehen sollte.

#### Praefatio

Die Praefatio bietet in einem Fließtext[^31] alles, was zum Verständnis
des folgenden Textes und seiner Überlieferung notwendig ist. Vor allem
sollte der kritische Wert der Handschriften und ihr gegenseitigen
Verhältnis zueinander dargelegt, antike Übersetzungen und die sonstige
indirekte Überlieferung sowie früheren Ausgaben und Übersetzungen in
moderne Sprachen genannt und in ihrem kritischen Wert gewürdigt werden.

Grundsätzlich ist es dabei sinnvoll, die Angaben, die im `<teiHeader>`
gemacht wurden, zu verlinken.

#### Text

##### Auszeichnung der Textstruktur

Innerhalb des Elements `<div type="edition">` wird die vom Editor
rekonstruierte Textstruktur (entsprechend den Angaben in der
`<refsDecl n="CTS">` im `<teiHeader>`) mit Hilfe von (auch ineinander
geschachtelten) Unterabschnitten `<div>` vom `@type="textpart"`
ausgezeichnet,[^32] wobei folgende Werte für das Attribut `@subtype`
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

-   Kommentierter Text (kommentierte Stelle): `<div type="textpart" subtype="commented" n="Gen:1:1">` 

-   Kommentierung (kommentierte Stelle):
    `<div type="textpart" subtype="commentary" n="Gen:1:1">`[^33]

-   Fragment eines Kommentars: `<div type="textpart" subtype="commentaryfragment" n="1">`

-   Hypopsalmos (nicht nummeriert): `<div type="textpart" subtype="hypopsalmos" n="hypopsalmos">` 

-   Hypothesis (nicht nummeriert): `<div type="textpart" subtype="hypothesis" n="hypothesis">` 

-   Perioche (nicht nummeriert): `<div type="textpart" subtype="perioche" n="perioche">` 
##### Auszeichnung weiterer struktureller Elemente

Die Seitenumbrüche in den Handschriften und früheren Editionen werden
mit Hilfe des Elementes `<pb>` angegeben; die Seitenangabe steht im
Attribut `@n` und auf die Handschrift bzw. Edition wird im Attribut
`@edRef` verwiesen.

```xml
<pb n="126r" edRef="#La"/>
```

##### Auszeichnung von Bibel- und anderen Zitaten (und Anspielungen)

Zitate werden mit Hilfe des Elementes `<quote>` ausgezeichnet und können
ein Attribut `@type` erhalten, so dass zwischen markierten (`marked`)
und nicht-markierten (`unmarked`) Zitaten unterschieden werden kann; für
paraphrasierende Zitate -- soweit sie überhaupt als Zitat markiert
werden -- kann der Wert `paraphrase` verwendet werden. Bei Editionen
biblischer Kommentare erhalten Lemma-Zitate den Wert `lemma`, um sie von
anderen Zitaten zu differenzieren.

Explizite Zitate unter Anführung des Autors des Zitates werden mit dem
Element `<cit>` ausgezeichnet und die das Zitat anführende Phrase darin
mit dem Element `<ref>`. Einschübe im Zitat (wie z.B. „sagte") werden
mit Hilfe von `<seg type="insertion">` ausgezeichnet.

Anspielungen (z.B. auf biblische Geschichten und Ereignisse) werden mit
Hilfe von `<seg type="allusion">` ausgezeichnet.

Pseudo-Zitate können mit Hilfe von `<seg type="psq">` ausgezeichnet
werden.

Bei Bibelzitaten wird die jeweilige Bibelstelle innerhalb des Elementes
`<ref>` mit Verweis auf die Spezifikationen im `<teiHeader>`
(`@decls="#biblical"`) im Attribut `@cRef` angegeben.[^34]

```xml
Καὶ ὥσπερ ἐκεῖ εἴρηται· <quote type="marked">Καὶ προσκολληθήσεται πρὸς τὴν γυναῖκα αὐτοῦ, καὶ ἔσονται οἱ δύο εἰς σάρκα μίαν<ref decls="#biblical" cRef="LXX:Gn:2:24"/></quote>, οὕτως ἡ ψυχὴ ἑνουμένη τῷ θεῷ λόγῳ βοᾷ· <quote type="marked">Ἐκολλήθη ἡ ψυχή μου ὀπίσω σου· ἐμοῦ δὲ ἀντελάβετο ἡ δεξιά σου.<ref decls="#biblical" cRef="LXX:Ps:62:9"/></quote> Εἶχεν οὖν ἡ παλαιὰ συναγωγὴ ἄνδρα τὸν νόμον, ὡς μαρτυρεῖ Ἡσαΐας σήμερον διὰ τοῦ ἀποστόλου φθεγξάμενος· <cit><ref decls="#biblical" cRef="NA:Gal:4:27">Τῇ γὰρ προφητικῇ κατεχρήσατο φωνῇ Παῦλος λέγων· </ref><quote type="marked">Καθὼς γέγραπται ὅτι πολλὰ τὰ τέκνα τῆς ἐρήμου μᾶλλον ἢ τῆς ἔχούσης τὸν ἄνδρα.</quote></cit>
```

##### Auszeichnung von Similia und Quellen

Similia werden mit Hilfe von `<seg type="similar">`, Quellen mit Hilfe
von `<seg type="source>` ausgezeichnet. Die Fundstelle wird innerhalb
des `<seg>`-Elementes in einem `<ref>`-Element angegeben.

```xml
<seg type="similar">ἵνα εἰς βάθος διαδῷ τὴν οἰκείαν ἐνέργειαν ἡ
 βαφή<ref>Athanasius, decr. 12,1</ref>
</seg>
```

##### Auszeichung direkter Rede

Direkte Rede wird mit Hilfe des Elementes `<said>` ausgezeichnet.

```xml
καὶ μή μοι λέγε· <said>οὐκ ἔσχε καιρὸν πολιτεύσασθαι καλῶς.</said>
```

##### Auszeichnung von Namen und Orten

Namen werden mit Hilfe des Elementes `<persName>` ausgezeichnet. Im Fall
von biblischen Personen wird das Attribut `@type` mit dem Wert
`biblical` verwendet und im Attribut `@key` auf die IDs der Liste
„Tyndale Individualised Proper Names with all References"[^35]
verwiesen, bei allen übrigen Personen auf die IDs der „Gemeinsamen
Normdatei" (GND; oder einer anderen Personen-Normdatei)[^36].

Institutionen (wie Synoden oder theologische Gruppierungen)[^37], Völker und sonstige Gruppen werden
mit Hilfe des Elementes `<orgName>` ausgezeichnet und ebenfalls die
GND-ID referenziert.

Orte werden mit Hilfe des Elementes `<placeName>` ausgezeichnet, im
Attribut `@ref` wird auf die ID des Pleiades-Gazetteers (in Form der
kompletten URL) verwiesen.

```xml
ἐπίσκοπον <persName ref="https://lobid.org/gnd/118637797">Βασίλειον</persName> καὶ
<orgName type="synod" ref="https://lobid.org/gnd/16115957-6">τὴν ἁγίαν σύνοδον τῶν πατέρων τῶν ἐν <placeName ref="https://pleiades.stoa.org/places/511268">Νικαίᾳ</placeName> σύνοδον</orgName>.
τοίνυν ὁ <persName type="biblical" key="Adam@Gen.2.19">Ἀδὰμ</persName>
```

##### Auszeichnung der Varianten

Die Auszeichnung der Varianten spiegelt die im Editionsprozess erfolgten
editorischen Entscheidungen, insbesondere die Beurteilung der Varianten
und der stemmatischen Zusammenhänge, wieder und ist *keine* neutrale
Beschreibung des Überlieferungsbestandes, sondern eine Interpretation
desselben.

An jeder Stelle im Text, die in unterschiedlichen Fassungen überliefert
ist, werden die Varianten innerhalb des Elementes `<app>` angegeben, das
ein Attribut `@type` mit dem Wert `textcritical` erhält. Innerhalb
dieses Elementes `<app>` wird der rekonstruierte Text mit dem Element
`<lem>` ausgezeichnet, die als sekundär eingeschätzten Varianten mit dem
Element `<rdg>`, wobei dieses innerhalb eines `<app>`-Eintrages mehrfach
vorkommen darf. Alle im folgenden beschriebenen Arten von varianter
Überlieferung setzen eine Einschätzung der einzelnen Varianten als
primär (`<lem>`) oder sekundär (`<rdg>`) voraus.

*Alle* Variantenträger werden im `<lem>`- und in den `<rdg>`-Elementen
im Attribut `@wit` angegeben, wenn die Variante in einer Handschrift
steht, im Attribut `@source` oder `@resp`, wenn die Variante auf eine
Konjektur in einer Edition oder einer Person zurückgeht.[^38]

Zur Erhöhung der Lesbarkeit für menschliche Rezipienten der Edition
sollten alle Variantenträger innerhalb des Attributes `@wit` in einer
einheitlichen Reihenfolge (und unter Berücksichtigung stemmatischer
Zusammenhänge) präsentiert werden.

Bei mehreren Varianten innerhalb eines `<app>`-Elementes sollen die
verschiedenen `<rdg>`-Einträge so gereiht werden, dass sie desto früher
angeführt werden, je näher sie stemmatisch (nach Einschätzung des
Editors) der `<lem>`-Variante stehen.

In ihrer Genese oder auch sonst als zusammengehörig eingeschätzte
Varianten (`<lem>` und `<rdg>` oder mehrere `<rdg>`-Einträge) können in
einem Element `<rdgGrp>` zusammengefaßt werden.

Der Text der Variante ist immer in seinem vollen Wortlaut anzugeben und
unter keinen Umständen abzukürzen.

##### Typisierung von Varianten

Varianten können ein Attribut `@type` erhalten, mit dessen Hilfe die
Editorin dem Rezipienten der Edition eine Analyse der Variante zur
Verfügung stellt und die dadurch für die Präsentation auch leicht zu
filtern sind. Folgende Werte dieses Attributes sind möglich:

-   `orthographic`, wenn eine Variante vom Editor als nur die
    Schreibweise betreffende, d.h. beispielsweise bei griechischen
    Handschriften mit großer Wahrscheinlichkeit auf Itazismus beruhende
    Variante interpretiert wird.
-   `homoioteleuton` oder `homoiarkton`, wenn eine Variante nach
    Einschätzung der Editorin auf Homoioteleuton oder Homoiarkton
    zurückzuführen ist.
-   `dittography`, wenn eine Variante als Dittographie gedeutet wird.

```xml
<app type="textcritical">
  <lem source="#Sav" cause="conjecture">νομογράφῳ</lem>
  <rdgGrp>
    <rdg wit="#Be #Ab">τῷ νόμῳ γράφει</rdg>
    <rdg wit="#Pt #Pa #Pb #Pd #Ma #Ha #Va" type="orthographic">τῷ νομῳ γράφει</rdg>
  </rdgGrp>
  <rdgGrp>
    <rdg wit="#Pc">τὸν νόμον γράφει</rdg>
    <rdg wit="#My" type="orthographic">τὸν νόμων γράφει</rdg>
  </rdgGrp>
</app>
```

##### Analyse der Gründe für die Variation

Die Ergebnisse der Analyse von Gründen für Varianten werden im Attribut
`@cause` angegeben.

###### Hinzufügungen

Hinzufügungen, auch Dittographien und andere Wiederholungen, werden im
Element `<rdg>` als `<@cause="addition">` ausgezeichnet. Das Element
`<lem>` bliebt dabei leer („self-closing").

```xml
<app type="textcritical">
 <lem wit="#Pt #Pc #Pd #Ma #My"/>
 <rdg wit="#Ha #Pa #Be" cause="addition">καὶ περὶ τοῦ ἁγίου πνεύματος</rdg>
 <rdg wit="#Pb #Va" cause="addition">λόγος πάνυ ὠφέλιμος</rdg>
</app>
```

###### Auslassungen

Auslassungen werden als `<@cause="omission">` ausgezeichnet. Das Element
`<rdg>` bleibt leer („self-closing").

```xml
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha">ἀπεικάζεται καὶ</lem>
 <rdg wit="#Pt #Pc #Pd #Ma #My #Ab" cause="omission"/>
</app>
```

###### Löschungen

Löschungen werden als `<@cause="deletion">` ausgezeichnet, wobei (im
Gegensatz zur Transkription) nicht mehr differenziert wird, wie der Text
gelöscht worden ist.[^39]

Löschungen werden von Auslassungen analytisch dadurch unterschieden,
dass sie auf einen bewussten Eingriff des Schreibers der jeweiligen
Handschrift zurückzuführen sind. Das Element `<rdg>` ist ebenfalls leer
(„self-closing").

```xml
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab">καὶ</lem>
 <rdg wit="#Pb" cause="deletion"/>
</app>
```

###### Nicht lesbarer Text

Nicht lesbarer Text wird als `<@cause="illegible">` ausgezeichnet. Das
Element `<rdg>` ist leer („self-closing").

```xml
<app type="textcritical">
 <lem wit="#Pt #Pc #Pa #Be #Pb #Pd #Ma #My #Va #Ab">καὶ</lem>
 <rdg wit="#Ha" cause="illegible"/>
</app>
```

###### Umstellungen

Umstellungen werden als `<@cause="transposition">` ausgezeichnet.

```xml
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha">τὰ τοῦ θεοῦ</lem>
 <rdg wit="#Pt #Pc #Pd #Ma #My #Ab" cause="transposition">τοῦ
   θεοῦ τὰ</rdg>
</app>
```

Umstellungen, die längere Textpassagen betreffen, werden -- besonders
wenn sie sich über strukturelle Einheiten hinweg erstrecken -- als
Auslassung und Hinzufügung ausgezeichnet, wobei beide `<app>`-Elemente
jeweils ein Attribut `@xml:id` erhalten und auf das jeweils andere mit
Hilfe der Attribute `@prev` und `@next` verwiesen wird.[^40]

###### Korrekturen durch Schreiber

Korrekturen des Textes durch den Schreiber oder einen späteren Korrektor
werden so ausgezeichnet, dass im Element `<rdg>` mit Hilfe des
Attributes `@varSeq` die Reihenfolge der verschiedenen Stadien der
Überlieferung angegeben wird.

Ist eine durch Korrektur entstandene Variante mit einer anderen Variante
identisch, so kann dieser anderen Variante ein eindeutiger Identifikator
im Attribut `@xml:id` gegeben werden und die korrigierende Variante im
Attribut `@copyOf` auf diesen Identifikator verweisen; das Element
`<rdg>` ist in diesem Falle leer („self-closing").

Das Element `<rdg>` kann zusätzlich das Attribut `@hand` enthalten,
wobei der Schreiber (`#m1`) und die Korrektoren (`#m2`, `#m3`, ... --
allgemein `#mr` für *manus recentior*) unterschieden werden sollten. Ist
nicht zu entscheiden, von welcher Hand eine Korrektur vorgenommen worden
ist, erhält das Attribut den Wert `unknown`.

Der Ort der Korrektur wird mit Hilfe des Attributes `@style` angegeben;
mögliche Werte sind `supralinear`, `marginal` und `inline`.

```xml
<app type="textcritical">
 <lem wit="#Pa #Pb #Ha #Va" xml:id="lem178">ὁ γενναῖος ἐκεῖνος</lem>
 <rdg wit="#Be" varSeq="1" cause="transposition">ἐκεῖνος ὁ γενναῖος</rdg>
 <rdg wit="#Be" varSeq="2" hand="m2" style="supralinear" copyOf="#lem178"/>
</app>
```

Mikroskopische Textersetzungen (wie z.B. die Ersetzung einzelner
Buchstaben innerhalb eines Wortes) werden besser wie bei der
Handschriftentranskription innerhalb eines `<subst>`-Elementes mit dem
Element `<del>` (ersetzter Text) und dem Element `<add>` (ergänzter
Text) ausgezeichnet. Wird bei einer Korrektur nur Text hinzugefügt oder
getilgt, so wird nur das Element `<add>` bzw. `<del>` verwendet.

```xml
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab">ἔχωμεν</lem>
 <rdg wit="#Ha">ἔχ<subst>
   <del hand="m2">ο</del>
   <add hand="m2" place="above">ω</add>
  </subst>μεν</rdg>
</app>
```

###### Konjekturen durch Editoren

Konjekturen werden als `<@cause="conjecture">` ausgezeichnet: Erfolgt
dies im Element `<lem>`, so handelt es sich um eine Emendation des
Editors, erfolgt dies im Element `<rdg>`, so handelt es sich um eine vom
Editor nicht übernommene Konjektur anderen Ursprunges.

Korrekturen kleinerer Fehler (bzw. orthographische Normalisierungen),
die nicht die Höhe einer Konjektur erreichen, werden als
`<@cause="correction">` ausgezeichnet.

```xml
<app type="textcritical">
 <lem resp="#AvS" cause="correction">οὐκ</lem>
 <rdg wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab">οὐχ</rdg>
</app>
```

Vorschläge von Konjekturen (*proposuit* oder *dubitanter*) werden im
Element `<rdg>` als `<@cause="proposition">` ausgezeichnet. Ggfs. kann
der Wahrscheinlichkeitsgrad des Zutreffens im Attribut `@cert`
festgehalten werden; mögliche Werte sind: `low`, `medium`, `high`.

```xml
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab">ψευδόμενος</lem>
 <rdg resp="#AvS" cause="proposition" cert="low">ἀδικῶν</rdg>
</app>
```

Vom Editor getilgter Text wird mit `<@cause="deletion">` in einem
ansonsten leeren („self closing") Element `<lem>` ausgezeichnet.
Tilgungen durch andere Editoren werden ebenfalls als
`<@cause="deletion">` ausgezeichnet. Wird der getilgt Text angeführt, so
wird er mit Hilfe des Elementes `<surplus>` ausgezeichnet; ansonsten
bleibt das Element leer.

```xml
<app type="textcritical">
 <lem resp="#AvS" cause="deletion"/>
 <rdg wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab">οὐκ</rdg>
</app>
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab">οὐκ</lem>
 <rdg source="#Sav" cause="deletion"><surplus>οὐκ</surplus></rdg>
</app>
```

Durch Emendation hinzugefügter Text wird mit `<@cause="addition">`
ausgezeichnet. Die handschriftlich überlieferte Variante wird im Element
`<rdg>` mit `@cause="omission"` ausgezeichnet; das Element selbst bleibt
leer („self closing").

```xml
<app type="textcritical">
 <lem resp="#AvS" cause="addition">οὐκ</lem>
 <rdg wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab"
  cause="omission"/>
</app>
```

Auf den Autor einer Konjektur, Emendatio oder Korrektur wird im Attribut
`@resp` bzw. im Falle einer aus einer Edition übernommenen Konjektur im
Attribut `@source` verwiesen (im Gegensatz zum Attribut `@wit` für
Handschriften).

```xml
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab">ψευδόμενος</lem>
 <rdg source="#Savile1612" cause="conjecture">ἀδικῶν</rdg>
 <rdg resp="#AC" cause="conjecture">ψευσάμενος</rdg>
</app>
```

###### Lücken im Text

Von der Editorin vermutete Lücken im überlieferten Textbestand werden
mit `<gap reason="missing">` ausgezeichnet. Die vermutete Ausdehnung
(`@quantity`) der Lücke wird, wo es sinnvoll und möglich erscheint, in
Buchstaben, Zeilen oder Seiten (`@unit` mit Wert `character`, `line`
oder `page`) angegeben.

Wird die Feststellung einer Lücke von einem früheren Editor übernommen,
so wird die Quelle im Attribut `@source` bzw. `@resp` angeführt.

```xml
Ταῦτα λέγω εἰς <gap reason="missing"/> ση τοὺς καταφεύγοντας κατέλαβεν τότε κατακλυσμός, 
```

Von anderen Editoren vermutete, aber nicht übernommene Lücken werden in
einem Apparateintrag als `<rdg>` ausgezeichnet und erhalten das Attribut
`@cause="lacunam_indicavit"`. Das Element ist leer („self closing").

```xml
<app type="textcritical">
 <lem wit="#Pa #Be #Pb #Va #Ha #Pt #Pc #Pd #Ma #My #Ab"/>
 <rdg wit="#Sav" cause="lacunam_indicavit"/>
</app>
```

###### Crux

Vom Editor nicht zu emendierender, aber sicher verderbter Text („Crux")
wird mit Hilfe des Elementes `<sic>` ausgezeichnet. Das Element kann
dabei sowohl den verderbten Text umschließen oder als
selbst-schließendes Element die Stelle der Verderbnis markieren.

```xml
καὶ ὅσα ὁ νόμος <sic>διαγορεύει</sic>, ὅσα προφῆται <sic/> θεσπίζουσιν 
```

###### Ineinander geschachtelte Varianten

Varianten können auch ineinander geschachtelt werden. Das Lemma des
übergreifenden Apparatus-Eintrages erhält in diesem Fall kein Attribut
`@wit`.[^41]

Der innere Apparatus-Eintrag muss unbedingt im Element `<lem>`, d.h. im
rekonstruierten Text, des äußeren Apparatus-Eintrages stehen.

```xml
<app type="textcritical">
 <lem>οὐδεμίαν 
  <app type="textcritical">
   <lem wit="#Pt #Pc #Pa #Be #Pd #Ma #My #Ha #Va">εὑρήσεις</lem>
   <rdg wit="#Pb" type="orthographic">εὑρήσῃς</rdg>
  </app>
 </lem>
 <rdg wit="#Ab" cause="omission"/>
</app>
```

##### Ökonomische Schreibweise

In ihrer Genese zusammengehörige Variantenteile sollten, solange die
Variantenträger identisch sind, zur Erhöhung der Lesbarkeit möglichst
zusammengefasst werden.

```xml
<app type="textcritical">
 <lem wit="#Pt #Pc #Pa #Be #Pb #Pd #Ma #My #Va #Ab">καὶ νῦν</lem>
 <rdg wit="#Ha" cause="omission"/>
</app>
```

und nicht:

```xml
<app type="textcritical">
 <lem wit="#Pt #Pc #Pa #Be #Pb #Pd #Ma #My #Va #Ab">καὶ</lem>
 <rdg wit="#Ha" cause="omission"/>
</app>
<app type="textcritical">
 <lem wit="#Pt #Pc #Pa #Be #Pb #Pd #Ma #My #Va #Ab">νῦν</lem>
 <rdg wit="#Ha" cause="omission"/>
</app>
```

##### Überlappungen

Ein aus der Struktur der Auszeichnungssprache XML resultierendes Problem
bilden Überlappungen von Elementen untereinander.[^42]

Überschneiden sich Elemente unterschiedlicher Kategorie, also z.B. eine
textkritische Anmerkung und ein Zitat, so ist dem Element `<app>` der
Vorrang einzuräumen und das Element `<quote>` aufzuteilen, wobei die
zusammengehörigen Teile des Elementes mit Hilfe der Attribute `@prev`
und `@next`, die auf die im Attribut `@xml:id` jeweils zugeteilte ID
verweisen, miteinander verbunden werden:

```xml
Διὰ τί ἐσαλεύθησαν θεμέλιοι τῆς δημιουργίας; <quote xml:id="qu1-1" next="#qu1-2">Τί σοι ἐστί,</quote>
<app type="textcritical">
  <lem wit="#Pc #Pt #My">
<quote xml:id="qu1-2" prev="#qu1-1">θάλασσα, ὅτι ἔφυγες;<ref decls="#biblical" cRef="LXX:Ps:113:3"/></quote> τί ἔλυσας τὸν ὅρον τοῦ νομοθέτου, τοῦ κελεύσαντός σοι <quote xml:id="qu2-1" next="#qu2-2">Μέχρι τούτου ἐλεύσῃ</quote>
  </lem>
  <rdg wit="#Pd" cause="omission"/>
</app>
<quote xml:id="qu2-2" prev="#qu2-1">καὶ οὐχ ὑπερβήσῃ<ref decls="#biblical" cRef="LXX:Job:38:11"/></quote>;
```

Überschreitet eine Variante eine Gliederungsebene, so muss dieser der
Vorrang eingeräumt und das Element `<app>` analog dem obigen Vorgehen
aufgeteilt und untereinander verlinkt werden.

```xml
...
<app type="textcritical" xml:id="app1-1" next="#app1-2">
<lem wit="#Pt #Pb #My #Ha #Va #Ab">οὐδὲ γάρ ἐστι καλὸν τὸ ἔξω τοῦ οἴκου τοῦ θεοῦ πολιτεύεσθαι.</lem>
<rdg wit="#Pc #Pd #Ma">οὐδὲν</rdg>
</app>
</p>
</div>
<div type="textpart" subtype="section" n="2">
    <p>
        <app type="textcritical" xml:id="app1-2" prev="#app1-1">
            <lem wit="#Pt #Pb #My #Ha #Va #Ab">εὑρήσεις</lem>
            <rdg wit="#Pc #Pd #Ma" type="orthographic">εὑρήσης</rdg>
        </app>
...
```

##### Kommentierung textkritischer Entscheidungen

Erscheint es nötig, textkritische Überlegungen, die über die Typisierung
(mit Hilfe des Attributes `@type`) oder die Angabe von Ursachen (mit
Hilfe des Attributes `@cause`) hinausgehen, auszuführen, so kann dafür
an Ort und Stelle innerhalb des Elementes `<app>` ein Element `<note>`
für Bemerkungen, die das gesamte `<app>`-Element betreffen, oder ein
Element `<witDetail>` für Bemerkungen, die sich auf eine spezielle
Handschrift bezieht, angefügt werden. Das Element `<app>`, `<lem>` oder
`<rdg>` erhält in diesem Fall ein Attribut `@xml:id`, auf das im Element
`<note>` bzw. `<witDetail>` in einem Attribut `@target` verwiesen wird.

```xml
<app type="textcritical">
  <lem wit="#Pt #Pc #Pb #Pd #My #Ma #Ha #Va #Ab">ἀπαστράπτει</lem>
  <rdg wit="#Pa #Be" xml:id="lac-Pa">ἀ</rdg>
  <witDetail wit="#Pa" target="#lac-Pa">Blattausfall.</witDetail>
</app>
```

##### Bezeugung des Textes

Die handschriftliche Bezeugung des Textes wird im Element `<app>` mit
dem Attribut `@type="witnesses"` dokumentiert. Das Element enthält nur
ein Element `<rdg>` mit dem Attribut `@wit`, in dem eines der
selbst-schließenden Elemente `<witStart/>`, `<witEnd/>`,
`<lacunaStart/>` oder `<lacunaEnd/>` eingefügt wird.

```xml
<app type="witnesses">
    <rdg wit="#Ecl114"><witStart/>μεμαρτύρητο</rdg>
</app>
...
<app type="witnesses">
 <rdg wit="#Pa #Be">εἰ<lacunaEnd/></rdg>
</app>
```

## Dateien-Struktur jeder Edition {#dateistruktur}

Für eine möglichst einfache Wiederbenutzbarkeit sind schließlich auch
eine einheitliche Benennung der einzelnen Dateien und eine strukturierte
Dateiablage sinnvoll. Das „Patristic Text Archive" folgt hier den
„Capitains Guidelines"[^43] und verwendet CTS URNs:[^44] Innerhalb eines
Ordners `data` erhält jeder Autor (oder jede Werkgruppe) einen Ordner,
der nach der ID für den Autor oder die Werkgruppe benannt ist. Innerhalb
dieses Ordners befinden sich Unterordner, die jeweils nach der IDs für
das einzelne Werk benannt sind. In jedem Ordner befindet sich eine Datei
`__cts__.xml`, die die Metadaten für die Daten der jeweiligen Ebene
enthalten.

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

Die Dateinamen folgen den CTS URNs und sind folgendermaßen aufgebaut:
Das Kürzel „pta0013“ steht dabei für den Autor Amphilochius und „pta003“
für das Werk „Epistula synodalis“. Der letzte Teil der URN identifiziert
die spezifische „Edition" eines Werkes: Im Beispiel sind das die
kritische Edition des griechischen Textes (pta-grc1), die deutsche
Übersetzung (pta-deu1) und die Transkriptionen der vier Handschriften
(pta-MsLa, pta-MsPg, pta-MsPs, pta-MsVi).

[^1]: Diese Editionsrichtlinien sind eine leicht gekürzte, aber auf Version 2.0 des [Schemas](https://github.com/PatristicTextArchive/Schema) hin aktualisierte Fassung von Annette v. Stockhausen, Die Modellierung kritischer Editionen im digitalen Zeitalter, ZAC 24 (2020), 123–160. Dieses Schema hat seinen Ursprung in den [Epidoc Guidelines](http://www.stoa.org/epidoc/gl/latest/), hat diese aber erheblich erweitert und verändert. Dem PTA-Schema vergleichbare Regeln finden sich in den [Guidelines for Encoding Critical Editions for the Library of Digital Latin Texts](https://github.com/DigitalLatin/guidelines), bei deren Regelungen allerdings an vielen Stellen das Druckparadigma zu deutlich     durchscheint, und im [Lombard Press Schema](https://github.com/lombardpress/lombardpress-schema).

[^2]: Die TEI Richtlinien bieten für viele Fälle mehrere gleichermaßen
    gültige Lösungen an. Dieser Umstand erschwert in der Praxis die
    Zusammenführung von TEI kodierten Editionen aus unterschiedlichen
    Quellen in ein größeres Textkorpus und führt damit oftmals zur
    Silo-Bildung. Diese Gefahr besteht natürlich auch bei Schaffung
    jeweils eigener TEI-Varianten weiter, so dass eine Normierung für
    bestimmte Anwendungsszenarien, wie z.B. das einer digitalen
    kritischen Edition, zu wünschen ist.

[^3]: Ergänzende Hinweise oder Korrekturvorschläge sind willkommen, eine
    Weiterentwicklung des Schemas ist beabsichtigt.

[^4]: Diese Vorteile werden natürlich nur dann vollumfänglich wirksam,
    wenn die digitale Edition samt ihren Forschungsdaten im Open Access
    publiziert wird.

[^5]: Daneben sollten auch die zur Erstellung der Kollation verwendeten
    Programme bzw. Skripte sowie die von diesen erstellten Tabellen
    (oder Graphen) publiziert werden.

[^6]: Ein eklatantes Beispiel ist in dieser Hinsicht das mit der
    Elimination einhergehende Wegfallen von Daten in der gedruckten
    Edition, die eine – über die in der Praefatio hinausgehende –
    Überprüfung der These, dass es sich um einen *Codex descriptivus*
    handelt, unmöglich und vor allem bei einer anderen Einschätzung eine
    Neukollation oder -transkription dieses Codex unumgänglich macht.

[^7]: Diese Entscheidungen sollten aber unbedingt da, wo eine
    Rekonstruktion eines Textes (oder mehrerer Rezensionen/Fassungen
    eines Textes) möglich ist, auch vom Editor (z.B. durch die
    Verwendung des Elementes `<lem>`) gefällt und nicht dem Rezipienten
    überlassen werden.

[^8]: Es werden folgende Schreibkonventionen verwendet: Mit `<element>`
    sind XML-Elemente gemeint, mit `@attribut` XML-Attribute und mit
    `Wert` die den Attributen zugeschriebenen Werte; `#` bedeutet, dass
    es sich um einen an anderer Stelle in der TEI-Datei definierten
    Identifikator handelt, auf den an dieser Stelle verwiesen wird.
    Allen Regelungen wird ein Beispiel beigegeben, in dem die jeweilige
    Regelung angewendet ist. Ein Beispiel für eine komplette kritische
    digitale Edition ist [Annette v. Stockhausen, Eine kritische (Neu-)Edition der »Epistula synodalis« des Amphilochius von Ikonium](https://github.com/pharos-alexandria/Amphilochius-EpSyn).

[^9]: Ausführliche Informationen zu allen im TEI-Standard zugelassenen
    Elementen bieten die [TEI-Richtlinien](https://www.tei-c.org/release/doc/tei-p5-doc/de/html/index.html).

[^10]: Wichtig ist in diesem Abschnitt vor allem die Angabe mit den IDs
    (`<idno>`), da dadurch die Austauschbarkeit und Verlinkung der Daten
    erhöht wird.

[^11]: In diesem Abschnitt unterscheiden sich die Angaben in den drei
    Arten von Dateien signifikant.

[^12]: Thibault Clérice, Matthew Munson, & Bridget Almas. (2017, May 2). Capitains/Capitains.github.io: 2.0.0 (Version 2.0.0). Zenodo. <http://doi.org/10.5281/zenodo.570516>. Das Patristic Text Archive folgt diesen
    Guidelines, weil dadurch die Interoperabilität mit den Editionen
    z.B. der [Perseus Digital Library](http://www.perseus.org) oder
    des [Open Greek and Latin Project](https://www.dh.uni-leipzig.de/wo/projects/open-greek-and-latin-project/)
    gewährleistet ist, auch wenn diese Editionen auf das Epidoc-Schema
    (s. oben Anm. 1) zurückgreifen.

[^13]: Zurückgegriffen wird dabei auf die Texttypenklassifikation
    <https://www.comphistsem.org/46.html>.

[^14]: Es ist sicherlich eine der Lehren aus der Kritik der „New
    Philology", die einzelne Handschrift als Zeugen der Rezeption eines
    Textes zu einem fixierten Zeitpunkt und in einem spezifischen
    Entstehungskontext ernst zu nehmen, vgl. exemplarisch den
    grundlegenden Artikel von Stephen G. Nichols, „Introduction: Philology in a Manuscript Culture“, Speculum 65 (1990): 1–10, und jüngst für
    den Kontext religiöser Literatur Liv Ingeborg Lied und Hugo Lundhaug, „Studying Snapshots: On Manuscript Culture, Textual Fluidity, and New Philology“, in Dies., Hgg., Snapshots of Evolving Traditions, Jewish and Christian Manuscript Culture, Textual Fluidity, and
New Philology (Texte und Untersuchungen zur Geschichte der altchristlichen Literatur 175;
Berlin, 2017), 1–19. Allerdings
    würde es für die meisten in mittelalterlichen Handschriften
    überlieferten Texte im Falle einer strikten Anwendung der „New
    Philology" mit ihrer Fixierung auf die physisch fassbare Handschrift
    gegenüber dem rekonstruierten, hypothetischen (und daher nie durch
    physisch vorhandene Exemplare gedeckten) Text – die Fiktion der
    „Lachmannschen Methode" ist natürlich, dass idealiter und potentiell
    der rekonstruierte Text des Archetyps einmal in einer physischen
    Handschrift entdeckt wird – vor allem bei nicht anonym oder
    eindeutig pseudepigraph überlieferten Texten bedeuten, ganz von den
    spätantiken Autoren (und nicht nur von ihnen) Abschied zu nehmen,
    ist der „normale" Überlieferungsfall für z.B. griechische spätantike
    Autoren doch, dass ihre handschriftliche Überlieferung erst nach der
    Umschrift von der Maiuskel in die Minuskel und damit im 9. Jh.
    beginnt, und wir damit niemals auch nur annähernd bis auf den Autor
    selbst zurückkommen. Und im Gegensatz zur Grundannahme z.B. von
	Lied/Lundhaug gibt es eben auch sehr viele Texte, die in
    ihrer Überlieferung nicht so fluide sind, bei denen die Varianz in
    der Überlieferung der einzelnen Worte nicht so groß ist und die
    nicht nur durch singuläre Handschriften überliefert sind, dass eine
    Rekonstruktion eines Archetyps nicht möglich wäre. Solche Texte (und
    Gattungen) existieren freilich auch und sie sind dementsprechend
    anders zu behandeln. Die Beurteilung der Fluidität von Texten oder
    der Möglichkeit der Rekonstruktion eines Archetyps ist von Fall zu
    Fall zu entscheiden und die daraus folgenden editorischen
    Konsequenzen dementsprechend zu ziehen. Was aber in allen Fällen
    gleich bleibt, ist bei einer digitalen Edition, dass die
    Transkription der Handschrift(en) der erste Schritt ist.

[^15]: Für die schnellere Eingabe werden im Berliner Akademienvorhaben
    die Transkriptionen anstelle von im unten beschriebenen TEI-XML als
    Plaintext-Datei mit Hilfe einer eigens entwickelten Kurzschrift
    (Domain Specific Language) erstellt, die anschließend mit Hilfe
    eines Python-Skriptes in eine Schema-konforme TEI-XML-Datei
    konvertiert werden, vgl.
    <https://github.com/PatristicTextArchive/transcription_dsl>.

[^16]: Im Berliner Akademienvorhaben wird dafür das Programm [CollateX](https://web.archive.org/web/20200329141404/https://collatex.net/)
    verwendet, wobei die Transkriptionsdateien mit Hilfe eines
    Python-Skripts (<https://github.com/PatristicTextArchive/collator>)
    in das für CollateX nötige Eingabeformat konvertiert werden.
    Kleinere Fehler bei der Ausrichtung der Kollationstabelle können
    dabei nachträglich manuell korrigiert werden. Ein Beispiel für ein
    solches Kollationsergebnis ist bei <https://github.com/pharos-alexandria/Amphilochius-EpSyn> im Ordner
    „collation" zu betrachten, vgl. auch die Readme-Datei ebd.

[^17]: Vgl. die ausführliche Diskussion zu „Transkription“ bei Patrick Sahle, Digitale Editionsformen. Zum Umgang mit der Überlieferung unter den Bedingungen des Medienwandels. Teil 3:
Textbegriffe und Recodierung. [Preprint-Fassung] (Dissertation Universität zu Köln; Köln, 2013),
253–342, außerdem zum dokumentarischen Editionsparadigma exemplarisch Elena Pierazzo,
„Digital Documentary Editions and the Others“, Journal of the Text Encoding Initiative 35
(2014): <http://www.scholarlyediting.org/2014/essays/essay.pierazzo.html>.

[^18]: Aus pragmatischen Gründen werden aber im Berliner
    Akademienvorhaben z.B. nicht alle Diakritika wie das bei
    griechischen Handschriften häufig gesetzte Trema über Iota und
    Ypsilon und vor allem nicht die Verwendung von Ligaturen
    ausgezeichnet. – Das zugrunde gelegte Schema ist dafür aber offen,
    so dass durchaus solche Phänomene aufgenommen werden können, wenn es
    gewünscht ist, für die mit der Edition verfolgte Fragestellung
    sinnvoll bzw. der zusätzliche Arbeitsaufwand im Blick auf mögliche
    Nachnutzungen der Transkriptionen für andere Fragestellungen als die
    eigene als vertretbar erscheint.

[^19]: Das Element erhält eine eigene `@xml:id`, die für die
    Identifikation der Handschrift bei der Kollation ausgelesen wird.

[^20]: Das Attribut `@xml:id` wird dabei in der Edition als
    Identifikator referenziert und ist auf jeden Fall zu setzen; daneben
    stehen noch weitere Attribute zur Verfügung, z.B. kann das Attribut
    `@scribe` verwendet werden, wenn der Schreiber namentlich bekannt
    ist.

[^21]: Das Element enhält außerdem noch zwei Attribute: `@xml:lang` mit
    der Angabe der Sprache der Handschrift und `@n` mit der URN der
    Datei.

[^22]: Der Text wird dabei durch das Element `<seg>` weiter unterteilt,
    dem jeweils auch eine `@xml-id` zugewiesen wird, um so die Bezüge
    zwischen den korrespondieren Teilen (Text, Kommentar) auszeichnen zu
    können.

[^23]: Handelt es sich um ein Lemma, so nimmt das Element das Attribut
    `@type` mit dem Wert `lemma` an.

[^24]: Der zu ersetzende Text ist überhaupt nicht explizit markiert

[^25]: Der zu ersetzende Text ist mit einem Zeichen (z.B. einem Obelus
    o.ä.) markiert

[^26]: Analog – abgesehen vom `@type="nomSac"` – kann bei anderen
    Abkürzungen und Ligaturen vorgegangen werden.

[^27]: Die Datei mit der Transkription der Handschrift kann dabei im
    Attribut `@corresp` verlinkt werden.

[^28]: Dadurch kann diese Handschrift (und alle von ihr bezeugten
    Textvarianten) z.B. für die Präsentation im Druck durch das
    Transformationsskript eliminiert werden.

[^29]: Eine maschinenlesbare Fassung der Datierung kann in den
    Attributen `@notBefore` und `@notAfter` bzw. `@when` geboten werden.

[^30]: Das Element enthält außerdem noch zwei Attribute: `@xml:lang` mit
    der Angabe der Sprache des edierten Textes und `@n` mit der URN der
    Datei.

[^31]: Unterabschnitte können mit Hilfe von `<div type="section" n="1">`
    eingerichtet werden, die im Element `<head>` auch eigene
    Überschriften enthalten können.

[^32]: Absätze innerhalb dieser Unterabschnitte werden mit Hilfe des
    Elements `<p>` ausgezeichnet.

[^33]: Das kommentierte Lemma wird in der kritischen Edition, soweit sie
    den Kommentar im Fokus hat, (im Gegensatz zur Transkription) im
    Element `<head>` angegeben.

[^34]: Für andere Quellen von Zitaten neben der Bibel muss ggfs. im
    `<teiHeader>` eine eigene `<refsDecl>` vorgenommen werden.

[^35]: [STEPBible-Data/TIPNR - Tyndale Individualised Proper Names with all References - TyndaleHouse.com STEPBible.org CC BY-NC.txt](https://github.com/tyndale/STEPBible-Data/blob/master/TIPNR%20-%20Tyndale%20Individualised%20Proper%20Names%20with%20all%20References%20-%20TyndaleHouse.com%20STEPBible.org%20CC%20BY-NC.txt)

[^36]: Vgl. [lobid-gnd — Rechercheoberfläche & LOD-API für die GND](https://lobid.org/gnd).

[^37]: Dem Element kann zur Differenzierung auch ein Attribut `@type`
    z.B. mit den Werten `synod` oder `faction` zugewiesen werden.

[^38]: Bei einer gedruckten Edition würde man also von einem positiven
    Apparat sprechen, mit der Besonderheit, dass im Fall der digitalen
    kritischen Edition auch die Lesarten von *codices descripti*
    angegeben werden. Der Schritt der Elimination bzw. die Reduktion des
    positiven Apparates auf einen negativen Apparat kann, muss aber
    nicht, bei der Aufbereitung der Daten für die Präsentation (im Druck
    oder online) durchgeführt werden. In dieser Unterscheidung von
    vollständiger Datenaufnahme, die die Nachvollziehbarkeit und die
    Überprüfbarkeit der editorischen Entscheidungen in viel höherem Maße
    als bisher ermöglicht, und ggfs. selektiver Präsentation besteht
    also, wie gesagt, der kategoriale Unterschied zwischen der
    überkommenen kritischen Edition im Druck und der kritischen
    digitalen Edition.

[^39]: Diese Information ist jederzeit der Transkriptions-Datei zu
    entnehmen. Auch deswegen werden zur leichteren Wiederauffindbarkeit
    in der Editionsdatei die Seitenumbrüche in den einzelnen
    Handschriften vermerkt.

[^40]: S. unten im Abschnitt „Überlappungen".

[^41]: Die Bezeugung läßt sich aus den `@wit`-Attributen der Elemente
    `<lem>` und `<rdg>` des inneren Apparat-Eintrages errechnen.

[^42]: Vgl. dazu auch das Kapitel „Non-hierarchical Structures" in den
    [TEI-Richtlinien](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/NH.html). Nach
    Möglichkeit sollte entsprechend der ebd. genannten Methode
    „Fragmentation and Reconstitution of Virtual Elements" vorgegangen
    werden.

[^43]: Vgl. oben Anm. 12

[^44]: Vgl.
    [Homer Multitext Project: An overview of the CTS URN notation](http://www.homermultitext.org/hmt-docs/cite/cts-urn-overview.html)
    und Christopher W. Blackwell und Neel Smith, „The CITE Architecture: a Conceptual and Practical Overview“, in Monica Berti, Hg., Digital Classical Philology. Ancient Greek and Latin in the Digital Revolution (Age of Access? Grundfragen der Informationsgesellschaft 10; Berlin, 2019), 73–93. Für das „Patristic Text Archive" wurde ein eigener CTS Namespace und eine eigene Registratur („Clavis")
    angelegt.
