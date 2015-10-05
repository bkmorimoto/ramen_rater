$(document).ready(function() {

  $('.new-restaurant-form').on('submit', function(event) {
    event.preventDefault();

    $form = $(event.target)

    $.ajax({
      url: $form.attr('action'),
      type: 'POST',
      data: $form.serialize()
    }).then(function(response) {
      $('.restaurant-container').append(response);
      $form.find('input[type=text], textarea').val('');
    })
  })

})