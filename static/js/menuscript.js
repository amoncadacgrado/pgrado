function getColumnCount() {
    var windowWidth = window.innerWidth;
    if (windowWidth >= 1200) {
      return 4;
    } else if (windowWidth >= 800) {
      return 3;
    } else {
      return 2;
    }
  }
  
  function generateTable() {
    var table = document.getElementById('dynamic-table');
    table.innerHTML = ''; // Limpiar contenido previo de la tabla
  
    var rowCount = 3;
    var colCount = getColumnCount();
  
    for (var i = 0; i < rowCount; i++) {
      var row = document.createElement('tr');
      for (var j = 0; j < colCount; j++) {
        var cell = document.createElement('td');
        var cellText = document.createTextNode('Row ' + (i + 1) + ', Column ' + (j + 1));
        cell.appendChild(cellText);
        row.appendChild(cell);
      }
      table.appendChild(row);
    }
  }
  
  window.addEventListener('DOMContentLoaded', generateTable);
  window.addEventListener('resize', generateTable);
  