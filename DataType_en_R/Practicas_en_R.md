# Mejores Prácticas con Variables en R

## Importancia de las Variables en R
Las variables en R son esenciales para almacenar, modificar y reutilizar información de manera clara y eficiente. Piensa en ellas como **contenedores etiquetados** que almacenan datos como números, texto o tablas, los cuales puedes actualizar o acceder fácilmente.

## Mejores Prácticas para Nombres de Variables
Para que tu código sea claro y fácil de seguir, sigue estas prácticas recomendadas:

- **Elige nombres descriptivos**: Usa nombres que expliquen lo que la variable almacena, por ejemplo, **`total_revenue`** en lugar de **`rev`**.
- **Mantén consistencia**: Usa un estilo de nombrado consistente en todo tu código. Ejemplos populares en R incluyen:
  - **snake_case**: palabras separadas por guiones bajos, como **`average_price`**.
  - **camelCase**: sin espacios, con la primera letra de las palabras posteriores en mayúscula, como **`averagePrice`**.
- **Evita palabras reservadas**: No utilices palabras clave de R como **`if`**, **`else`**, **`TRUE`**, etc.
- **Mantén los nombres cortos pero claros**: Usa nombres intuitivos que no sean demasiado largos, como **`customer_name`** en lugar de **`z`**.

## Ámbito de las Variables en R
R tiene dos tipos de **ámbito** para las variables:

- **Ámbito Global**: Las variables creadas fuera de funciones pueden ser accesibles y modificadas en cualquier parte del script.
- **Ámbito Local**: Las variables creadas dentro de funciones o bucles solo son accesibles dentro de ese contexto.

Es recomendable usar **variables locales** para evitar sobrescribir información accidentalmente o generar errores difíciles de rastrear.

## Gestión Eficiente de la Memoria
Para trabajar con conjuntos de datos grandes, sigue estos consejos para optimizar la memoria:

- **Eliminar variables no usadas**: Usa la función **`rm()`** para eliminar variables cuando ya no las necesites.
- **Elegir tipos de datos apropiados**: Usa el tipo de datos más eficiente. Por ejemplo, usa **`integer`** en lugar de **`numeric`** para números enteros.
- **Evitar copias innecesarias**: Si solo necesitas modificar un objeto, evita copiarlo innecesariamente para ahorrar memoria.

## Errores Comunes a Evitar

- **Usar variables sin inicializarlas**: Siempre asigna un valor antes de usar una variable. De lo contrario, R lanzará errores. Ejemplo:

  ```r
  total_patients <- 1200
  total_physicians <- 10
  average_patients <- total_patients / total_physicians
  ```
- **Mezclar tipos de datos incorrectamente**: Evita errores al intentar sumar números y texto directamente. Usa paste() para combinar texto y números:

  ```r
  temperature <- 37.5
  unit <- "Celsius"
  reading <- paste(temperature, unit)
  ```
---
Siguiendo estas prácticas, tu código en R será más eficiente, claro y fácil de mantener, ayudando a prevenir errores comunes y optimizando el rendimiento al trabajar con grandes cantidades de datos.
