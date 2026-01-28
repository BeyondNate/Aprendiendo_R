# Guía de Estructuras de Datos en R

Las estructuras de datos en R funcionan como estanterías, contenedores o archivadores, cada una diseñada para organizar y almacenar datos de manera eficiente, permitiendo un acceso rápido a la información necesaria. Estas estructuras facilitan el manejo de datos en proyectos de análisis reales.

## Estructuras de Datos Clave en R

### **Vectores: Almacenamiento Simple y Eficiente**
Los **vectores** son colecciones de elementos del mismo tipo de datos (números, caracteres o valores lógicos). Son ideales para realizar operaciones y cálculos sencillos.

- **Homogéneos**: Todos los elementos del vector son del mismo tipo.
- **Fácil creación**: Usando la función **`c()`** (de "combinar").

#### Ejemplo de creación de un vector:

  ```r
    vector <- c(1, 2, 3, 4, 5)
  ```
Podemos multiplicar todo el vector como se hace en matemáticas
 ```r
vector1 <- c(1, 2, 3, 4, 5) * 2
#Si sale bien debería duplicarte el vector
```
Tambien podemos usar un elemento de vector y ubicarlo rapidamente
```r
vector[2]
```
Los vectores son altamente eficientes para realizar cálculos rápidos cuando los datos tienen un tipo uniforme. Si tus datos consisten en elementos del mismo tipo y requieren operaciones simples, los vectores son la mejor opción.
