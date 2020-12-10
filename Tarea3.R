################ EJERCICIO 1################

df = read.csv("C:/Users/Agustin/Downloads/Ej1.csv")
head(df)
names(df)[1] = "X"
names(df)[2] = "Y"

plot(df$X,col="blue", df$Y, main ="Relacion?")
lines(df$X, df$Y, col='firebrick1', lwd=3)

#A simple vista el modelo no podría existir una relación lineal. Observamos en el gráfico la distribución de Y con respecto a X está muy distribuido.

rl = lm(df$Y~df$X)
ypred = predict(rl,data.frame(df$X))
df$Ypred = ypred
head(df)

df$error = df$Y - df$Ypred
plot(df$X, df$error)
lines(df$X, df$error, col='firebrick1', lwd=3)
#Observamos que el error es muy variable entre -15 y +15. Est nos dice que el modelo no es bueno. 
#Para ser óptimo el error debería oscilar en valores muy cercanos a 0.

num_obs <- length(df$X)
train_index <- sample(x = 1:num_obs, num_obs * 0.70)
grade_seq = seq(1, 20, 1)
cv_train_MSE <- rep(NA, (length(grade_seq)))
cv_test_MSE <- rep(NA, length(grade_seq))
y = df$Y
x = df$X
for (poly_degree in grade_seq) {
  model <- lm(y ~ poly(x, poly_degree), subset = train_index)
  y_train_pred <- predict(model, data.frame(x=x[train_index]))
  cv_train_MSE[poly_degree] <- mean((y[train_index] - y_train_pred)^2)
  y_test_pred <- predict(model, data.frame(x=x[-train_index]))
  cv_test_MSE[poly_degree] <- mean((y[-train_index] - y_test_pred)^2)
  message("Grade: ", poly_degree, " Train MSE:", cv_train_MSE[poly_degree], " Test MSE:",
          cv_test_MSE[poly_degree])
}

#El grado de polinomio que mejor ajusta a los datos es de Grado 2, el cual tiene el menor Mean Squared Error (SME).

################ EJERCICIO 2################

df = read.csv("C:/Users/Agustin/Downloads/Ej2.csv")
head(df)
names(df)[1] = "X"
names(df)[2] = "A"

plot(df$X,col="blue", df$A, main ="Relacion?")
lines(df$X, df$A, col='firebrick1', lwd=3)

#A simple vista el modelo NO podría existir una relación lineal. Observamos en el gráfico la distribución de Y con respecto a X y asimila a una curva

rl = lm(df$A ~ df$X)
ypred = predict(rl,data.frame(df$X))
df$Ypred = ypred
head(df)

df$error = df$A - df$Ypred
plot(df$X, df$error)
lines(df$X, df$error, col='firebrick1', lwd=3)
#Observamos que el error es muy variable. Esto nos dice que el modelo no es bueno. 
#Para ser óptimo el error debería oscilar en valores muy cercanos a 0.

num_obs <- length(df$X)
train_index <- sample(x = 1:num_obs, num_obs * 0.70)
grade_seq = seq(1, 20, 1)
cv_train_MSE <- rep(NA, (length(grade_seq)))
cv_test_MSE <- rep(NA, length(grade_seq))
y = df$A
x = df$X
vector = c(1:20)
for (poly_degree in grade_seq) {
  model <- lm(y ~ poly(x, poly_degree), subset = train_index)
  y_train_pred <- predict(model, data.frame(x=x[train_index]))
  cv_train_MSE[poly_degree] <- mean((y[train_index] - y_train_pred)^2)
  y_test_pred <- predict(model, data.frame(x=x[-train_index]))
  cv_test_MSE[poly_degree] <- mean((y[-train_index] - y_test_pred)^2)
  message("Grade: ", poly_degree, " Train MSE:", cv_train_MSE[poly_degree], " Test MSE:",
          cv_test_MSE[poly_degree])
}
min(cv_test_MSE)

#El grado de polinomio que mejor ajusta a los datos es de Grado 7, el cual tiene el menor Mean Squared Error (SME). 
#Sin embargo sigue siendo excesivo el error.


################ EJERCICIO 3################
df = iris
head(df)

num_obs <- length(df$Petal.Width)
train_index <- sample(x = 1:num_obs, num_obs * 0.70)
grade_seq = seq(1, 20, 1)
cv_train_MSE <- rep(NA, (length(grade_seq)))
cv_test_MSE <- rep(NA, length(grade_seq))
y = df$Petal.Length
x = df$Petal.Width

for (poly_degree in grade_seq) {
  model <- lm(y ~ poly(x, poly_degree), subset = train_index)
  y_train_pred <- predict(model, data.frame(x=x[train_index]))
  cv_train_MSE[poly_degree] <- mean((y[train_index] - y_train_pred)^2)
  y_test_pred <- predict(model, data.frame(x=x[-train_index]))
  cv_test_MSE[poly_degree] <- mean((y[-train_index] - y_test_pred)^2)
  message("Grade: ", poly_degree, " Train MSE:", cv_train_MSE[poly_degree], " Test MSE:",
          cv_test_MSE[poly_degree])
}
min(cv_test_MSE)
#El grado de polinomio que mejor ajusta a los datos es de Grado 2, el cual tiene el menor Mean Squared Error (SME). 

################ EJERCICIO 4################
df = trees
str(df)
par(mfrow=c(1,3))
plot(df$Height, df$Girth)
lines(df$Height, df$Girth, col='firebrick1', lwd=3)
plot(df$Girth, df$Volume)
lines(df$Girth, df$Volume, col='firebrick1', lwd=3)
plot(df$Height,df$Volume)
lines(df$Height, df$Volume, col='firebrick1', lwd=3)

## Podemos observar que la relación circunferencia Volumen es la relación más predecible.

num_obs <- length(df$Girth)
train_index <- sample(x = 1:num_obs, num_obs * 0.70)
grade_seq = seq(1, 10, 1)
cv_train_MSE <- rep(NA, (length(grade_seq)))
cv_test_MSE <- rep(NA, length(grade_seq))
y = df$Volume
x = df$Girth

for (poly_degree in grade_seq) {
  model <- lm(y ~ poly(x, poly_degree), subset = train_index)
  y_train_pred <- predict(model, data.frame(x=x[train_index]))
  cv_train_MSE[poly_degree] <- mean((y[train_index] - y_train_pred)^2)
  y_test_pred <- predict(model, data.frame(x=x[-train_index]))
  cv_test_MSE[poly_degree] <- mean((y[-train_index] - y_test_pred)^2)
  message("Grade: ", poly_degree, " Train MSE:", cv_train_MSE[poly_degree], " Test MSE:",
          cv_test_MSE[poly_degree])
}
min(cv_test_MSE)
#El grado de polinomio que mejor ajusta a los datos es de Grado 3, el cual tiene el menor Mean Squared Error (SME). 


