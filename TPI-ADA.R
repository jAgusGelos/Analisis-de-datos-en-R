10 + 15

a <- 10

a

b <- 10 + 2

c <- a + b

c

vec1 <- c(1, 2, 3, 5)

vec2 <- c(1:10)

vec2
x <- c(2, 6.2, 8.5, 4, 10)

assign("y", c(2, 4, 6.2, 8.4, 10))
y

c(3, 5.5, 7, 9, 1) -> z

resultado <- 1/x


x[3]

logico <- x > 5

x[c(TRUE, FALSE, FALSE, FALSE, TRUE)]

x[x > 5]

x[logico]

logico

y <- c(x, 0, -x) 


v1 <- c(1, 2, 3, 4, 5)

v2 <- c(2, 2, 3, 2, 2)

sumVec <- v1 + v2

minVec <- v1 - v2

prodVec <- v1 * v2

divVec <- v1 / v2

powVec <- v1 ^ v2

v1 <- c(1, 2, 3, 4, 5)

v3 <- c(2, 3)

sumVec2 <- v1 + v3

minVec2 <- v1 - v3

prodVec2 <- v1 * v3

divVec2 <- v1 / v3

powVec2 <- v1 ^ v3

alg <- 2 * v1 + v3 - 1

v4 <- c(v1, 10, 12, v2, v3)

max(v1)

min(v1)

length(v1)

sum(v1)

prod(v1)

mean(v1)

sum(v1) / length(v1)

var(v1)

sum((v1 - mean(v1)) ^ 2) / (length(v1) - 1)

length(v4)

v8 <- v4

print(v4)

print(v8)

order(v8)

sort.list(v8)

v8[order(v8)]

v8[order(v8, decreasing = T)]

class(v8)

print(v8)

v8[c(TRUE, TRUE, FALSE, FALSE)]

v1[c(TRUE, TRUE, TRUE, TRUE, FALSE, TRUE)]

v8 >= 5

v8[v8 >= 5]

v8[1:5]

v8[3:8]

v8[2]

v8

v8[-2]


cat(a)

if ( a == 10 ) cat("a vale 10")

if ( a!= 10) cat("a distinto de 10")

if (a < 5) cat("a es menor que 5") else cat("a es mayor o igual que 5")

if (a < 5) {
  cat("a es menor que 5")
} else {
  cat("a es mayor o igual que 5 \n")
  cat("a no es menor que 5")
}

(a < 5)

!(a < 5)

for (i in 1:10) {
  cat(i, "\n")
  if (i == a) cat("i vale 10\n")
}


# Matrices

v5 <- 1:10

m <- matrix(v5, nrow = 3, ncol = 3)

m

m[2, ]

m[ , 1]

m[2, 3]

t(m)

m2 <- matrix(1:6, nrow = 3, ncol = 2)

m %*% m2


m3 <- matrix(c(10,20,10), nrow = 3, ncol = 1)

m4 <- matrix(c(1,1,1,10,-4,1,0,0,2), nrow = 3, ncol = 3)

solve(m4 , m3)

# listas

lsencilla <- list(10, 1.2, "Hola")

lUnPocoMenosSencilla <- list(n1 = 10, n2 = 1.2, n3 = "Hola")


l <- list(x = 1:10, y = c('a', 'b', 'c'))

l

l[[2]]

l[1]

l$x

l['y']

# Data frames

df <- data.frame(x = 10:16, y = c('a', 'b', 'c', 'd', 'a', 'b','a'))

df

df$x

df$y

df[[2]]

View(df)

head(df)

df[ , 2]

df[2, ]

df[2, 2]

nrow(df)

ncol(df)

dim(df)

df <- cbind(df, c(2,3,4,2,3,4,3))

df

colnames(df) <- c("Col1", "Col2", "Don Ramon")

df

rownames(df) <- c(101:107) 

df









ciudades <- c('C??rdoba', 'Villa Mercedes', 'Posadas', 'San Juan', 'Santa Rosa')

sexo <- c('Masculino', 'Femenino')

sample.ciudades <- sample(ciudades, 120, replace = TRUE)

table(sample.ciudades) 

sample.ciudades <- sample(ciudades, 120, replace=TRUE, prob = c(.4, .2, .1, .1, .2)) 

sample.sexo <- sample(sexo, 120, replace = T)

table(sample.sexo)

num.ventas <- c(1:120) 

num.ventas <- sample(1:1000, 120, replace = T)

table(num.ventas)



df <- data.frame(ciudades = sample.ciudades, 
                 sexo = sample.sexo,
                 num.ventas = num.ventas) 

df[20,1]

df[10,1]

df[10,3] 

df <- data.frame(ciudades = sample.ciudades, 
                 sexo = sample.sexo,
                 num.ventas = num.ventas,
                 stringsAsFactors = FALSE) 

df[10,1] 

num.edad <- sample(1:500, 120, replace = T) 

df <- cbind(df, num.edad) 

fila <- as.data.frame('C??rdoba', 'Mujer', 50, 30)

df <- rbind(df, fila)
#Error en rbind(deparse.level, ...) : 
#  numbers of columns of arguments do not match
# Lanza un error porque no coinciden

fila <- data.frame(ciudades = 'C??rdoba',
                   sexo = 'Mujer',
                   num.ventas = 50,
                   num.edad = 30)

df <- rbind(df, fila) 




df$ciudades  

df[c(1:10),c(1,2)]  

df[c(1:10), c('ciudades', 'num.ventas')]

df[c(1:10), ] 

df[ , c('ciudades', 'num.ventas')]

names(df) 

names(df)[c(3,4)]

names(df)[c(3,4)] <- c('ventas', 'edad') 


names(df)


