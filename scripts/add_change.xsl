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
  
    <xsl:template match="//tei:revisionDesc">
      <xsl:element name="revisionDesc" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="status">
          <xsl:copy-of select="@status"></xsl:copy-of>
        </xsl:attribute>
        <xsl:element name="change" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="when">2025-05-19</xsl:attribute>
          <xsl:attribute name="who">#AvS</xsl:attribute>
          <xsl:text>Conversion error amended (space added for linefeed)</xsl:text>
        </xsl:element>
        <xsl:copy-of select="//tei:change"/>
      </xsl:element>
    </xsl:template>
  
</xsl:stylesheet>
