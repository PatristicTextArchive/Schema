<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:saxon="http://saxon.sf.net/">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>


    <xsl:template match="//tei:interpretation">
      <xsl:copy>
          <xsl:apply-templates select="*"/>
        <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">text-analysis</xsl:attribute>
            <xsl:attribute name="ana">not-tagged not-analyzed</xsl:attribute>
            <xsl:text>Words are not tagged and not analyzed.</xsl:text>
        </xsl:element>
      </xsl:copy>
    </xsl:template>
  
  <xsl:template match="//tei:classDecl">
    <xsl:copy>
        <xsl:apply-templates select="child::*"/>
      <xsl:element name="taxonomy" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="xml:id">analysisstatus</xsl:attribute>
        <xsl:element name="bibl" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:text>Patristic Text Archive Status of linguistic analysis</xsl:text>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">automatically-tagged</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:text>Words are automatically tagged.</xsl:text>
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">manually-tagged</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:text>Words are manually tagged.</xsl:text>
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">not-tagged</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:text>Words are not tagged.</xsl:text>
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">automatically-analyzed</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:text>Words are automatically analyzed.</xsl:text>
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">manually-analyzed</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:text>Words are manually analyzed.</xsl:text>
          </xsl:element>
        </xsl:element>
        <xsl:element name="category" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="xml:id">not-analyzed</xsl:attribute>
          <xsl:element name="catDesc" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:text>Words are not analyzed.</xsl:text>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:copy>
  </xsl:template>


</xsl:stylesheet>
