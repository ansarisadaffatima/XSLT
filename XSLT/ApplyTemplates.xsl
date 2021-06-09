<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Order Id</h2>
				<xsl:value-of select="/Order/@id"></xsl:value-of><br/>
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>
	<xsl:template match="CustomerName"><br/>
		Customer Name:
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="Item"><br/><br/>
		Item Name:
		<xsl:value-of select="ItemName" />
		Item Price:
		<xsl:value-of select="ItemPrice" />
	</xsl:template>
</xsl:stylesheet>