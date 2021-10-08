<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
		<title>CBSD Templates</title>
		<link rel="stylesheet" href="style.css"/>
	</head>
	<body>
		<h2>CBSD Templates</h2>
  		<xsl:apply-templates/>
	</body>
</html>
</xsl:template>

<xsl:template match="/catalog/template">
	<div class="template">
		<h2><xsl:value-of select="title"/></h2>
		<img>
		    <xsl:attribute name="src">
        		<xsl:value-of select="icon/@src"/>
   			</xsl:attribute>
		</img>
		<xsl:value-of select="description"/>
	</div>
</xsl:template>

</xsl:stylesheet>