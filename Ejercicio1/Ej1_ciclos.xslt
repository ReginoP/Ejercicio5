<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:output method="xml"encoding="UTF-8"/>

  <xsl:template match="/">
    <ciclos>
      <xsl:apply-templates select="centro/ciclos/ciclo"/>
    </ciclos>
  </xsl:template>

  <xsl:template match="ciclo">
    <ciclo>
      <xsl:value-of select="nombre"/>
    </ciclo>
  </xsl:template>

</xsl:stylesheet>
