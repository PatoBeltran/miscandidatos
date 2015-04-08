// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require furatto.min
//= require isotope.min
//= require quill
//= require spectrum
//= require_tree .

function clearSelected(id){
  $(id).removeAttr("selected");
}

if (document.getElementById('js-editor')) {
  var configs = {
    theme: 'snow',
  };

  var editor = new Quill('#js-editor', configs);

  editor.addModule('toolbar', {
    container: '#js-toolbar'
  });

  editor.on('text-change', function(delta, source) {
    $('#js-hidden-field').val(this.getHTML());
  });
}

if (document.getElementById('js-candidate-container')) {
  $('#js-candidate-container').isotope({
    itemSelector: '.candidate-show'
  });

  $('.js-filter-link').on("click", function() {
    console.log(this.dataset.filter);
    filter(this.dataset.filter);
  });
}

function filter(klass) {
  $('#js-candidate-container').isotope({ filter: klass })
}

$('.line').each(function(i, item) {
  var $item = $(item);
  $item.addClass('col-12');
});

if($("#candidate_candidate_area_id option:selected").text() == "Gubernatura") {
  $("#js-party").show();
  $("#js-geography").hide();
} else if($("#candidate_candidate_area_id option:selected").text() != "") {
  $("#js-party").hide();
  $("#js-geography").show();
}

$('#candidate_candidate_area_id').on("change", function() {
  if($("#candidate_candidate_area_id option:selected").text() == "Gubernatura") {
    $("#js-party").show();
    clearSelected("#js-geography select option:selected");
    $("#js-geography").hide();
  } else if($("#candidate_candidate_area_id option:selected").text() != "") {
    clearSelected("#js-party select option:selected");
    $("#js-party").hide();
    $("#js-geography").show();
  } else {
    clearSelected("#js-party select option:selected");
    $("#js-party").hide();
    clearSelected("#js-geography select option:selected");
    $("#js-geography").hide();
  }
});
