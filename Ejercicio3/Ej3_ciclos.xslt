<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Indica la salida como HTML -->
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- Plantilla para el elemento raíz -->
  <xsl:template match="/">
    <html>
      <body>
        <!-- Aplica la plantilla a cada ciclo -->
        <xsl:apply-templates select="centro/ciclos/ciclo"/>
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para cada ciclo -->
  <xsl:template match="ciclo">
    <p>
      <!-- Id del ciclo -->
      <strong>&#8226; <xsl:value-of select="@id"/></strong><br/>
      <!-- Nombre del ciclo y detalles -->
      <xsl:value-of select="nombre"/>, Ciclo Formativo de Grado <xsl:value-of select="grado"/> creado en <xsl:value-of select="decretoTitulo/@anio"/>
    </p>
  </xsl:template>

</xsl:stylesheet>
