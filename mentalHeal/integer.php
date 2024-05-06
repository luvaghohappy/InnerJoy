<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: GET, POST");

include('conn.php');

// Récupération des données du formulaire, en les protégeant contre les attaques XSS
$nom = htmlspecialchars($_POST["nom"]);
$description = htmlspecialchars($_POST["descriptions"]);


// Requête SQL pour vérifier si le pseudo existe déjà
$check_query = "SELECT * FROM groupes WHERE nom = ?";
$check_stmt = mysqli_prepare($connect, $check_query);
mysqli_stmt_bind_param($check_stmt, "s", $nom);
mysqli_stmt_execute($check_stmt);
mysqli_stmt_store_result($check_stmt);

// Vérifier le nombre de lignes retournées par la requête
if(mysqli_stmt_num_rows($check_stmt) > 0) {
    // Le pseudo existe déjà, vous pouvez renvoyer une réponse appropriée
    echo json_encode("Ce groupe existe déjà");
} else {
    $insert_query = "INSERT INTO groupes (nom, descriptions) VALUES (?, ?)";
    $insert_stmt = mysqli_prepare($connect, $insert_query);
    mysqli_stmt_bind_param($insert_stmt, "ss", $nom, $description);
    
    // Exécuter la requête d'insertion
    if(mysqli_stmt_execute($insert_stmt)) {
        echo json_encode("success");
    } else {
        echo json_encode("failed");
    }
}
?>