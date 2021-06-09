<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
			<body>
				College :
				<b>
					<xsl:value-of select="StudentScores/College"></xsl:value-of>
				</b>
			</body>
		</html>

		<table border="1">
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Score</th>
				<th>Grade</th>
			</tr>
			<xsl:for-each select="StudentScores/Student">
				<xsl:sort select="StudentScores/@id" data-type="number"></xsl:sort>
				<tr>
					<td>
						<xsl:value-of select="FirstName" />
					</td>
					<td>
						<xsl:value-of select="LastName" />
					</td>
					<td>
						<xsl:value-of select="Score" />
					</td>
					<td>
						<xsl:choose>
						<xsl:when test="Score>=90">A</xsl:when>
						<xsl:when test="Score>=80">B</xsl:when>
						<xsl:otherwise>C</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>