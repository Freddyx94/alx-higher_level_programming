function doRequest (url) {
  $.get(url, function (data) {
    $('DIV#character').text(data.name);
  });
}

$(document).ready(() => {
  doRequest('https://swapi-api.alx-tools.com/api/people/5/?format=json');
});
