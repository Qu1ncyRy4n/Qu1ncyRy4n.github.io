+++
title = "Contact"
+++

Feel free to reach out!

<form class="contact" action="https://api.web3forms.com/submit" method="POST">
  <!-- Web3Forms public access key: safe to publish, only allows sending to my inbox. -->
  <input type="hidden" name="access_key" value="9deb699d-736a-4e92-8d40-9ddad1be7d1a">
  <input type="hidden" name="subject" value="New message from quincyryan.com">
  <input type="hidden" name="from_name" value="quincyryan.com">
  <input type="hidden" name="redirect" value="https://quincyryan.com/thanks/">
  <input type="checkbox" name="botcheck" class="botcheck" tabindex="-1" autocomplete="off">

  <label>Name <input type="text" name="name" required autocomplete="name"></label>
  <label>Email <input type="email" name="email" required autocomplete="email"></label>
  <label>Message <textarea name="message" rows="7" required></textarea></label>
  <button type="submit">send</button>
</form>
