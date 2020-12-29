<html>
    <head>

    </head>
    <body>
        <% 
            String nome_completo;
            int $idade;
            char $sexo;
            float $peso;
            float $altura;
            float $imc;
            

                nome_completo = request.getParameter("nome");
                $idade =Integer.parseInt(request.getParameter("idade"));
                $sexo = request.getParameter("sexo").charAt(0);
                $peso = Float.parseFloat(request.getParameter("peso").replace(',','.'));
                $altura= Float.parseFloat(request.getParameter("altura").replace(',','.'));


        %>
        <h1>Indice de Massa Corporal </h1><br>
        <p><b> Nome:</b><%= nome_completo %></p>
        <p><b> Idade:</b><%= $idade %></p>
        <p><b> Sexo:</b> <%= $sexo %></p>
        <p><b> Peso:</b> <%= $peso %></p>
        <p><b> Altura:</b> <%= $altura %></p>
        <p><b> Seu Indice de Massa Corporal: </b> <%= $imc=$peso/($altura*$altura)%></p>
    </body>
</html>