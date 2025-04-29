<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Evaluación</title>
    <link rel="stylesheet" href="estilos.css"> <!-- Igual que en el index -->
</head>
<body>

    <header>
        <h1>Formulario de Evaluación: Parque Natural de Sorteny</h1>
    </header>

    <section>
        <form id="evaluacion" method="post">
            <ol>
                <li>
                    ¿En qué país se encuentra el Parque Natural de Sorteny?<br>
                    <input type="text" name="preg1" required>
                </li>
                <li>
                    ¿Cuántas hectáreas abarca el parque?<br>
                    <input type="text" name="preg2" required>
                </li>
                <li>
                    ¿Cuál es la altitud máxima del parque?<br>
                    <input type="text" name="preg3" required>
                </li>
                <li>
                    ¿Cuántas especies de fauna alberga aproximadamente?<br>
                    <input type="text" name="preg4" required>
                </li>
                <li>
                    Menciona una actividad que puedes realizar en Sorteny.<br>
                    <input type="text" name="preg5" required>
                </li>
            </ol>
            <br>
            <div class="boton-formulario">
                <button type="button" onclick="evaluar()">Enviar Respuestas</button>
            </div>
        </form>

        <h2 id="resultado"></h2>
    </section>

    <script>
        function evaluar() {
            let formulario = document.forms["evaluacion"];
            let respuestasCorrectas = 0;

            if (formulario["preg1"].value.trim().toLowerCase() === "andorra") respuestasCorrectas++;
            if (formulario["preg2"].value.trim() === "1080") respuestasCorrectas++;
            if (formulario["preg3"].value.trim() === "2915") respuestasCorrectas++;
            if (formulario["preg4"].value.trim() === "700") respuestasCorrectas++;
            if (formulario["preg5"].value.trim().toLowerCase().includes("senderismo") ||
                formulario["preg5"].value.trim().toLowerCase().includes("relax") ||
                formulario["preg5"].value.trim().toLowerCase().includes("educación ambiental")) {
                    respuestasCorrectas++;
            }

            let nota = (respuestasCorrectas / 5) * 10;
            document.getElementById("resultado").innerText = "Tu nota es: " + nota.toFixed(1) + "/10";
        }
    </script>

</body>
</html>
