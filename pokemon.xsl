<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <style>
    table {
      border-spacing: 1;
      border-collapse: collapse;
      background: white;
      border-radius: 6px;
      overflow: hidden;
      max-width: 800px;
      width: 100%;
      margin: 0 auto;
      position: relative;
    }
    table * {
      position: relative;
    }
    table td, table th {
      padding-left: 8px;
    }
    table thead tr {
      height: 60px;
      background: #FFED86;
      font-size: 16px;
    }
    table tbody tr {
      height: 48px;
      border-bottom: 1px solid #E3F1D5;
    }
    table tbody tr:last-child {
      border: 0;
    }
    table td, table th {
      text-align: left;
    }
    table td.l, table th.l {
      text-align: right;
    }
    table td.c, table th.c {
      text-align: center;
    }
    table td.r, table th.r {
      text-align: center;
    }

    @media screen and (max-width: 35.5em) {
      table {
        display: block;
      }
      table > *, table tr, table td, table th {
        display: block;
      }
      table thead {
        display: none;
      }
      table tbody tr {
        height: auto;
        padding: 8px 0;
      }
      table tbody tr td {
        padding-left: 45%;
        margin-bottom: 12px;
      }
      table tbody tr td:last-child {
        margin-bottom: 0;
      }
      table tbody tr td:before {
        position: absolute;
        font-weight: 700;
        width: 40%;
        left: 10px;
        top: 0;
      }
    }
    body {
      background: #9BC86A;
      font: 400 14px 'Calibri','Arial';
      padding: 20px;
      color: black;
    }

    blockquote {
      color: white;
      text-align: center;
    }

    
  </style>
    <body> 
      <h2 align="center">Dataset values based on Name Alphabetic order using sort.</h2>
      <table>
      <thead>
          <tr> 
            <th>Name</th>
            <th>Type 1</th>
            <th>Type 2</th>
            <th>HP</th>
            <th>Attack</th>
            <th>Defense</th>
            <th>Spatk</th>
            <th>Spdef</th>
            <th>Speed</th>
            <th>Total</th>
            <th>Legendary</th>
            <th>Total</th>
          </tr>
          </thead>
          <xsl:for-each select="pokemon/row">
          <xsl:sort select="Name"/>
          <tbody>
            <tr> 
              <td><xsl:value-of select="Name"/></td> 
              <td><xsl:value-of select="Type1"/></td> 
              <td><xsl:value-of select="Type2"/></td> 
              <td><xsl:value-of select="HP"/></td> 
              <td><xsl:value-of select="Attack"/></td> 
              <td><xsl:value-of select="Defense"/></td> 
              <td><xsl:value-of select="spatk"/></td> 
              <td><xsl:value-of select="spdef"/></td> 
              <td><xsl:value-of select="Speed"/></td> 
              <td><xsl:value-of select="Generation"/></td> 
              <td><xsl:value-of select="Legendary"/></td> 
              <td><xsl:value-of select="Total"/></td> 
            </tr> 
            </tbody>
          </xsl:for-each> 
      </table>
      <br/>

      <center><h2>Nodes having total value greater than 500</h2></center>
            <table>
      <thead>
          <tr> 
            <th>Name</th>
            <th>Type 1</th>
            <th>Type 2</th>
            <th>HP</th>
            <th>Attack</th>
            <th>Defense</th>
            <th>Spatk</th>
            <th>Spdef</th>
            <th>Speed</th>
            <th>Total</th>
            <th>Legendary</th>
            <th>Total</th>
          </tr>
          </thead>
          <xsl:for-each select="pokemon/row">
          <xsl:sort select="Name"/>
          <xsl:if test="Total>500">
          <tbody>
            <tr> 
              <td><xsl:value-of select="Name"/></td> 
              <td><xsl:value-of select="Type1"/></td> 
              <td><xsl:value-of select="Type2"/></td> 
              <td><xsl:value-of select="HP"/></td> 
              <td><xsl:value-of select="Attack"/></td> 
              <td><xsl:value-of select="Defense"/></td> 
              <td><xsl:value-of select="spatk"/></td> 
              <td><xsl:value-of select="spdef"/></td> 
              <td><xsl:value-of select="Speed"/></td> 
              <td><xsl:value-of select="Generation"/></td> 
              <td><xsl:value-of select="Legendary"/></td> 
              <td><xsl:value-of select="Total"/></td> 
            </tr> 
            </tbody>
            </xsl:if>
          </xsl:for-each> 
      </table>

    </body>
  </html>
</xsl:template>
</xsl:stylesheet>