# Resumen de Matrices y Data Frames en R

En R, tanto las **matrices** como los **data frames** son estructuras de datos fundamentales, pero cada una se adapta mejor a ciertos tipos de datos y tareas.

## **Matrices**
Las **matrices** son estructuras bidimensionales (filas y columnas) que almacenan **solo un tipo de dato** (como números). Son ideales para realizar **operaciones matemáticas o estadísticas**, ya que están optimizadas para datos numéricos.

### **Características de las matrices**:
- **Homogéneas**: Todos los elementos deben ser del mismo tipo de dato.
- **Optimización**: Son ideales para cálculos rápidos con grandes conjuntos de datos numéricos.
- **Operaciones matemáticas**: Permiten realizar fácilmente **algebra matricial**, **estadísticas** y otros cálculos matemáticos.

### **Cómo crear una matriz**:
Usas la función **`matrix()`** para crear una matriz, proporcionando un vector de datos y las dimensiones (número de filas y columnas).

```r

sales_matrix <- matrix(
  c(12000, 15000, 17000, 18000, 13000, 19000),
  nrow = 2, 
  ncol = 3
)

print(sales_matrix)
```
Hay otra forma de crearlo pero es algo más mecanico
```r
i = matrix(1:9, nrow = 3, ncol =3)

#Resultado Esperado
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
```
La Matriz sales_matrix tiene 2 filas (representando 2 períodos) y 3 columnas (representando diferentes regiones):
```r
     [,1] [,2] [,3]
[1,] 12000 15000 17000
[2,] 18000 13000 19000
```
### **Acceder a elementos de la matriz**

Podemos acceder a un elemento específico usando índices de fila y columna. Por ejemplo, para obtener el valor de la fila 1, columna 3:
```r
sales_matrix[1, 3]  # Esto devolverá 17000
```
### **Realizar operaciones con matrices**

Creamos otra matriz para los gastos y luego sumamos y multiplicamos las matrices:
```r
# Matriz de gastos
expenses_matrix <- matrix(
  c(3000, 4000, 4500, 3800, 2900, 4200),
  nrow = 2,
  ncol = 3
)

# Sumar matrices
total_matrix <- sales_matrix + expenses_matrix
print(total_matrix)

# Multiplicar matrices
producto <- sales_matrix * expenses_matrix
print(producto)

```
Resultados:
```r
#Suma
     [,1] [,2] [,3]
[1,] 15000 19000 21500
[2,] 21800 16000 23200

#Producto
     [,1] [,2] [,3]
[1,] 36000000 60000000 76500000
[2,] 68400000 54600000 79800000

```
### **Transponer una matriz**

La transposición de una matriz invierte sus filas y columnas. Usamos la función t() para hacerlo:
```r
# Transponer la matriz de ventas
matriz_transportado <- t(sales_matrix)
print(matriz_transportado)



#Resultado esperado
     [,1] [,2]
[1,] 12000 18000
[2,] 15000 13000
[3,] 17000 19000

```
### **Verificar dimensiones de la matriz**

La función dim() nos da las dimensiones de la matriz (número de filas y columnas):

```r
dim(sales_matrix)          # Devuelve las dimensiones de la matriz original (2, 3)
dim(matriz_transportado)   # Devuelve las dimensiones de la matriz transpuesta (3, 2)

```
- Tip: Las matrices son muy eficientes para realizar operaciones matemáticas rápidas y trabajar con datos numéricos. Si trabajas con cálculos matemáticos complejos, las matrices son la mejor opción.
---

## **Data Frames**
Los data frames son como una hoja de cálculo o una tabla de base de datos, donde cada columna puede contener diferentes tipos de datos (números, texto, valores lógicos, etc.). Son fundamentales para análisis de datos cuando se trabaja con conjuntos de datos mixtos.

### **Características de los data frames:**

- **Heterogéneos**: Cada columna puede tener un tipo de dato diferente.
- **Flexible**: Son ideales para trabajar con datos reales, como los resultados de encuestas, datos de ventas, registros de empleados, etc.
- **Manipulación de datos**: Permiten agregar columnas, filtrar datos con subset(), y realizar análisis complejos.

### **Cómo crear un data frame**:

Usas la función data.frame() para crear un data frame:
```r
# Crear un data frame con diferentes tipos de datos
empleados <- data.frame(
  name = c("Paola", "Vidal", "Brad", "Delerna"),
  age = c(19, 19, 18, NA),
  departamento = c("Banca", "CyberSeguridad", "Biologia", NA),
  fulltime = c(TRUE, TRUE, FALSE, NA)
)
```
### **Acceder a columnas específicas**

Puedes acceder a las columnas usando el símbolo $:
```r
empleados$name      # Acceder a la columna 'name'
empleados$fulltime  # Acceder a la columna 'fulltime'
```

### **Agregar una columna usando cbind()**

Puedes agregar una nueva columna a un data frame con la función cbind(). En este caso, agregamos la columna de salarios:
```r
# Crear un vector de salarios
salary <- c(300, 400, 500, 900)

# Usar cbind() para agregar la columna salary al data frame
empleados <- cbind(empleados, salary)

print(empleados)
```

### **Filtrar usando subset()**

Usa la función subset() para filtrar filas basadas en condiciones. En este caso, seleccionamos solo a los empleados a tiempo completo y mayores de 18 años:
```r
empleados_fulltime <- subset(empleados, fulltime == TRUE & age > 18)
print(empleados_fulltime)
```

### **Borrar una columna**
```r
empleados$salary <- NULL
print(empleados)
```


## **Resumen**:

- Matrices: Son útiles para cálculos rápidos con datos numéricos homogéneos.
- Data Frames: Son ideales para manejar datos mixtos (números, texto, lógicos) y se usan en tareas de análisis de datos del mundo real.
