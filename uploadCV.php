<?php include 'header.php'; ?>


<div class="container">

<h1>Upload CV's Picture</h1>

<br><br>

<h4>We don't really believe in PDFs since a picture is worth thousand words.</h4>

<br><br>
<div style="position:relative;">
	<form action="" method="POST" enctype="multipart/form-data">

		<input type="file" name="files"><br><br>
		<input type="submit" value="Upload">
		
	</form><br>

        <?php  include 'fileUpload.php'; ?>

</div>

</div>




<?php include 'footer.php'; ?>
