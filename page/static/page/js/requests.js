  function PullData() {
    $('.ajaxProgress').show();
    $.ajax({
      type:"GET",
      url:"http://baconpancakes:8000/api/clients/",
      dataType: "json",
      async: true,
      data:{csrfmiddlewaretoken: '{{ csrf_token }}'},
      success: function (json){
        $('#output').html(json);
        $('.ajaxprogress').hide();
      }
    });
  }
