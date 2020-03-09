﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <body>
      <h1>Mi biblioteca personal</h1>
      <table>
        <tr bgcolor="cc0000">
          <th>ISBN</th>
          <th>Título</th>
          <th>Autor</th>
          <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro[precio&gt;'12']">
        <xsl:if test="autor='Alonso Fernández'">
          <tr>
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="precio"/></td>
          </tr>
        </xsl:if>
        </xsl:for-each>
      </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
