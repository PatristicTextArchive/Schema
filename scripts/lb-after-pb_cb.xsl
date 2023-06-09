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
  <!-- transcriptions: add missing lb after pb and cb and cb after pb if two-column layout -->
  <xsl:template match="tei:pb">
    <xsl:copy-of select="//tei:pb"/>
    <xsl:if test="child::tei:cb">
      <xsl:element name="cb" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:attribute name="n">1</xsl:attribute>
      </xsl:element>
    </xsl:if>
    <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:if test="current()/@break">
        <xsl:attribute name="break">no</xsl:attribute>
      </xsl:if>
    </xsl:element>
  </xsl:template>

  <xsl:template match="tei:cb">
    <xsl:choose>
      <xsl:when test="preceding-sibling::tei:cb">
        <xsl:element name="cb" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:attribute name="n"><xsl:value-of select="preceding-sibling::tei:cb/@n + 1"/></xsl:attribute>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="//tei:cb"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:if test="current()/@break">
        <xsl:attribute name="break">no</xsl:attribute>
      </xsl:if>
    </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>