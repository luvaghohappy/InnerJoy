<?php
session_start();
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: GET, POST");

include('conn.php');

if(isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];
    // Requête pour récupérer le pseudo et le profil de l'utilisateur connecté
    $query = "SELECT pseudo, profil FROM users WHERE id = ?";
    $stmt = mysqli_prepare($connect, $query);
    mysqli_stmt_bind_param($stmt, "i", $user_id);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);

    if(mysqli_stmt_num_rows($stmt) > 0) {
        mysqli_stmt_bind_result($stmt, $pseudo, $profil);
        mysqli_stmt_fetch($stmt);
        
        $response = array(
            'pseudo' => $pseudo,
            'profil' => $profil
        );
        
        echo json_encode($response);
    } else {
        echo json_encode("Utilisateur non trouvé");
    }
} else {
    echo json_encode("Utilisateur non connecté");
}
?>