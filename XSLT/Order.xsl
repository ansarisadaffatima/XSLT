<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>
					Order Details:
					<xsl:value-of select="Order/CustomerName" />
				</h2>
				<h3>
					Order Id:
					<xsl:value-of select="Order/@id"></xsl:value-of>
				</h3>
				<table border="1">
					<tr>
						<th>ItemId</th>
						<th>ItemName</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Category</th>
					</tr>
					<xsl:for-each select="Order/Item">
					<xsl:sort select="Price" data-type="number" order="descending"></xsl:sort>
						<tr>
							<td>
								<xsl:value-of select="ItemId" />
							</td>
							<td>
								<xsl:value-of select="ItemName" />
							</td>
							<td>
								<xsl:value-of select="Price" />
							</td>
							<td>
								<xsl:value-of select="Quantity" />
							</td>
							<td>
								<xsl:choose>
									<xsl:when test="Price>=100">Platinum</xsl:when>
									<xsl:when test="Price>=20">Gold</xsl:when>
									<xsl:otherwise>Silver</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>