<?xml version="1.0" encoding="utf-8"?>
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
<title>Opel</title>
   <link rel="stylesheet" href="css/style.css" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>

<body>

    <div class="container  shadow p-0">
        <header class="row headerO m-0">
            <img src="./img/logo.png" alt="" />
            <h1><xsl:value-of select="opel/@origen"/></h1>
        </header>
        <div class="row m-0">
			<xsl:for-each select="opel/modelo">
				            <div class="row coche">
                <div class="col-6 text-center">
                    <img style="width:80%;" src="{imagen}" alt="" />
                </div>
                <div class="col-6">
                    <div class="bg-dark">
                        <h4 class="text-white"><xsl:value-of select="@nombre"/></h4>
                    </div>
                    <div id="accordianId" role="tablist" aria-multiselectable="true">
						<p class="acabados">Acabados:</p>
						<xsl:choose>
							<xsl:when test="acabados = ''">
								<p class="warn">Modelo único; sin acabados...</p>
							</xsl:when>
							<xsl:otherwise>
								<xsl:for-each select="acabados/acabado">
							<div class="card">
                            <div class="card-header" role="tab" id="section{@id}HeaderId">
                                <h5 class="mb-0">
                                    <a style="text-decoration: none; color: grey;" data-toggle="collapse" data-parent="#accordianId" href="#section{@id}ContentId" aria-expanded="true" aria-controls="section{@id}ContentId">
                              <xsl:value-of select="@nombre"/>
                            </a>
                                </h5>
                            </div>
                            <div id="section{@id}ContentId" class="collapse in" role="tabpanel" aria-labelledby="section{@id}HeaderId">
                                <div class="card-body">
                                    <ul>
										<xsl:for-each select="item">
											<li><xsl:value-of select="."/></li>
										</xsl:for-each>
                                    </ul>
                                </div>
                            </div>
                        </div>
						</xsl:for-each>
							</xsl:otherwise>
						</xsl:choose>
                        
                    </div>
                </div>
            </div>
			<div class="hr"/>
			</xsl:for-each>
        </div>
		<footer class="row footer">
			<h2>XSLT - AZARQUIEL</h2>
		</footer>
    </div>

 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>
</html>

</xsl:template>
</xsl:stylesheet>