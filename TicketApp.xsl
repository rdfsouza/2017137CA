<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
   <!--  Reference https://github.com/mikhail-cct/CA1-In-class-Demo  -->


                <table id="Table" border="1" class="indent">
                    <thead>
                        <tr>
                            <th colspan="5">
Concerts</th>
                        </tr>
                        <tr>
                            <th>Select</th>
		                	<th>Types</th>
                            <th>Tickets Avaliable</th>
                            <th>Price €</th>
                             <th>Buy</th>
                       </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/Tickets/section">
                            <tr>
                                <td colspan="5" align="center">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                                 <tr id="{position()}">
                                
                                      <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                    <td>
                                       <xsl:value-of select="Types"/>
                                    </td>
                                    <td align="center">
                                        <xsl:value-of select="TicketsAvaliable" />
                                    </td>
					<td align="center">
                                        <xsl:value-of select="price" />
                                    </td>
                                    <td align="center">
                                      <button onclick="myFunction()" type="button" name="item0" class="btn" >Buy Tickets</button> 
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>

                
    </xsl:template>
</xsl:stylesheet>