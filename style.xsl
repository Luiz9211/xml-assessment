<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match="/badges">
    <html>
        <head>
            <title>Activity Badges</title>
        </head>
        <body>
            <h1>Activity Badges</h1>

            <!-- 筛选仅type="activity"徽章 + 按名称字母A-Z升序排序 -->
            <xsl:for-each select="badge[@type='activity']">
                <xsl:sort select="name" data-type="text" order="ascending"/>

                <h2><xsl:value-of select="name"/></h2>
                <p><xsl:value-of select="description"/></p>

                <!-- xsl:choose 判断Beaver等级可用性 -->
                <p>
                    Beaver:
                    <xsl:choose>
                        <xsl:when test="levels/availability[@level='beaver']">
                            <xsl:value-of select="levels/availability[@level='beaver']"/>
                        </xsl:when>
                        <xsl:otherwise>Not Available</xsl:otherwise>
                    </xsl:choose>
                </p>

                <!-- xsl:choose 判断Cub等级可用性 -->
                <p>
                    Cub:
                    <xsl:choose>
                        <xsl:when test="levels/availability[@level='cub']">
                            <xsl:value-of select="levels/availability[@level='cub']"/>
                        </xsl:when>
                        <xsl:otherwise>Not Available</xsl:otherwise>
                    </xsl:choose>
                </p>

                <!-- xsl:choose 判断Scout等级可用性 -->
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

            <!-- 底部版权声明 严格使用题目要求XHTML字符实体 &#xA9; -->
            <p>&#xA9; College Productions Ltd</p>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
