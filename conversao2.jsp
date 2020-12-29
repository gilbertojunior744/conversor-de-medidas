<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Resultado Conversao</title>

</head>
<body>
    
    <h1>Resultado Conversao</h1>
    <%
        String $tipo;
        float $valor;
        float $valor2 =0;
        int $unidade1;
        int $unidade2;
        String $base1 = "0";
        String $base2 ="0";
        float $n1 = 0;

            $tipo=request.getParameter("tipo");
            $unidade1=Integer.parseInt(request.getParameter("unidade1"));


            $valor=Float.parseFloat(request.getParameter("valor").replace(',','.'));       
                                  
            $unidade2=Integer.parseInt(request.getParameter("unidade2"));
           
            //Numero escolhido sendo passado para a variavel de conversão
                        $n1=$valor;

                        //Comprimento
            //Converte todos os valores inserido para metro
                   switch($unidade1){
                    case 1: $valor =$valor*1000;
                            $base1 =("Quilometro");
                                        break;
                    case 2: $valor = $valor*1;
                            $base1 =("Metro");
                                        break;
                    case 3: $valor = $valor*(0.1f);
                            $base1 =("Centimetro");
                                        break;
                    case 4:  $valor = $valor*0.001f;
                            $base1 =("Milimetro");
                                        break;
                }
                
            //Converte todos os valores ao resultado Final da unidade de Comprimento
                        switch($unidade2){
                    case 1: $valor2 =$valor*1000;
                            $base2 =("Quilometro");
                                        break;
                    case 2: $valor2 = $valor*1;
                            $base2 =("Metro");
                                        break;
                    case 3: $valor2 =$valor*100;
                            $base2 =("Centimetro");
                                        break;
                    case 4:  $valor2 = $valor*1000;
                            $base2 =("Milimetro");
                                        break;
                }
                                //Massa
            // Converte os valores da unidade massa para quilograma
                    switch($unidade1){
                    case 5: $valor =$valor*1000;
                            $base1 =("Tonelada");
                                        break;
                    case 6: $valor = $valor*1;
                            $base1 =("Quilograma");
                                        break;
                    case 7: $valor =$valor*0.001f;
                            $base1 =("Gramas");
                                        break;
                    case 8: $valor = $valor*0.000001f;
                            $base1 =("Miligrama");
                                        break;

                }
            //Converte os valores da unidade massa para o resultado final
                    switch($unidade2){
                    case 5: $valor2 =$valor*0.001f;
                            $base2 =("Tonelada");
                                        break;
                    case 6: $valor2 = $valor*1;
                            $base2 =("Quilograma");
                                        break;
                    case 7: $valor2 =$valor*1000;
                            $base2 =("Grama");
                                        break;
                    case 8:  $valor2 = $valor*1000000;
                            $base2 =("Miligramas");
                                        break;
                }
                              //Temperatura

            // Converte os valores da unidade Temperatura para Celsius

                    switch($unidade1){
                    case 9: $valor =$valor*1;
                            $base1 =("Celsius");
                                        break;
                    case 10: $valor = ($valor-32)*5/9;
                            $base1 =("Fahrenheit");
                                        break;
                    case 11: $valor =$valor-273.15f;
                            $base1 =("Kelvin");
                                        break;


                }
            // Converte os valores da unidade Temperatura para o resultado final

                    switch($unidade2){
                    case 9: $valor2 =$valor*1;
                            $base2 =("Celsius");
                                        break;
                    case 10: $valor2 = ($valor*9/5)+32;
                            $base2 =("Fahrenheit");
                                        break;
                    case 11: $valor2 =$valor+273.15f;
                            $base2 =("Kelvin");
                                        break;
                }


    %>
    <!---Imprime os resultados na tela -->
    <p><h3>Tipo de conversao:</h3> <%= $tipo %></p>
    <p><h3>Unidade de Medida Atual:</h3> <%= $base1 %></p>
    <p><h3>Unidade de Medida convertida:</h3><%= $base2 %> </p>
    <p><h3>Numero escolhido: </h3><%= $n1  %></p>
    <p><h3>Resutaldo: </h3><%= $valor2 %> <%= $base2 %></p>
   

</body>
</html>