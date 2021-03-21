//FILTROS DE TABLAS
var busqueda = document.getElementById('buscar');
var addIngredientes = document.getElementById('addIngredientes').tBodies[0];

   buscaTabla = function(){
     texto = busqueda.value.toLowerCase();
     var r=0;
     while(row = addIngredientes.rows[r++])
     {
       if ( row.innerText.toLowerCase().indexOf(texto) !== -1 )
         row.style.display = null;
       else
         row.style.display = 'none';
     }
   }

   busqueda.addEventListener('keyup', buscaTabla);
