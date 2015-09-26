$(document).ready(function() {
  
  $('.new-post-form').on('submit', function(event) {
    event.preventDefault();

    var $form = $(event.target);

    $.ajax({
      url: $form.attr('action'),
      type: 'POST',
      data: $form.serialize()
    }).then(function(response) {
      $('.post-container').append(response);
      $form.find('input[type=text], textarea').val('');
      $('.rating-radio').prop('checked', false)
    })

  })
})