<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="shiyan5_2.xml" -->
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>XML文档操作</title>
</head>

<body>
  <table align="left" border="1" cellspacing="3" cellpadding="6">
     <caption>studentlist</caption>
      <tr>
         <td>学号</td>
         <td>姓名</td>
         <td>性别</td>
         <td>民族</td>
         <td>籍贯</td>
         <td>专业</td>
      </tr>
       <xsl:for-each select="students/student">
       <tr>
          <td><xsl:value-of select="sno"/></td>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="sex"/></td>
          <td><xsl:value-of select="nation"/></td>
          <td><xsl:value-of select="address"/></td>
          <td><xsl:value-of select="interest"/></td>
       </tr>
       </xsl:for-each>
  </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>