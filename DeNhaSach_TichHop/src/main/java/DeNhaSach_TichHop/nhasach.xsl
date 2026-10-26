<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>nhasach.xsl</title>
                <style>
                    .container{
                    display: flex;
                    flex-direction: column;
                    }
                    table, th, td {
                    border: 1px solid black;
                    border-collapse: collapse;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1 style="text-align: center;">NHÀ SÁCH</h1>
                    <table>
                        <tr>
                            <th>STT</th>
                            <th>Mã sách</th>
                            <th>Tên sách</th>
                            <th>Số trang</th>
                            <th>Tác giả</th>
                            <th>Giá tiền</th>
                        </tr>
                        <xsl:for-each select="nhasach/cuonsach">
                            <xsl:sort select="sotrang" data-type="number" order="descending"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="position()"/>
                                </td>
                                <td>
                                    <xsl:value-of select="masach"/>
                                </td>
                                <td>
                                    <xsl:value-of select="tensach"/>
                                </td>
                                <td>
                                    <xsl:value-of select="sotrang"/>
                                </td>
                                <td>
                                    <xsl:value-of select="tacgia/hoten"/>
                                </td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="sotrang &gt;= 200">
                                            <xsl:value-of select="sotrang * 700"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="sotrang * 1000"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
