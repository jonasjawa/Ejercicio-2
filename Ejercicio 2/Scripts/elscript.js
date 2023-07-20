function Primo(num) {

    //Comprueba los primos 
    for (let i = 2; i < num; i++)
        if (num % i === 0) return false;
    return num > 1;
}

function laTabla() {
    
    //Recoge el numero y tambien el elemento tabla
    var num = document.getElementById("num-input").value;
    var tabla = document.getElementById("tabla");

    //empieza a hacer la tabla
    var html = "<table>";
    var contador = 0;

    //Recorre el numero creando la tabla
    for (let i = 0; i <= num; i++) {

        //para que sean 10 columnas
        if (contador % 10 == 0) {
            html += "<tr>";
        }

        //si es primero añade una clase al TD que luego se pinta
        if (Primo(i)) {
            html += "<td class='numeros-primos'>" + i + "</td>";
        } else {
            html += "<td>" + i + "</td>";
        }

        contador++;

        if (contador % 10 == 0) {
            html += "</tr>";
        }
    }
    //finaliza la tabla
    html += "</table>";

    //lo mete todo en el html
    tabla.innerHTML = html;
  
}