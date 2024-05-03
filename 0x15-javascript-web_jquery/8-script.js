function doRequest (url) {
  $.get(url, function (data) {
    for (const x in data.films) {
      $.get(data.films[x], function (res) {
        $('UL#list_movies').append($("<li></li>").text(res.title));
      });
    }
  });
}

$(document).ready(() => {
  doRequest('https://swapi-api.alx-tools.com/api/films/?format=json');
});
