**Funciones en R:**

Las **funciones** en R permiten agrupar un conjunto de comandos relacionados en una unidad que puede ser reutilizada, lo que mejora la claridad, la simplicidad y facilita el mantenimiento del código.

### ¿Qué es una Función?

Una función es como una receta: toma parámetros (ingredientes), los procesa con instrucciones claras y devuelve un valor de salida (valor de retorno).

**Beneficios de las funciones**:

* **Código reutilizable**: Escribes una vez y puedes reutilizarlo tantas veces como sea necesario.
* **Claridad**: Simplificas tu código llamando a funciones en lugar de escribir repetidamente el mismo código.
* **Mantenimiento fácil**: Cambias una vez en la función en lugar de múltiples ubicaciones en el código.

### Crear y Usar Funciones en R

**Ejemplo 1: Función para Calcular el Crecimiento Porcentual**

```r
# Definir la función 'growthRate' para calcular el crecimiento porcentual
growthRate <- function(previous_value, current_value) {
  rate <- ((current_value - previous_value) / previous_value) * 100
  return(rate)
}

# Llamar a la función
result <- growthRate(200, 250)
print(result)  # Salida: 25
```

* **Parámetros**: `previous_value` y `current_value` son los valores de entrada.
* **Retorno**: La función devuelve el crecimiento porcentual.

**Ejemplo 2: Función con Parámetros Predeterminados**

```r
# Función para calcular el total con impuestos
calculateTotal <- function(amount, tax_rate = 0.10) {
  total <- amount + (amount * tax_rate)
  return(total)
}

# Llamar a la función con el valor predeterminado y un valor especificado
total1 <- calculateTotal(100)        # Usa el impuesto del 10%
total2 <- calculateTotal(100, 0.15)  # Usa el impuesto del 15%

print(total1)  # Salida: 110
print(total2)  # Salida: 115
```

* **Parámetros**: `amount` es el costo original, y `tax_rate` tiene un valor predeterminado de 0.10 (10%).
* **Retorno**: La función devuelve el total con el impuesto aplicado.

### Manejo de la Salida (Valor de Retorno)

Es importante utilizar `return()` para devolver el valor de salida de la función. Si se omite, la función puede no comportarse como esperas.

**Ejemplo: Función sin declaración de retorno explícita**

```r
squareAndPrint <- function(x) {
  squared <- x * x
  print(squared)
}

result <- squareAndPrint(5)
# Imprime 25, pero no retorna un valor numérico.
```

* Es mejor siempre usar `return()` para aclarar las intenciones y asegurar que el valor esperado se devuelva.

### Buenas Prácticas para Funciones:

* **Simplicidad**: Cada función debe hacer una sola cosa.
* **Nombres claros**: Los nombres de las funciones deben ser descriptivos y fáciles de entender.
* **Pruebas**: Siempre prueba tus funciones para asegurarte de que se comportan correctamente con diferentes valores de entrada.
* **Documentación**: Agregar comentarios claros sobre lo que hace la función, los parámetros que espera y lo que devuelve.

---
