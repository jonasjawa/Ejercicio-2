<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ejercicio_2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <!-- Podria hacerse con un html en lugar de un proyecto de asp.net, pero como se pedia hacer con visual studio he generado el proyecto aunque no sea practico -->

    <!-- el css que pintara el numero primo -->
    <style>

        .numeros-primos{
            background: #0ee92b;
        }
        td {
    border: solid 1px;
    padding: 15px;
}
    </style>
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Ejercicio 2</h1>
        </section>
        <!-- Pedimos el numero, min 1 para que sea positivo -->
            <input type="number" id="num-input" min="1" placeholder="Introduce un número entero positivo">

        <!-- llamamos a la funcion javascript -->
    <button onclick="clickboton()">Generar Tabla</button>
        <!-- la tabla donde se metera el codigo html generado -->
    <div id="tabla"></div>
    <!-- el javascript donde esta la funcion -->
    
    <script src="Scripts/elscript.js"></script>

        <script>
            function clickboton(){

                //con este evento evitamos el comportambien del boton para que no refresque y podamos ver la tabla
                event.preventDefault();

                //Llamamos a la tabla
                laTabla();
            }
        </script>

    </main>


    

</asp:Content>
