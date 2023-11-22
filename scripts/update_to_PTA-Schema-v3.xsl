<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:saxon="http://saxon.sf.net/">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

<xsl:template match="*[@xml:space='preserve']">
  <xsl:copy>
      <xsl:apply-templates select="node()|@* except @xml:space"/>
  </xsl:copy>
</xsl:template>
  
  <xsl:template match="//tei:refsDecl[@xml:id = 'biblical']">
    <xsl:copy-of select="//tei:refsDecl[@xml:id = 'biblical']"/>
    <xsl:element name="refsDecl" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:attribute name="xml:id">pta</xsl:attribute>
      <xsl:element name="cRefPattern" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="matchPattern">(.+)</xsl:attribute>
        <xsl:attribute name="replacementPattern">https://pta.bbaw.de/text/$1</xsl:attribute>
        <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">References to PTA-CTS-URNs</xsl:element>
      </xsl:element>
    </xsl:element>
    <xsl:element name="refsDecl" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:attribute name="xml:id">perseus</xsl:attribute>
      <xsl:element name="cRefPattern" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="matchPattern">(.+)</xsl:attribute>
        <xsl:attribute name="replacementPattern">https://scaife.perseus.org/reader/$1</xsl:attribute>
        <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">References to Perseus-CTS-URNs</xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>

    <xsl:template match="//tei:editorialDecl">
      <xsl:element name="editorialDecl" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:element name="interpretation" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            This file is encoded according to the guidelines of the Patristic Text Archive (PTA). See <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://pta.bbaw.de/project/encoding-guidelines</xsl:attribute>https://pta.bbaw.de/project/encoding-guidelines</xsl:element> and <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://doi.org/10.5281/zenodo.3737666</xsl:attribute>https://doi.org/10.5281/zenodo.3737666</xsl:element>.
          </xsl:element>
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">biblical-quotations</xsl:attribute>
            <xsl:attribute name="ana">fully/partially/not-annotated fully/partially/not-identified</xsl:attribute>
            Biblical quotations are fully/partially annotated and/but not fully/partially referenced. References follow the scheme declared <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">#biblical"</xsl:attribute>above</xsl:element>.
          </xsl:element>
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">other-references</xsl:attribute>
            <xsl:attribute name="ana">fully/partially/not-annotated fully/partially/not-identified</xsl:attribute>
            Other quotations are fully/partially annotated and/but not fully/partially referenced. References follow the scheme declared as <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">#pta"</xsl:attribute>pta</xsl:element> or as <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">#perseus"</xsl:attribute>perseus</xsl:element> above.
          </xsl:element>
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">persons</xsl:attribute>
            <xsl:attribute name="ana">fully/partially/not-annotated fully/partially/not-identified</xsl:attribute>
            Persons are fully/partially annotated and/but not fully/partially referenced with IDs according to the <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://github.com/PatristicTextArchive/tipnr_data</xsl:attribute>TIPNR - Tyndale Individualised Proper Names with all References</xsl:element> list for biblical persons and IDs of <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://github.com/PatristicTextArchive/pta_metadata/blob/main/pta_persons.json</xsl:attribute>PTA persons index</xsl:element> for all other persons.
          </xsl:element>
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">groups</xsl:attribute>
            <xsl:attribute name="ana">fully/partially/not-annotated fully/partially/not-identified</xsl:attribute>
            Groups of persons and organisations are fully/partially annotated and/but not fully/partially referenced with IDs according to the IDs of <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://github.com/PatristicTextArchive/pta_metadata/blob/main/pta_groups.json"</xsl:attribute>PTA groups index</xsl:element> for all other groups.
          </xsl:element>
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">places</xsl:attribute>
            <xsl:attribute name="ana">fully/partially/not-annotated fully/partially/not-identified</xsl:attribute>
            Places are fully/partially annotated and/but not fully/partially referenced with <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://pleiades.stoa.org/</xsl:attribute>Pleiades Gazetteer</xsl:element> IDs.
          </xsl:element>
        </xsl:element>       
        <xsl:element name="normalization" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:comment>Usage of capitalisation, ν-ephelkystikon, σ: οὕτως, Iota subscriptum/adscriptum, Trema, Enclitics, apostroph/elisions, number signs, splitting of words, nomina sacra, ...</xsl:comment>
          </xsl:element>
        </xsl:element>
        <xsl:element name="punctuation" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:comment>Usage (and/or normalisation) of full stop, comma, semicolon, question mark, dash and parenthesis</xsl:comment>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:template>
  
  <xsl:template match="//tei:classDecl">
    <xsl:element name="classDecl" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:element name="taxonomy" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="xml:id">comphistsem</xsl:attribute>
        <xsl:element name="bibl" namespace="http://www.tei-c.org/ns/1.0">
          Text Type Classification by <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://www.comphistsem.org/46.html</xsl:attribute>"Computational Historical Semantics</xsl:element>
        </xsl:element>
      </xsl:element>
      <xsl:element name="taxonomy" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="xml:id">editionstatus</xsl:attribute>
        <xsl:element name="bibl" namespace="http://www.tei-c.org/ns/1.0">
          Patristic Text Archive Status of edition
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">critical-edition</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            Critical edition in which the text-critical variants have been encoded.
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">critical-edition-no-app</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            Critical edition in which the text-critical variants have not been encoded, e.g. because it is a retro-digitisation of a printed critical edition and for copyright reasons the apparatus cannot be included in the retro-digitisation.
          </xsl:element>
        </xsl:element>
          <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">critical-edition-outdated</xsl:attribute>
            <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
              Edition which notes text-critical variants, but does not, for example, comprehensively include the manuscripts.
            </xsl:element>
          </xsl:element>
          <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">pre-critical-edition</xsl:attribute>
            <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
              Pre-modern editions (e.g. editions in the Patrologia Graeca or Latina)
            </xsl:element>
          </xsl:element>
      </xsl:element>
      <xsl:element name="taxonomy" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="xml:id">annotationstatus</xsl:attribute>
        <xsl:element name="bibl" namespace="http://www.tei-c.org/ns/1.0">
          Patristic Text Archive Status of annotation
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">fully-annotated</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            All instances of a phenomenon (e.g. biblical quotations, persons, places) are encoded with the respective element.
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">partially-annotated</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            Some instances of a phenomenon (e.g. biblical quotations, persons, places) are encoded with the respective element.
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">not-annotated</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            No instances of a phenomenon (e.g. biblical quotations, persons, places) are encoded with the respective element.
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">fully-identified</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            All encoded instances of a phenomenon (e.g. biblical quotations, persons, places) are identified with the respective norm data.
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">partially-identified</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            Some encoded instances of a phenomenon (e.g. biblical quotations, persons, places) are identified with the respective norm data
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">not-identified</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            No encoded instances of a phenomenon (e.g. biblical quotations, persons, places) are identified with the respective norm data.
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:element>
    <xsl:element name="schemaRef" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:attribute name="key">v3</xsl:attribute>
      <xsl:attribute name="url">https://raw.githubusercontent.com/PatristicTextArchive/Schema/master/tei-pta.rng</xsl:attribute>
    </xsl:element>
  </xsl:template>



  <xsl:template match="//tei:profileDesc">
    <xsl:param name="editionstatus"><xsl:value-of select="//tei:revisionDesc/@status"/></xsl:param>
    <xsl:element name="profileDesc" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:copy-of select="//tei:creation"/>
      <xsl:element name="textClass" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:copy-of select="//tei:keywords"/>
        <xsl:element name="keywords" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="scheme">#editionstatus</xsl:attribute>
          <xsl:element name="term" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:value-of select="$editionstatus"/>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>


    <xsl:template match="//tei:revisionDesc">
      <xsl:element name="revisionDesc" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="status">draft</xsl:attribute>
        <xsl:element name="change" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="when">2023-05-22</xsl:attribute>
          <xsl:attribute name="who">#AvS</xsl:attribute>
          Updated file to comply with version 3.0 of <xsl:element name="ref" namespace="http://www.tei-c.org/ns/1.0"><xsl:attribute name="target">https://github.com/PatristicTextArchive/Schema</xsl:attribute>TEI-PTA-Schema</xsl:element>
        </xsl:element>
        <xsl:copy-of select="//tei:change"/>
      </xsl:element>
    </xsl:template>
  
  <xsl:template match="//tei:app/@type">
    <xsl:param name="variants">variants</xsl:param>
    <xsl:param name="witnesses">witnesses</xsl:param>
    <xsl:if test="current()='textcritical'">
      <xsl:attribute name="type" select="$variants"/>
    </xsl:if>
    <xsl:if test="current()='witnesses'">
      <xsl:attribute name="type" select="$witnesses"/>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="tei:lem/@cause">
    <xsl:attribute name="type">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="tei:rdg[@style]">
      <xsl:element name="rdg" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:for-each select="@*">
          <xsl:choose>
          <xsl:when test="name() = 'cause'">
            <xsl:attribute name="type"><xsl:value-of select="."/></xsl:attribute>
          </xsl:when> 
          <xsl:when test="name() = 'type'">
            <xsl:attribute name="cause"><xsl:value-of select="."/></xsl:attribute>
          </xsl:when> 
          <xsl:when test="name() = 'style'">
              <xsl:if test="current()='supralinear'">
                <xsl:element name="add" namespace="http://www.tei-c.org/ns/1.0">
                  <xsl:attribute name="place">above</xsl:attribute>
                  <xsl:value-of select="parent::node()"/>
                </xsl:element>
              </xsl:if>        
              <xsl:if test="current()='margin'">
                <xsl:element name="add" namespace="http://www.tei-c.org/ns/1.0">
                  <xsl:attribute name="place">margin</xsl:attribute>
                  <xsl:value-of select="parent::node()"/>
                </xsl:element>
              </xsl:if>        
              <xsl:if test="current()='inline'">
                <xsl:element name="add" namespace="http://www.tei-c.org/ns/1.0">
                  <xsl:attribute name="place">inline</xsl:attribute>
                  <xsl:value-of select="parent::node()"/>
                </xsl:element>
              </xsl:if>
          </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="{name()}"><xsl:value-of select="."/></xsl:attribute>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </xsl:element>
    
  </xsl:template>
  
  <xsl:template match="tei:rdg/@cause" name="cause">
    <xsl:attribute name="type">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="tei:rdg/@type" name="type">
    <xsl:attribute name="cause">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

</xsl:stylesheet>
