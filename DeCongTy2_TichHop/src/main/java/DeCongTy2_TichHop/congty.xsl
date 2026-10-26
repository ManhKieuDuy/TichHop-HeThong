<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>congty.xsl</title>
                <style>
                    .container {
                    width: 500px;
                    }
                    table, th, td {
                    border: 1px solid black;
                    border-collapse: collapse;
                    }
                </style>
            </head>
            <body>
                <table class="container">
                    <tr>
                        <th colspan="5" style="text-align: center;">ACADEMIC RESULT</th>
                    </tr>
                    <tr>
                        <td colspan="5" style="text-align: center;">
                            Academic year <xsl:value-of select="academicyear"/>
                        </td>
                    </tr>
                    <xsl:for-each select="academicresults/studentresult">
                        <tr>
                            <td colspan="5">Student ID: <xsl:value-of select="stdid"/>
						</td>
                        </tr>
                        <tr>
                            <td colspan="5">Full Name: <xsl:value-of select="fullname"/>
						</td>
                        </tr>
                        <tr>
                            <td colspan="5">Date of Birth: <xsl:value-of select="dateofbirth"/>
						</td>
                        </tr>
                        <tr>
                            <td colspan="5">Class: <xsl:value-of select="class"/>
						</td>
                        </tr>
                        <tr style="text-align: center;">
                            <td>No.</td>
                            <td>Subject</td>
                            <td>Attempt 1</td>
                            <td>Attempt 2</td>
                            <td>Annual Score</td>
                        </tr>
                        <xsl:apply-templates select="subjectresult"/>
                        <tr>
                            <td colspan="5">
                                Academic Classification: <xsl:value-of select="academicclassification"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                Conduct Classification: <xsl:value-of select="conductclassification"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                Homeroom Teacher: <xsl:value-of select="homeroomteacher"/>
                            </td>
                        </tr>
						
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="subjectresult">
        <tr>
            <td>
                <xsl:value-of select="position()"/>
            </td>
            <td>
                <xsl:value-of select="subject"/>
            </td>
            <td>
                <xsl:value-of select="attempt1"/>
            </td>
            <td>
                <xsl:value-of select="attempt2"/>
            </td>
            <td>
                <xsl:value-of select="annualscore"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
