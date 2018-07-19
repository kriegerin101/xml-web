<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
<html lang="en">
		<head>
			<title>Python-XML</title>
			<meta name="viewport" content="width=device-width, initial-scale=1"/>
			  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
			  <meta name="viewport" content="width=device-width, initial-scale=1"/>
			  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
			  <link href="https://fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet"/>
			  <link href="https://fonts.googleapis.com/css?family=Bungee+Outline" rel="stylesheet"/>
			  <link rel="stylesheet" href="../css/CSS.css" type="text/css" media="all"/>
			  <link rel="shortcut icon" type="image/x-icon" href="../imagenes/favicon.ico"/>
		</head>
        <body>
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="collapse navbar-collapse" id="myNavbar">
             <h1 class="titulin">PYTHON</h1>
              <ul class="nav navbar-nav">
                <li class="active"><a href="../paginas/home.html">Home</a></li>
                <li><a href="#">Projectos</a></li>
                <li><a href="../paginas/formulario.html">Contacto</a></li>
                <li><a href="../xml/microsoft.xml">XML</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div class="container-fluid text-center">
        <main>  
		<xsl:for-each select="catalog/book">
		<h1><xsl:value-of select="author"></xsl:value-of></h1>
		<h2><xsl:value-of select="title"></xsl:value-of></h2>
		<h3><xsl:value-of select="genre"></xsl:value-of></h3>
		<h4><xsl:value-of select="price"></xsl:value-of></h4>
		<h5><xsl:value-of select="publish_date"></xsl:value-of></h5>
		<p><xsl:value-of select="description"></xsl:value-of></p>
		<img width="100" height="100">
			<xsl:attribute name="src">
			<xsl:value-of select="imagen" />
			</xsl:attribute>
		</img>
	</xsl:for-each>
	</main> 
	 </div>

        <footer class="container-fluid text-center">
            <a rel="license" href="http://creativecommons.org/licenses/by-nd/4.0/"><img alt="Licencia de Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nd/4.0/88x31.png" /></a><br />Este obra está bajo una <a rel="license" href="http://creativecommons.org/licenses/by-nd/4.0/">licencia de Creative Commons Reconocimiento-SinObraDerivada 4.0 Internacional</a>
            <p>Escríbenos a: python@example.com</p>
        </footer>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
