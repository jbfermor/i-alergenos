//FILTROS DE TABLAS
var busqueda = document.getElementById('buscar');
var clientesIndex = document.getElementById('clientesIndex').tBodies[0];

   buscaTabla = function(){
     texto = busqueda.value.toLowerCase();
     var r=0;
     while(row = clientesIndex.rows[r++])
     {
       if ( row.innerText.toLowerCase().indexOf(texto) !== -1 )
         row.style.display = null;
       else
         row.style.display = 'none';
     }
   }

   busqueda.addEventListener('keyup', buscaTabla);
