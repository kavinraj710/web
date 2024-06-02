<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" />
<xsl:template match="/">
<html>
<head>
<title>Library Books</title>
<style>
table { border-collapse: collapse; width: 100%; }
th, td { border: 1px solid black; padding: 8px; text-align: left; }
th { background-color: #f2f2f2; }
</style>
</head>
<body>
<h1>Library Books</h1>
<table>
<tr>
<th>ID</th>
<th>Title</th>
<th>Author</th>
<th>Genre</th>
<th>Published</th>
<th>Price</th>
</tr>
<xsl:for-each select="library/book">
<tr>
<td><xsl:value-of select="@id" /></td>
<td><xsl:value-of select="title" /></td>
<td><xsl:value-of select="author" /></td>
<td><xsl:value-of select="genre" /></td>
<td><xsl:value-of select="published" /></td>
<td><xsl:value-of select="price" /></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
