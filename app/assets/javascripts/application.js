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
//= require modernizr.custom
//= require isotope.min
//= require jail.min
//= require quill
//= require spectrum
//= require_tree .

function clearSelected(id){
  $(id).removeAttr("selected");
}

function filter(klass) {
  $('#js-candidate-container').isotope({ filter: klass })
}

$(document).ready(function() {
  $(function(){
    $('img.lazy').jail({
      triggerElement:'body',
      event: 'scroll',
      timeout : 200,
      offset : 300
    });
  });

  var configs = {
    theme: 'snow',
  };

  if (document.getElementById('js-editor')) {
    var editor = new Quill('#js-editor', configs);

    editor.addModule('toolbar', {
      container: '#js-toolbar'
    });

    editor.on('text-change', function(delta, source) {
      $('#js-hidden-field').val(this.getHTML());
    });
  }

  if (document.getElementById('js-candidate-areas')) {
    var candAreEl = document.getElementById('js-candidate-areas');
    var areaPageType = candAreEl.dataset.area;

    if (areaPageType == "governor") {
      candAreEl.scrollLeft = 0;
    }
    else if (areaPageType == "deputy") {
      candAreEl.scrollLeft = candAreEl.offsetWidth + 100;
    }
    else if (areaPageType == "mayor") {
      candAreEl.scrollLeft = candAreEl.offsetWidth/2 -  candAreEl.offsetWidth/5 + 10;
    }
  }

  if (document.getElementById('js-prop-editor')) {
    var editor1 = new Quill('#js-prop-editor', configs);

    editor1.addModule('toolbar', {
      container: '#js-prop-toolbar'
    });

    editor1.on('text-change', function(delta, source) {
      $('#js-proposals-hidden-field').val(this.getHTML());
    });
  }

  if (document.getElementById('js-candidate-container')) {
    setTimeout(function(){
      $('#js-candidate-container').isotope({
        itemSelector: '.candidate-show'
      });

      $('.js-filter-link').on("click", function() {
        console.log(this.dataset.filter);
        filter(this.dataset.filter);
      });
    }, 500);
  }

  $('.line').each(function(i, item) {
    var $item = $(item);
    $item.addClass('col-12');
  });

  if($("#candidate_candidate_area_id option:selected").text() == "Gubernatura") {
    $("#js-party").show();
    $("#js-geography").hide();
  }
  else if($("#candidate_candidate_area_id option:selected").text() != "") {
    $("#js-party").hide();
    $("#js-geography").show();
  }

  $('#candidate_candidate_area_id').on("change", function() {
    if($("#candidate_candidate_area_id option:selected").text() == "Gubernatura") {
      $("#js-party").show();
      clearSelected("#js-geography select option:selected");
      $("#js-geography").hide();
    }
    else if($("#candidate_candidate_area_id option:selected").text() != "") {
      clearSelected("#js-party select option:selected");
      $("#js-party").hide();
      $("#js-geography").show();
    }
    else {
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

  $('.panel-content').scroll(function() {
    var sidebar;
    sidebar = $('.docs-sidebar');
    if ($(window).width() > 767) {
      if ($('.panel-content').scrollTop() >= 320) {
        sidebar.addClass("affix");
      }
      if ($('.panel-content').scrollTop() < 320) {
        return sidebar.removeClass("affix");
      }
    }
  });
});
