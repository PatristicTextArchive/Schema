<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
   <title>ISO Schematron rules</title>
   <!-- This file generated 2025-06-03T10:29:18Z by 'extract-isosch.xsl'. -->
   <!-- ********************* -->
   <!-- namespaces, implicit: -->
   <!-- ********************* -->
   <ns prefix="esp-d3e440" uri="http://www.telota.de"/>
   <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
   <!-- ******************************************************** -->
   <!-- constraints in eng, und, mul, zxx, of which there are 29 -->
   <!-- ******************************************************** -->
   <pattern id="schematron-constraint-teiHeader-1">
      <rule context="tei:teiHeader">
         <assert test="child::tei:fileDesc and child::tei:encodingDesc and child::tei:profileDesc and child::tei:revisionDesc"> Needs fileDesc, encodingDesc, profileDesc and revisionDesc</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-fileDesc-2">
      <rule context="tei:fileDesc">
         <assert test="child::tei:titleStmt and child::tei:publicationStmt and child::tei:sourceDesc"> Needs titleStmt, publicationStmt and sourceDesc</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-sourceDesc-3">
      <rule context="tei:sourceDesc">
         <assert test="child::tei:msDesc or child::tei:listWit or child::tei:listBibl or child::tei:p"> Needs msDesc (in a ms transcription) or listWit/listBibl (in an edition) or p (in a translation) as child</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-witness-4">
      <rule context="tei:witness">
         <assert test="child::tei:abbr and child::tei:name and child::tei:origDate and child::tei:locus"> Needs abbr, name, origDate and locus as children</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-encodingDesc-5">
      <rule context="tei:encodingDesc">
         <assert test="child::tei:refsDecl[@n='CTS'] and child::tei:refsDecl[@xml:id='biblical'] and child::tei:refsDecl[@xml:id='pta'] and child::tei:refsDecl[@xml:id='perseus'] and child::tei:editorialDecl and child::tei:classDecl and child::tei:schemaRef"> Needs refDecl for CTS, biblical, PTA and Perseus library references, editorialDecl, classDecl and schemaRef</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-witness-6">
      <rule context="tei:revisionDesc">
         <assert test="count(child::tei:change) &gt; 0"> Needs at least one change element as child</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-profileDesc-7">
      <rule context="tei:profileDesc">
         <assert test="child::tei:creation and child::tei:textClass"> Needs creation and textClass as children</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-creation-8">
      <rule context="tei:creation">
         <assert test="child::tei:date and child::tei:placeName"> Needs date and placeName as children</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-textClass-9">
      <rule context="tei:textClass">
         <report test="count(tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listWit) &gt; 0 and not(child::tei:keywords[@scheme='#comphistsem'] and child::tei:keywords[@scheme='#editionstatus'])"> Edition needs keyword schemes for text type classification and edition status as children</report>
         <report test="count(tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc) &gt; 0 and not(child::tei:keywords[@scheme='#comphistsem'])"> Transcription needs keyword scheme for text type classification as child</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-keywords-10">
      <rule context="tei:keywords">
         <assert test="child::tei:term">Needs term as child</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-div-11">
      <rule context="tei:div">
         <report test="(@type='edition' or @type='translation' or type='commentary') and not(parent::tei:body)"> body element needs a child div of @type="edition|translation|commentary"</report>
         <report test="@type='textpart' and not(parent::tei:div/@type='textpart' or parent::tei:div/@type='edition' or parent::tei:div/@type='translation' or parent::tei:div/type='commentary')"> div of @type="textpart" needs a parent div of @type="textpart" or @type="edition|translation|commentary"</report>
         <report test="(@type='edition' or @type='translation' or type='commentary') and not(@xml:lang)"> div of @type="edition|translation|commentary" needs an language attribute</report>
         <report test="(@type='edition' or @type='translation' or type='commentary') and not(contains(@n,'urn:cts:pta'))"> div of @type="edition|translation|commentary" needs a reference to the URN</report>
         <report test="@type='textpart' and not(@n)"> @type=textpart needs to be numbered</report>
         <report test="@type='praefatio' and not(count(child::tei:div[@type='section']) &gt; 0) and count(child::tei:div[not(@type='section' or @type='subsection')]) = 0">Praefatio should contain sections and/or subsections, and must not contain divs without a type.</report>
         <report test="@subtype and not(@type='textpart')"> @subtype may only be used together with @type=textpart</report>
         <report test="@ana and not(@subtype='commentary')"> @ana may only be used together with @subtype=commentary</report>
         <report test="@type='edition' and count(descendant::tei:app[@type='variants']) &gt; 0 and not(count(descendant::tei:app[@type='witnesses']) &gt; 0)">If variants are encoded, also witnesses must be encoded (missing app[@type='witnesses'])</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-emph-12">
      <rule context="tei:emph">
         <report test="not(ancestor::tei:div[@type='praefatio' or @type='translation'])">
            <name/> may only be used in the praefatio of an edition or in an translation</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-unclear-13">
      <rule context="tei:unclear[not(ancestor::tei:rdg) and not(ancestor::tei:lem)]">
         <report test="not(@reason and @cert)">@reason and @cert are to be used in unclear</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-unclear-14">
      <rule context="tei:unclear[ancestor::tei:rdg or ancestor::tei:lem]">
         <report test="@reason or @cert">@reason and @cert are not to be used in rdg or lem</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-gap-15">
      <rule context="tei:gap">
         <report test="@quantity and @extent">gap may have @quantity (a figure) or @extent (a descriptive text value) but not both</report>
         <report test="@quantity and not(@unit)">If gap has @quantity then @unit is required</report>
         <report test="not(@reason='missing') and ancestor::tei:supplied[not(@reason='undefined')]">gap may not appear within supplied text</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-ref-16">
      <rule context="tei:ref">
         <report test="ancestor::tei:div[@type='edition' or @type='translation' or @type='commentary'] and not(@cRef or @source or @target)">in the edition <name/> needs @cRef or @source (or has a @target)</report>
         <report test="@cRef and not(@decls='#biblical' or @decls='#pta' or @decls='#perseus')">if <name/> has @cRef, it also needs @decls (#biblical, #pta or #perseus)</report>
         <report test="(@decls='#pta' or @decls='#perseus') and not(starts-with(@cRef, 'urn:cts:'))">Check that a reference to PTA or Perseus library is an URN</report>
         <report test="current()[ancestor::tei:div[@type='edition' or @type='translation' or @type='commentary']]/text() and not(parent::tei:cit or @target)">
            <name/> may only contain text as child of cit.</report>
         <report test="@decls='#biblical' and not(contains(@cRef, 'LXX:') or contains(@cRef, 'Hexapla:') or contains(@cRef, 'Peshitta:') or contains(@cRef, 'NA:') or contains(@cRef, 'Vg:'))">Check correct abbreviation of biblical version. Must be one of: LXX, Hexapla, Peshitta, NA, Vg</report>
         <report test="@decls='#biblical' and not(contains(@cRef, 'Gn:') or contains(@cRef, 'Ex:') or contains(@cRef, 'Lv:') or contains(@cRef, 'Num:') or contains(@cRef, 'Dt:') or contains(@cRef, 'Jos:') or contains(@cRef, 'Judg:') or contains(@cRef, 'Rt:') or contains(@cRef, '1Sa:') or contains(@cRef, '2Sa:') or contains(@cRef, '1Ko:') or contains(@cRef, '2Ko:') or contains(@cRef, '1Chr:') or contains(@cRef, '2Chr:') or contains(@cRef, '3Esr:') or contains(@cRef, 'Esr:') or contains(@cRef, 'Est:') or contains(@cRef, 'Jdt:') or contains(@cRef, 'Tob:') or contains(@cRef, '1Mak:') or contains(@cRef, '2Mak:') or contains(@cRef, '3Mak:') or contains(@cRef, '4Mak:') or contains(@cRef, 'Ps:') or contains(@cRef, 'Oden:') or contains(@cRef, 'Prov:') or contains(@cRef, 'Eccl:') or contains(@cRef, 'Song:') or contains(@cRef, 'Job:') or contains(@cRef, 'Wis:') or contains(@cRef, 'Sir:') or contains(@cRef, 'PsSal:') or contains(@cRef, 'Hos:') or contains(@cRef, 'Am:') or contains(@cRef, 'Mi:') or contains(@cRef, 'Joel:') or contains(@cRef, 'Ob:') or contains(@cRef, 'Jon:') or contains(@cRef, 'Nah:') or contains(@cRef, 'Hab:') or contains(@cRef, 'Zeph:') or contains(@cRef, 'Hag:') or contains(@cRef, 'Sach:') or contains(@cRef, 'Mal:') or contains(@cRef, 'Is:') or contains(@cRef, 'Jr:') or contains(@cRef, 'Bar:') or contains(@cRef, 'Lam:') or contains(@cRef, 'EpistJer:') or contains(@cRef, 'Hes:') or contains(@cRef, 'Sus:') or contains(@cRef, 'Sus-LXX:') or contains(@cRef, 'Dn:') or contains(@cRef, 'Dn-LXX:') or contains(@cRef, 'Bel:') or contains(@cRef, 'Bel-LXX:') or contains(@cRef, 'Mt:') or contains(@cRef, 'Mk:') or contains(@cRef, 'Lk:') or contains(@cRef, 'Jn:') or contains(@cRef, 'Act:') or contains(@cRef, 'Rom:') or contains(@cRef, '1Cor:') or contains(@cRef, '2Cor:') or contains(@cRef, 'Gal:') or contains(@cRef, 'Eph:') or contains(@cRef, 'Phil:') or contains(@cRef, 'Col:') or contains(@cRef, '1Th:') or contains(@cRef, '2Th:') or contains(@cRef, '1Tim:') or contains(@cRef, '2Tim:') or contains(@cRef, 'Tt:') or contains(@cRef, 'Phm:') or contains(@cRef, 'Heb:') or contains(@cRef, 'Jak:') or contains(@cRef, '1P:') or contains(@cRef, '2P:') or contains(@cRef, '1Jn:') or contains(@cRef, '2Jn:') or contains(@cRef, '3Jn:') or contains(@cRef, 'Jud:') or contains(@cRef, 'Rev:'))">Check correct abbreviation of biblical books. Must be one of: Gn, Ex, Lv, Num, Dt, Jos, Judg, Rt, 1Sa, 2Sa, 1Ko, 2Ko, 1Chr, 2Chr, 3Esr, Esr, Est, Jdt, Tob, 1Mak, 2Mak, 3Mak, 4Mak, Ps, Oden, Prov, Eccl, Song, Job, Wis, Sir, PsSal, Hos, Am, Mi, Joel, Ob, Jon, Nah, Hab, Zeph, Hag, Sach, Mal, Is, Jr, Bar, Lam, EpistJer, Hes, Sus, Sus-LXX, Dn, Dn-LXX, Bel, Bel-LXX, Mt, Mk, Lk, Jn, Act, Rom, 1Cor, 2Cor, Gal, Eph, Phil, Col, 1Th, 2Th, 1Tim, 2Tim, Tt, Phm, Heb, Jak, 1P, 2P, 1Jn, 2Jn, 3Jn, Jud, Rev</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-note-17">
      <rule context="tei:note">
         <report test="@type='commentary' and not(@resp)">If it is a commenting note, it needs a @resp</report>
         <report test="@place and @type">@place (i.e. in transcriptions annotating notes in the manuscript) and @type (i.e. note is a commenting note) may not be used together</report>
         <report test="ancestor::tei:div[@type='praefatio'] and @*">Notes in the praefatio are not allowed to have attributes.</report>
         <report test="ancestor::tei:div[@type='edition'] and @type='explanation'">Notes in the edition are not allowed to have the "explanation" attribute.</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-del-18">
      <rule context="tei:del">
         <report test="@rend='repurposed' and not(parent::tei:subst)">repurposed may only used within a substitution</report>
         <report test="count(tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc) &gt; 0 and not(@rend)">rend attribute is needed in transcriptions</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-abbr-19">
      <rule context="tei:abbr">
         <report test="@type='siglum' and not(parent::tei:witness or parent::tei:head[parent::tei:listWit])">siglum may only used within a witness</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-expan-20">
      <rule context="tei:expan">
         <report test="not(parent::tei:choice)">expan may only be used within a choice element</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-name-21">
      <rule context="tei:name">
         <report test="@key and not(contains(@key,'PTAMS'))">Key needs to be a PTAMS-ID</report>
         <report test="not(parent::tei:witness)">name may only be used within a witness element</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-msIdentifier-22">
      <rule context="tei:msIdentifier">
         <assert test="@xml:id">Manuscript identifier needs a @xml:id</assert>
         <assert test="@corresp">Manuscript identifier needs a reference to the manuscript database</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-origDate-23">
      <rule context="tei:origDate">
         <report test="@notBefore and not(@notAfter)">notBefore and notAfter need to be used together</report>
         <report test="@notAfter and not(@notBefore)">notBefore and notAfter need to be used together</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-space-24">
      <rule context="tei:space">
         <report test="@quantity and @extent">space may have @quantity (a figure) or @extent (a descriptive text value) but not both</report>
         <report test="@quantity and not(@unit)">If space has @quantity then @unit is required</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-handShift-25">
      <rule context="tei:handShift">
         <assert test="@medium or @scribeRef or @scriptRef">medium, scribeRef or scriptRef is needed.</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-app-26">
      <rule context="tei:app">
         <report test="@type='witnesses' and (child::tei:lem or not(child::tei:rdg))">Attestation of witness needs rdg, but no lem</report>
         <report test="@type='variants' and not(child::tei:lem or child::tei:rdgGrp/tei:lem)">Variation needs a lem</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-lem-27">
      <rule context="tei:lem">
         <assert test="@wit|@resp|@source">The wit, resp, or source attribute of <name/> is required.</assert>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-rdg-28">
      <rule context="tei:rdg">
         <report test="parent::tei:app[@type='witnesses'] and not(child::tei:witStart or child::tei:witEnd or child::tei:lacunaStart or child::tei:lacunaEnd)">Witnesses needs witStart, witEnd, lacunaStart or lacunaEnd</report>
         <report test="parent::tei:app[@type='witnesses'] and (@resp or @source) and not(@wit)">resp or source are not allowed in witnesses attestation, only wit</report>
         <report test="parent::tei:app[@type='variants'] and not(@wit or @resp or @source)">The wit, resp, or source attribute of <name/> is required in variants.</report>
         <report test="descendant::tei:persName">rdg may not contain a annotated person</report>
         <report test="descendant::tei:placeName">rdg may not contain a annotated place</report>
         <report test="descendant::tei:orgName">rdg may not contain a annotated organisation</report>
         <report test="@cert and not(@type='proposition')">cert may only be used in case of a proposition</report>
      </rule>
   </pattern>
   <pattern id="schematron-constraint-seg-29">
      <rule context="tei:seg">
         <report test="@type='insertion' and not(ancestor::tei:quote or ancestor::tei:seg[@type='psq'])">Only to be used in a quote or a pseudo-quote</report>
         <report test="(@type='allusion' or @type='similar' or @type='source') and not(@next or child::tei:ref)">If it's an allusion, a reference needs to be added</report>
         <report test="(@type='textpart') and not(@subtype and @n)">If it's a textpart, a subtype needs to be added. The segment needs also to be numbered.</report>
      </rule>
   </pattern>
</schema>
