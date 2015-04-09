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

var eeee;

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

if (document.getElementById('js-prop-editor')) {
  var configs = {
    theme: 'snow',
  };

  var editor = new Quill('#js-prop-editor', configs);

  editor.addModule('toolbar', {
    container: '#js-prop-toolbar'
  });

  editor.on('text-change', function(delta, source) {
    $('#js-proposals-hidden-field').val(this.getHTML());
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


$('form').on('click', '.remove_fields', function(event){
  $(this.parentElement).find('input[type=hidden]').val('1');
  $(this).closest('fieldset').hide();
  event.preventDefault();
});

$('form').on('click', '.add_fields', function(event){
  var configs = {
    theme: 'snow',
  };
  var time = new Date().getTime();
  var regexp = new RegExp($(this).data('id'), 'g');
  $(this.parentNode).before($(this).data('fields').replace(regexp, time));

  var content = this.parentNode.parentNode.getElementsByClassName("milestone");
  content = content[content.length-1];
  content = content.firstElementChild;

  var accomp = content.getElementsByClassName("accomplished")[0].getElementsByClassName("inner")[0];

  var editorAccomp = new Quill(accomp.getElementsByClassName("js-editor")[0], configs);
  editorAccomp.addModule('toolbar', {
    container: accomp.getElementsByClassName("js-toolbar")[0]
  });

  editorAccomp.on('text-change', function(delta, source) {
    $(accomp).find("input:hidden").val(this.getHTML());
  });

  var proposals = content.getElementsByClassName("proposals")[0].getElementsByClassName("inner")[0];

  var editorProp = new Quill(proposals.getElementsByClassName("js-editor")[0], configs);

  editorProp.addModule('toolbar', {
    container: proposals.getElementsByClassName("js-toolbar")[0]
  });

  editorProp.on('text-change', function(delta, source) {
    $(proposals).find("input:hidden").val(this.getHTML());
  });

  event.preventDefault();
});

$(document).ready(function() {
  for (var i = 0; i < document.getElementsByTagName("fieldset").length; i++) {
    var field = document.getElementsByTagName("fieldset")[i];
    var accomp = field.getElementsByClassName("accomplished")[0].getElementsByClassName("inner")[0];
    var editorAccomp = new Quill(accomp.getElementsByClassName("js-editor")[0], configs);
    editorAccomp.addModule('toolbar', {
      container: accomp.getElementsByClassName("js-toolbar")[0]
    });
    editorAccomp.on('text-change', function(delta, source) {
      $(accomp).find("input:hidden").val(this.getHTML());
    });
    var proposals = field.getElementsByClassName("proposals")[0].getElementsByClassName("inner")[0];
    var editorProp = new Quill(proposals.getElementsByClassName("js-editor")[0], configs);
    editorProp.addModule('toolbar', {
      container: proposals.getElementsByClassName("js-toolbar")[0]
    });
    editorProp.on('text-change', function(delta, source) {
      $(proposals).find("input:hidden").val(this.getHTML());
    });
  }
});
