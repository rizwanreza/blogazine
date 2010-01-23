$(document).ready(function(){
  $("#commentForm").validate({
    rules: {
        // simple rule, converted to {required:true}
        name: "required",
        // compound rule
        email: {
          required: true,
          email: true
        }
      }
  });
});
