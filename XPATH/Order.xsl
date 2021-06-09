<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Order Information:</h2>
				<!-- Addressing Individual Elements <xsl:apply-templates select="/Order/Item[@id='3']" 
					/> -->
				<xsl:apply-templates />
				<b>Total Number of Item:<xsl:value-of select="count(Order/Item)"></xsl:value-of></b>
				<br/><b>Total price of Order:<xsl:value-of select="sum(Order/Item/Price)"></xsl:value-of></b>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="CustomerName">
		<br />
		<b>
			Customer Name:
			<!-- Relative Addressing <xsl:value-of select="." /> -->
			<!-- Absolute Addressing -->
			<xsl:value-of select="/Order/CustomerName" />
		</b>
	</xsl:template>
	<xsl:template match="Item">
		<br />
		Order Id:
		<xsl:value-of select="../@id" />
		<br />
		Order Name:
		<!-- <xsl:value-of select="substring(./ItemName,1,3)" /> -->
		<!-- <xsl:value-of select="substring-before(./ItemName,'p')" /> -->
		<!-- <xsl:value-of select="substring-after(./ItemName,'p')" /> -->
		<xsl:value-of select="translate(./ItemName,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
		<br />
		Price :
		<!-- <xsl:value-of select="ceiling(./Price)"></xsl:value-of> -->
		<!-- <xsl:value-of select="floor(./Price)"></xsl:value-of> -->
		<!-- <xsl:value-of select="round(./Price)"></xsl:value-of> -->
		<xsl:value-of select="./Price"></xsl:value-of>
		<xsl:if test="Price &gt; 100">
			(Eligible for Free Shipping)
		</xsl:if>
		<xsl:if test="Price &lt; 100">
			(Should be purchased with item whose price is greater that 100 for
			Free Shipping)
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>