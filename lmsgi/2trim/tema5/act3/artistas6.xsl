<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">

        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>
                            <h2>ARTISTAS</h2>
                        </td>
                        <td>
                            <h3>nacionalidad</h3>
                        </td>
                    </tr>
                    <xsl:for-each select="catalogo/artistas/artista">
                        <xsl:sort select="nacionalidad" />
                        <tr>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="nacionalidad" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>


    </xsl:template>
</xsl:stylesheet>