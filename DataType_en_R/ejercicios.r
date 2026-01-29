# ================================================
# Análisis de Inventario de TechMart
# Laboratorio: Estructuras de Datos en R
# ================================================

# ¡Bienvenido al sistema de gestión de inventario de TechMart!
# En este laboratorio, trabajarás con diferentes estructuras de datos en R
# para organizar y analizar los datos del inventario de productos.

# ================================================
# Actividad 1: Información de Productos con Vectores
# ================================================

###### Ejemplo Proporcionado: ######
# Creando vectores simples de productos
ejemplo_ids <- c(101, 102)
ejemplo_nombres <- c("Laptop", "Mouse")
print(ejemplo_ids)    # ¡Intenta ejecutar esto!
print(ejemplo_nombres)  # ¡Y esto también!
length(ejemplo_ids)


###### PRÁCTICA 1.1: ######
# Crear vector de precios de productos
# TODO: Crear el vector 'precios' con estos valores:
# 899.99, 24.99, 79.99, 299.99, 149.99
# Pista: Usa la función c() con comas entre los valores
precios <- c(899.99, 24.99, 79.99, 299.99, 149.99)


# PRÁCTICA 1.2: ######
# Crear vector de categorías de productos
# TODO: Crear el vector 'categorias' con estos valores:
# "Electrónica", "Accesorios", "Accesorios", "Electrónica", "Accesorios"
categorias <- c("Electrónica", "Accesorios", "Accesorios", "Electrónica", "Accesorios")


# Probar tus vectores
# TODO: Imprimir ambos vectores y verificar su longitud usando length()
print(precios)
print(categorias)

# ================================================
# Actividad 2: Agrupación de Datos con Listas
# ================================================

###### Ejemplo Proporcionado: ######
# Creando una lista de información del producto
ejemplo_producto <- list(
    id = 101,
    nombre = "Laptop",
    en_stock = TRUE
)
print(ejemplo_producto)  # Mira cómo se muestran las listas

###### PRÁCTICA 2.1: ######
# Crear una lista de producto
# TODO: Crear la lista 'producto_mouse' con:
# - product_id: 201
# - nombre: "Mouse Premium"
# - precio: 24.99
# - disponible: TRUE
producto_mouse <- list(
    product_id = 201,
    nombre = "Mouse Premium",
    precio = 24.99,
    disponible = TRUE
)

# PRÁCTICA 2.2: ######
# Acceder y modificar elementos de la lista
# TODO: Imprimir el precio de la lista
# TODO: Cambiar el estado de disponible a FALSE
print(producto_mouse$precio)
producto_mouse$disponible <- FALSE
print(producto_mouse)

# ================================================
# Actividad 3: Seguimiento de Inventario con Matrices
# ================================================

###### Ejemplo Proporcionado: ######
# Creando una matriz de inventario básica
# Cada fila = Producto, Cada columna = Tienda
inventario_retail <- matrix(
    c(4, 10, 10,   # Teclado
    5, 1, 90,    # Mouse
    56, 94, 45), # Monitor
    nrow = 3,
    byrow = TRUE
)
print(inventario_retail)  # Ver matriz sin etiquetas

# Opcional: Agregar etiquetas de fila y columna
rownames(inventario_retail) <- c("Teclado", "Mouse", "Monitor")
colnames(inventario_retail) <- c("Centro", "Centro Comercial", "Aeropuerto")
print(inventario_retail)  # ¡Ahora es más fácil de leer!

###### PRÁCTICA 3.1: ######
# Crear tu propia matriz de inventario
# TODO: Usar la misma estructura y agregar nombres de filas/columnas
Inventario <- matrix(
    c(4, 10, 10,   # Teclado
    5, 1, 90,    # Mouse
    56, 94, 45), # Monitor
    nrow = 3,
    byrow = TRUE
)
print(Inventario)
rownames(Inventario) <- c("Anderson", "Paola","Vidal")
colnames(Inventario) <- c("Universidad","Mercado","Banco")

# PRÁCTICA 3.2: ######
# Imprimir tu matriz con etiquetas
print(Inventario)

# ================================================
# Actividad 4: Base de Datos Completa de Productos con Data Frames
# ================================================

###### Ejemplo Proporcionado: ######
# Creando una base de datos simple de productos
ejemplo_df <- data.frame(
    ID = c(101, 102),
    Nombre = c("Laptop", "Mouse"),
    Precio = c(899.99, 24.99),
    EnStock = c(FALSE, TRUE)
)
print(ejemplo_df)  # Ver estructura del data frame

###### Ejemplo Proporcionado: ######
# Puedes sobrescribir toda la columna si cambian todos los valores
ejemplo_df$EnStock <- c(TRUE, TRUE)
print(ejemplo_df)


# O actualizar una fila específica usando notación de índice
# ejemplo_df$EnStock[1] <- TRUE

# Imprimir nuevamente para confirmar la actualización
print(ejemplo_df)


###### PRÁCTICA 4.1: ######
# Crear base de datos de productos
# TODO: Crear el data frame 'base_de_datos_productos' con:
# - ID: Tus IDs de productos (101-105)
# - Nombre: Nombres de productos ("Laptop Gaming", "Mouse Premium", "Teclado Inalámbrico","Monitor Gaming", "Teclado Mecánico")
# - Precio: El vector de precios [precios]
# - Categoría: El vector de categorías [categorias]
# - EnStock: Valores lógicos para cada producto (TRUE, TRUE, FALSE, TRUE, TRUE)

# PRÁCTICA 4.2: Cambiar valores de las variables
# TODO: Cambiar los valores de EnStock a TRUE para todos los productos
ejemplo_df <- data.frame(
    ID = c(101,102,103,104, 105),
    Nombre = c("Laptop Gaming", "Mouse Premium","Teclado Inalámbrico", "Monitor Gaming","Teclado Mecánico"),
    Categoria = c("Gaming","ProPlayer","Profesional","Absoluto","BUENO"),
    Precio = c(899.99, 24.99,24.99,24.99,24.99),
    EnStock = c(FALSE, FALSE,TRUE,TRUE, FALSE)
)
print(ejemplo_df)  # Ver estructura del data frame
ejemplo_df["Precio"]

ejemplo_df["Categoria"]

ejemplo_df$EnStock <- TRUE
print(ejemplo_df)
