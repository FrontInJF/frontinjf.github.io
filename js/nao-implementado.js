;(function(){
  var elements = document.querySelectorAll('[data-nao-implementado]');
  var qtdElements = elements.length;
  for(var i = 0; i < qtdElements; i++){
    elements[i].addEventListener('click', function(event){
      alert('Página não implementada');
    });
  }
})();
