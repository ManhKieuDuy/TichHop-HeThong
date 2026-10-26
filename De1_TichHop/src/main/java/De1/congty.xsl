<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>congty.xsl</title>
                <style>
                    .container{
                    display: flex;
                    flex-direction: column;
                    width: 500px;
                    margin: 0 auto;
                    text-align: center;
                    border: 1px solid;
                    padding: 15px;
                    }
                    h1{
                    color: #0070C0;
                    }
                    .content{
                    display: flex;
                    justify-content: space-around;
                    }
                    table, th, td {
                    border: 1px solid black;
                    border-collapse: collapse;
                    }
                </style>
            </head>
            <body>
                <h1 style="text-align: center;">THÔNG TIN CÔNG TY</h1>
                <xsl:for-each select="congty/phongban">
                    <div class="container">
                        <div class="content">
                            <h3>Tên phòng: <xsl:value-of select="tenphong"/>
                            </h3>
                            <h3>Điện thoại: <xsl:value-of select="dienthoai"/>
                            </h3>
                        </div>
                        <table>
                            <tr style="background-color: #DAEEF3">
                                <th>Mã nhân viên</th>
                                <th>Họ tên</th>
                                <th>Trình độ</th>
                                <th>Mức lương</th>
                            </tr>
                            <xsl:apply-templates select="nhanvien"/>
                        </table>
                    </div>
                </xsl:for-each>
                <p style="text-align: center;">
                    Tổng mức lương công ty: <xsl:value-of select="sum(congty/phongban/nhanvien/mucluong)"/>
                </p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="nhanvien">
        <tr>
            <td>
                <xsl:value-of select="manv"/>
            </td>
            <td>
                <xsl:value-of select="hoten"/>
            </td>
            <td>
                <xsl:value-of select="trinhdo"/>
            </td>
            <td>
                <xsl:value-of select="mucluong"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
