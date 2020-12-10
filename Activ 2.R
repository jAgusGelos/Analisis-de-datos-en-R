v1<-seq(0,50, by=2) 
length(v1)
class(v1)

v2<-v1[c(5,8,12,15)]
v3<-v1[c(4,9,16,25)]
v4<- as.logical(v1[c(10,12,18,31)])

m1 <- cbind(v2,v3) 
m2 <- rbind(v3,v4)

colnames(m1) <- c("col1","col2")
rownames(m1)<- c("fill1","fill2","fill3","fill4")

m <- m1%*% t(m1)

m3<-matrix(nrow=4,ncol=3)
m3
m3[,]=c(1,2,3)
m3

v<-m3[,1]

vec<-vector(mode="numeric",length = 10)
vec<-sample(0:100,10)
vec <- vec + 2
new_vec<-vec/0
#El vector queda con datos INF

lis1<-c("A",T,5)

vec4 <- c(lis1[1],lis1[3])
class(vec4)


func <- function(a=5,b,c=3){
  if(c>3){
    a*b*c
  }else{
    a+b*c
  }
}

aleatoria <- function(media,desv,cant){
  
  vec = c(1:cant)
  vec2 = vec / cant
  for (i in vec2){
    n1 = (sqrt(-2*log(vec2[i]))*cos(2*pi*vec2[i])) * desv + media
    n2 = (sqrt(-2*log(vec2[i]))*sin(2*pi*vec2[i])) * desv + media
    if (i%/%2 == 0){
      vec[i] = n1
    } else{
      vec[i]=n2
    }
  }
  vec
}

aleatoria(0.5,1,10)
