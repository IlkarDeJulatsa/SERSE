/**
 * Project: SERSE_ECN
 * Creation date: 04 mar. 2014
 * Author: Audrey
 * Bouton Reset, Valider, Envoyer
 */

$(document).ready(function() {
	$('#valider').click(function(){
		var $argumentsJson = recupererArguments();
		alert("Page de validation" + $argumentsJson);
	});
	
	$('#reset').click(function(){
		$('#continent').val("defaut");
		$('#pays').val("defaut");		
		$('#ville').val("defaut");
		$('#sejour').val("defaut");
		$('#mobilite').val("defaut");
		$('#experience').val("defaut");
		$('#universite_entreprise').val("defaut");
		$('#langue').val("defaut");
		$('#domaine').val("defaut");
		
		$('#dateDebut').val('');
		$('#dateFin').val('');
		$('#adresse').val('');
		$('#coordonnees').text('Lancer la recherche apres avoir saisi l\'adresse');
		$('#cheminFichier').val('');	
		
		$('#autrePays').hide();
		$('#autreVille').hide();
		$('#autreUniversite').hide();
		$('#autreEntreprise').hide();
		$('#autreLangue').hide();
		$('#autreDomaine').hide();
	});
});

function recupererArguments(){
	
}
