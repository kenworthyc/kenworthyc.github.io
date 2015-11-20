<?php
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $from = 'From: kenworthyc';
    $to = 'kenworthyc@gmail.com';
    $subject = 'Hi, Caroline';

    $body = "From: $name\n E-Mail: $email\n Message:\n $message";
?>

<?php
if ($_POST['submit']) {
    if (mail ($to, $subject, $body, $from)) {
        echo '<p>Thanks for your note!</p>';
    } else {
        echo '<p>Something went wrong, go back and try again!</p>';
    }
}
?>