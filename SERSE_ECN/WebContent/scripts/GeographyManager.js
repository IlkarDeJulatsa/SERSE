/**
 * Project: SERSE_ECN
 * Creation date: 03 mar. 2014
 * Author: Audrey
 * Gestion du contenu des listes de:
 * - continent
 * - pays
 * - ville
 * - université/entreprise noms
 * en fonction des choix faits dans les champs :
 * - continent
 * - pays
 * - ville
 */

function updatePaysAccordingToContinent(avecAutre){
	if($("#continent").val()!='defaut'){
		var $argumentsJson = {nom_liste:'pays', message_defaut:$("#pays option[value='defaut']").text(), continent:$("#continent").val()};
		var $liste = $('#pays');
		update($liste, $argumentsJson, avecAutre);
	}
}

function updateVilleAccordingToContinent(avecAutre){
	if ($("#continent").val()!='defaut'){
		var $argumentsJson = {nom_liste:'ville', message_defaut:$("#ville option[value='defaut']").text(), continent:$("#continent").val()};
		var $liste = $('#ville');
		update($liste, $argumentsJson, avecAutre);
	}
}

function updateVilleAccordingToPays(){
	if ($("#pays").val()!='defaut'){
		var $argumentsJson = {nom_liste:'ville', message_defaut:$("#ville option[value='defaut']").text(), pays:$("#pays").val()};
		var $liste = $('#ville');
		update($liste, $argumentsJson, avecAutre);
	}
}

function updateUniversiteAccordingToContinent(){
	if($("#continent").val()!='defaut'){
		var $argumentsJson = {nom_liste:'universite', message_defaut:$("#universite_entreprise option[value='defaut']").text(), continent:$("#continent").val()};
		var $liste = $('#universiteGroup');
		update($liste, $argumentsJson, avecAutre);
	}
}

function updateUniversiteAccordingToPays(){
	
}

function updateUniversiteAccordingToVille(){
	
}

function updateEntrepriseAccordingToContinent(){
	if($("#continent").val()!='defaut'){
		var $argumentsJson = {nom_liste:'entreprise', message_defaut:$("#universite_entreprise option[value='defaut']").text(), continent:$("#continent").val()};
		var $liste = $('#entrepriseGroup');
		update($liste, $argumentsJson, avecAutre);
	}
}

function updateEntrepriseAccordingToPays(){
	
}

function updateEntrepriseAccordingToVille(){
	
}

function update(liste, argumentsJson, avecAutre){
	$.post('OptionsRestreintesServlet',argumentsJson, function(responseJson) {  
        fillOptions(liste, responseJson);
        if (avecAutre){
        	addOptionAutre(liste);
        }
	});
}
