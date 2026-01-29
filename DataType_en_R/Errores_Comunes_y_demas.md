# **Manejo de Errores y Prevención de Errores en R**

El **manejo de errores** es crucial para asegurar que tu código funcione correctamente, incluso cuando se encuentran datos inesperados. Si no se manejan correctamente, los errores pueden interrumpir tu flujo de trabajo o generar resultados incorrectos. Aquí aprenderás cómo detectar errores comunes en R y prevenir problemas relacionados con valores faltantes, tipos incorrectos y entradas inesperadas.

### **Detección de Valores Faltantes con `any()`**

Cuando trabajas con datos, a menudo los valores pueden estar ausentes (`NA`). Para evitar que estos valores afecten tus cálculos, puedes usar la función `any()` junto con `is.na()` para verificar si hay valores faltantes en un vector.

#### Ejemplo de Comprobación de Valores Faltantes:

```r
readings <- c(52, 48, NA, 56)

if (any(is.na(readings))) {
  print("Advertencia: Los datos contienen valores faltantes.")
}
```

**Explicación:**

* `is.na(readings)` verifica si hay valores `NA` en el vector.
* `any()` devuelve `TRUE` si al menos uno de los valores es `NA`.
* La condición `if` genera una advertencia si se detectan valores faltantes.

#### **Función para Comprobar Datos Faltantes en Pacientes**:

```r
check_patient_data <- function(readings) {
  if (any(is.na(readings))) {
    return("Datos faltantes encontrados")
  }
  return("Todos los datos están completos")
}
```

**Cómo funciona:**

* La función verifica si hay valores `NA` usando `any(is.na(...))`.
* Devuelve un mensaje dependiendo de si hay o no datos faltantes.

### **Verificación de Entradas Numéricas con `is.numeric()`**

En muchos casos, los valores deben ser numéricos. Si se ingresan valores no numéricos, como texto en lugar de números, el script puede fallar. Para prevenir esto, puedes usar `is.numeric()` para verificar si una entrada es un número antes de realizar cálculos.

#### Ejemplo de Verificación de Entrada Numérica:

```r
amount_paid <- "twenty"

if (!is.numeric(amount_paid)) {
  print("Error: El monto debe ser un número.")
}
```

**Explicación:**

* `is.numeric(amount_paid)` verifica si `amount_paid` es numérico.
* `!is.numeric(amount_paid)` invierte el resultado, lo que significa que si no es numérico, se imprime un mensaje de error.

#### **Función para Validar Pagos:**

```r
validate_payment <- function(x) {
  if (!is.numeric(x)) {
    return("La entrada debe ser numérica")
  }
  return("La entrada es correcta")
}

validate_payment(payment_amount)
```

**Cómo funciona:**

* La función verifica si el valor es numérico usando `is.numeric()`.
* Si no lo es, devuelve un mensaje indicando el error.

### **Comprobación Completa de Datos (Ejemplo con Asistencia de Transporte)**

Al trabajar con datos, es común tener problemas con entradas incorrectas, como letras en lugar de números. Aquí tienes una función que realiza verificaciones completas para asegurarse de que los datos sean numéricos y no contengan valores faltantes.

#### **Función de Validación Completa:**

```r
validate_ridership <- function(data) {
  if (!is.numeric(data)) {
    return("Los datos de asistencia deben ser numéricos.")
  }
  if (any(is.na(data))) {
    return("Los datos de asistencia contienen valores faltantes.")
  }
  return("Los datos de asistencia están listos para su uso.")
}
```

**Explicación:**

* `is.numeric(data)` verifica si los datos son numéricos.
* `any(is.na(data))` verifica si hay valores faltantes.
* La función devuelve mensajes dependiendo de si los datos están completos y son válidos.

### **Resumen:**

El **manejo de errores** en R es fundamental para mantener la integridad de tu código y resultados:

1. **Detección de valores faltantes**: Usa `any(is.na(...))` para verificar si hay `NA` en los datos antes de realizar cálculos o análisis.
2. **Verificación de tipos de datos**: Usa `is.numeric()` para asegurarte de que las entradas sean numéricas antes de utilizarlas en cálculos.
3. **Condiciones de reverso con `!`**: El símbolo `!` se utiliza para invertir una comprobación. Por ejemplo, `!is.numeric()` para verificar si algo **no** es numérico.

Estas pequeñas comprobaciones previenen errores comunes, como la entrada de datos incorrectos, y ayudan a mantener tus scripts funcionando de manera eficiente y confiable.
