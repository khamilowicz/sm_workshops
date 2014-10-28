$(document).ready(function () {
  $("a.play").on("click", function (e) {
    e.preventDefault();
    var id = this.id;
    var a = $("audio#" + id)[0];

    if(a.paused){
      a.play();
    }else{
      a.pause();
    } 
  }); 
});
