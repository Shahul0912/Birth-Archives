<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<style>
		img {
           width: 190px; /* Adjust width as needed for your logo */
           height:170px;
           margin-bottom: 0px;</style>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Birth Archives - Help</title>
  <link rel="stylesheet" href="style.css">
</head>
<body style="background-image: url('background.jpg'); background-size: cover; background-position: center;">

  <header>
    <a href="index.html">
      <img src="resources/logo.png" alt="Birth Archives Logo">
    </a>
    <h1>Birth Archives</h1>
</header>

  <main>
    <h2>Help & FAQs</h2>

    <section class="faq">
      <h3>Searching for Birth Records</h3>
      <ul>
        <li><b>What information do I need to search for a birth record?</b>
          The more information you have, the easier it will be to find the specific record you're looking for. Ideally, try to include details like full name at birth, date of birth (or approximate year range), birthplace (city, county, state), and parents' names (if known).
        </li>
        <li><b>Can I search by keywords?</b>
          Our search function currently does not support keyword searches. However, you can utilize wildcards () to broaden your search. For example, searching for "Smith John*" might return results for "John Smith," "John A. Smith," or "John David Smith."
        </li>
        <li><b>What if I can't find the birth record I'm looking for?</b>
          Our collection is constantly growing, but it's possible the record you seek hasn't been digitized yet. You can try searching alternative sources, such as local government archives or historical societies in the area of birth.
        </li>
      </ul>
    </section>

    <section class="faq">
      <h3>Accessing Birth Records</h3>
      <ul>
        <li><b>Are there any fees associated with accessing birth records?</b>
          Some birth records may require a small fee to download or view a copy. This fee will vary depending on the record and the specific regulations of the issuing authority. Birth Archives itself does not charge any fees for searching the records.
        </li>
        <li><b>What if a birth record contains sensitive information?</b>
          Birth records may contain privacy restrictions for a certain period of time. Birth Archives adheres to all applicable laws and regulations regarding privacy. If you encounter a restricted record, you may need to contact the issuing authority directly.
        </li>
        <li><b>How can I cite a birth record found on Birth Archives?</b>
          When citing a birth record from our website, please include the following information: website name (Birth Archives), date accessed, URL of the specific record page, and any additional details provided within the record itself.
        </li>
      </ul>
    </section>

    <p><b>Still have questions?</b></p>
    <p>Feel free to contact our friendly support team at <a href="mailto:support@birtharchives.com">support@birtharchives.com</a>. We're here to help!
    </p>

  </main>

  <footer>
    <p>&copy; Birth Archives <?php echo date("Y"); ?></p>
    <a href="#">Privacy Policy</a>
    <a href="#">Terms & Conditions</a>
  </footer>
</body>
</html>