$(function(){
  //TODO: extract common behaviour
  $('#receipt_category_id').change(function(){
    var $self = $(this);
    if($self.find(":selected").text() == "-- Add New --"){
      var categoryName = prompt("Category name");
      if(categoryName != null && categoryName != ""){
        $.post('/categories', {'category[name]': categoryName}, function(data){
          $("<option></option>")
            .attr("value", data.category.id)
            .text(data.category.name)
            .prependTo($self);
          $self.val(data.category.id);
        }, 'json');
      }
    }
  })

  $('#receipt_account_id').change(function(){
    var $self = $(this);
    if($self.find(":selected").text() == "-- Add New --"){
      var accountName = prompt("Account name");
      if(accountName != null && accountName  != ""){
        $.post('/accounts', {'account[name]': accountName}, function(data){
          $("<option></option>")
            .attr("value", data.account.id)
            .text(data.account.name)
            .prependTo($self);
          $self.val(data.account.id);
        }, 'json');
      }
    }
  });

  $("#receipt_name").focus();
});
