﻿<!-- 
 Utilisateurs : Etudiants
 Page : Recherche de Rapports
 Date création : 14/02/2014
-->

<%@ page language="java" 
	contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
	
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>SERSE Recherche de Rapports</title>
		<link rel="stylesheet" type="text/css" href="styles/jquery.dataTables.css"/>
		<link rel="stylesheet" type="text/css" href="styles/serse_main.css"/>
		<script type="text/javascript" src="scripts/jquery/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="scripts/jquery/jquery.dataTables.js"></script>

		<script type="text/javascript" src="scripts/menu.js"></script>
		<script type="text/javascript" src="scripts/OptionsRemplissage.js"></script>
		<script type="text/javascript" src="scripts/RecherchePageInitialisation.js"></script>
		
		<script type="text/javascript" src="scripts/GeographyManager.js"></script>
		<script type="text/javascript" src="scripts/SejourManager.js"></script>
		<script type="text/javascript" src="scripts/RechercheMobiliteManager.js"></script>
		<script type="text/javascript" src="scripts/RechercheFiltresAction.js"></script>
		
		<script type="text/javascript" src="scripts/Recherche.js"></script>
		
	</head>

	<body>
<!-- Onglets du menu de navigation et en-tête de page-->
		<p><%@include file="menu.jsp" %></p>

<!-- paragraphe "Criteres de recherche"-->
		<p>
			<fieldset>
				<h3> Critères de recherche</h3>
<!-- Sous-paragraphe "Continent, Pays, Ville"-->
				<p>
					<fieldset>
						<h3> Continent, Pays, Ville</h3>
<!-- "Continent"-->
						<p>
							<select name="continent" id="continent">
								<option value="defaut" selected="selected">Tous les continents</option>
									<!-- available options are filled by AJAJ -->						
							</select>
						</p>
						
<!-- "Pays"-->
						<p>
							<select name="pays" id="pays">
								<option value="defaut" selected="selected">Tous les pays</option>
									<!-- available options are filled by AJAJ -->	
							</select>
						</p>

<!-- "Ville"-->
						<p>
							<select name="ville" id="ville">
								<option value="defaut" selected="selected">Toutes les villes</option>
									<!-- available options are filled by AJAJ -->
							</select>
						</p>
				</fieldset>
			</p>
			
			
<!-- Sous-paragraphe Séjour"-->
			<p>
				<fieldset>
					<h3> Séjour </h3>
					<table id="tableUniversiteEntreprise">
						<tr>
							<td><input type="checkbox" id="sejourUniversite" checked="checked"/> <label for="sejourUniversite">Université</label></td>
							<td><input type="checkbox" id="sejourEntreprise" checked="checked"/> <label for="sejourEntreprise">Entreprise</label></td>
						</tr>
					</table>		
				</fieldset>
			</p>

<!-- Sous paragraphe Cadre de mobilite"-->
			<p>
				<fieldset>
					<h3>Cadre de mobilite</h3>
					<table id="tableMobilite">
						<tr>
							<td>
								<input type="checkbox" id="cadreProfessionnel" checked="checked"/><label for="cadreProfessionnel">Professionnel</label>
								<ul id='casesCadreProfessionnel' style="list-style: none">
								    <li><input type='checkbox' id='pCME' checked="checked"/>CME</li>
								    <li><input type='checkbox' id='pSTING' checked="checked"/>STING</li>
								    <li><input type='checkbox' id='pTFE' checked="checked"/>TFE</li>
								    <li><input type='checkbox' id='pCesure' checked="checked"/>Césure</li>
								    <li><input type='checkbox' id='pSemestre' checked="checked"/>Semestre</li>	    
								</ul>
							</td>
							<td>
								<input type="checkbox" id="cadreAcademique" checked="checked"><label for="cadreAcademique">Académique</label>
								<ul id='casesCadreAcademique' style="list-style: none">
								    <li><input type='checkbox' id='aSemestre' checked="checked"/>Semestre</li>
								    <li><input type='checkbox' id='aAnnee' checked="checked"/>Année</li>
								    <li><input type='checkbox' id='aDoubleDiplome' checked="checked"/>Double Diplême</li>
								    <li><input type='checkbox' id='aCesure' checked="checked"/>Césure</li>	
								    <li style='visibility:hidden'>Space</li>	    
								</ul>
							</td>
						</tr>		
					</table>
				</fieldset>
			</p>			
			
<!-- Sous paragraphe Autres-->
			<p>
				<fieldset>
				<h3>Autres</h3>
					<p>
<!-- Universites/Entreprises -->
						<select id="universite_entreprise">
							<option value="defaut" selected="selected">Toutes les universités et entreprises</option>
							<optgroup id="universiteGroup" label="Université"></optgroup>
								<!-- available options are filled by AJAJ -->	
							<optgroup id="entrepriseGroup" label="Entreprise"></optgroup>
								<!-- available options are filled by AJAJ -->						
						</select>
					</p>
				
<!-- Langues -->
					<p>
						<select id="langue">
							<option value="defaut" selected="selected">Toutes les langues</option>
								<!-- available options are filled by AJAJ -->							
						</select>
					</p>
								
<!-- Domaine d activites -->
					<p>
						<select id="domaine">	
							<option value="defaut" selected="selected">Tous les domaines d'activité</option>
							<!-- available options are filled by AJAJ -->	
						</select>
					</p>
				
<!-- Tous les rapports -->
					<p>
						<select id="date">
							<option value="defaut" selected="selected">Tous les rapports</option>
							<option value="2014">Rapports après 2014</option>
							<option value="2013">Rapports après 2013</option>
							<option value="2012">Rapports après 2012</option>	
						</select>
					</p>
				</fieldset>
			</p>
		</fieldset>
	</p>
		
<!-- Resultats"-->
	<p>
		<fieldset>
			<h3> Résultats </h3>
			<!--<p>
				<select name="resultatPage" id="resultatPage">					
					<option value="Resutalts par page" selected="selected">Resultats pas page</option>
					<option value="10resultats">10 Résultats</option>
					<option value="20resultats">20 Résultats</option>
					<option value="30resultats">30 Résultats</option>
					<option value="40resultats">40 Résultats</option>
					<option value="50resultats">50 Résultats</option>
				</select>
			</p>-->
		
			<table id="tableauResultats">
				<thead>
					<tr>
						<th></th> <!-- pour les icônes de téléchargement -->
						<th>Rapport<img src="images/iconeCroissantDecroissant.png" class="imageflottante"></th>
						<th>Dates<img src="images/iconeCroissantDecroissant.png" class="imageflottante"></th>
						<th>Pays<img src="images/iconeCroissantDecroissant.png" class="imageflottante"></th>
						<th>Ville<img src="images/iconeCroissantDecroissant.png"  class="imageflottante"></th>
						<th>Lieux<img src="images/iconeCroissantDecroissant.png" class="imageflottante"></th>
						<th>Domaine<img src="images/iconeCroissantDecroissant.png" class="imageflottante"></th>
						<th>Mobilite<img src="images/iconeCroissantDecroissant.png" class="imageflottante"></th>
						<th>Langue<img src="images/iconeCroissantDecroissant.png" class="imageflottante"></th>
					</tr>
				</thead>
				<tbody id="contenuTableauResultats">
						<!-- résultats are filled by AJAJ -->
				</tbody>

			</table>
		</fieldset>
	</p>
</form>
	
</body>
</html>