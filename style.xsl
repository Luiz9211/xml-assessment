<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match="/badges">
    <html>
        <head>
            <title>Activity Badges</title>
        </head>
        <body>
            <h1>Activity Badges</h1>

            <!-- Filter activity type badges & sort alphabetically by name -->
            <xsl:for-each select="badge[@type='activity']">
                <xsl:sort select="name" data-type="text" order="ascending"/>

                <h2><xsl:value-of select="name"/></h2>
                <p><xsl:value-of select="description"/></p>

                <!-- Beaver level availability check with xsl:choose -->
                <p>
                    Beaver:
                    <xsl:choose>
                        <xsl:when test="levels/availability[@level='beaver']">
                            <xsl:value-of select="levels/availability[@level='beaver']"/>
                        </xsl:when>
                        <xsl:otherwise>Not Available</xsl:otherwise>
                    </xsl:choose>
                </p>

                <!-- Cub level availability check with xsl:choose -->
                <p>
                    Cub:
                    <xsl:choose>
                        <xsl:when test="levels/availability[@level='cub']">
                            <xsl:value-of select="levels/availability[@level='cub']"/>
                        </xsl:when>
                        <xsl:otherwise>Not Available</xsl:otherwise>
                    </xsl:choose>
                </p>

                <!-- Scout level availability check with xsl:choose -->
                <p>
                    Scout:
                    <xsl:choose>
                        <xsl:when test="levels/availability[@level='scout']">
                            <xsl:value-of select="levels/availability[@level='scout']"/>
                        </xsl:when>
                        <xsl:otherwise>Not Available</xsl:otherwise>
                    </xsl:choose>
                </p>
                <hr/>
            </xsl:for-each>

            <!-- Copyright statement with XHTML character entity &#xA9; -->
            <p>&#xA9; College Productions Ltd</p>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
