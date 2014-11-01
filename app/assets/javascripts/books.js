$(document).ready(function() {
  $('#book').live('change',function(event){
    var book_sid = $(this).val();
    var row;
    $.get("/books/get_chapter?book_sid=" + book_sid, function(data){
      $.each(data, function(value) {
        val = value + 1;
        row = row + '<option value="' + val + '">' + val + '</option>';
      });
      $('#chapter').html(row);
    });
  });

  $('#chapter').live('change',function(event){
    var book_sid = $('#book').val();
    var row;
    $.get("/books/get_verse?book_sid=" + book_sid+"&chapter_no="+$(this).val(), function(data){
      $.each(data, function(index,val) {
        console.log(val);
        row = row + '<option value="' + val['no'] + '">' + val['no'] + '</option>';
      });
      $('#verse').html(row);
    });
  });

  $('.submit').live('click',function(event){
    var url = "/books/listen?book_sid="+$('#book').val()+"&chapter_no="+$('#chapter').val()+"&verse_id="+ $('#verse').val();;
    $(this).attr('href',url);
  });



});