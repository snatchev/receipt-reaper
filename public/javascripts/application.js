$(function(){
  $('#receipt_category_id').change(function(){
    var $self = $(this);
    if($self.val() == "Add New"){
      var categoryName = prompt("Category name");
      if(categoryName != null && categoryName != ""){
        $.post('/categories', {category_name: categoryName}, function(data){
          $("<option></option>")
            .attr("value", data.category.id)
            .text(data.category.name)
            .prependTo($self);
          $self.val(data.category.id);
        }, 'json');
      }
    }
  })
});
