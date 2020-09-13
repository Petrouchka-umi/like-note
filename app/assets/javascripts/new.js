let images = $(".face") 
imagesAry = Array.prototype.slice.call(images);

$(function(){
  $(".face").on('click', function(e){
    e.preventDefault()
    console.log("face")
    // $(this).classList.toggle("red");
  });
});