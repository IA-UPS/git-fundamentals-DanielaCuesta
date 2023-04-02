a<-2
b<-5
x<-c(2,3,4,5,6,7,8,9)
x[3:6]
x[-3:-6]
x<-c(3,6,8)
y<-c(1,2,3)
s<-c(4,5,6)
D<-data.frame(x,y,s)
library(ggplot2)
x<-4
y<-9
dat<-data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="blue")
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=10,color="red")
x<-c(2,5,1)
y<-c(6,4,9)
dat<-data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="blue")
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=10,color="red")+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,1))+
  scale_y_continuous(limits = c(0,15),breaks=seq(0,15,1))
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=10,color="forestgreen",shape=10)+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,1))+
  scale_y_continuous(limits = c(0,15),breaks=seq(0,15,1))
x<-c(1,8)
y<-c(3,10)
dat<-data.frame(x,y)
ggplot()+geom_line(data=dat,aes(x=x,y=y))
dat$x
dat$x<-c(-2,7)
dat$y<-c(13,5)
ggplot()+geom_line(data=dat,aes(x=x,y=y))
x<-c(0,10)
y<-3*x+1
y
dat<-data.frame(x,y)
dat
ggplot()+geom_line(data = dat,aes(x=x,y=y))
x
y<--5*x-7
y
dat<-data.frame(x,y)
dat
ggplot()+geom_line(data=dat,aes(x=x,y=y))
sample(1:10,100,replace = TRUE)
rnorm(100,50,10)
rnorm(100,50,90)
rep(1,100)
x<-rep(1,100)
y<-rnorm(100,50,10)
x
y
dat<-data.frame(x,y)
dat
x<-1
y<-50
mean<-data.frame(x,y)
mean
library(ggplot2)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=mean,aes(x=x,y=y),size=5,color="red")
x<-rep(1,100)
x
x<-c(x,rep(9,100))
x
x<-c(x,rep(15,100))
x
y<-rnorm(100,50,10)
y
y<-c(y,rnorm(100,30,10))
y
y<-c(y,rnorm(100,78,10))
y
dat<-data.frame(x,y)
dat
x<-c(1,9,15)
y<-c(50,30,78)
means<-data.frame(x,y)
means
ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=5,color="red")
x<-c(0,25)
y<-3*x+1
y
line<-data.frame(x,y)
ggplot()+
  geom_line(data=line,aes(x=x,y=y))
x<-c(1,9,15,22)
y<-3*x+1
y
means<-data.frame(x,y)
means
ggplot()+
  geom_line(data=line,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=5,color="red")
x<-c(rep(1,100),rep(9,100),rep(15,100),rep(22,100))
y<-c(rnorm(100,4,10),rnorm(100,28,10),rnorm(100,46,10),rnorm(100,67,10))
dat<-data.frame(x,y)
dat
ggplot()+
  geom_line(data=line,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=5,color="red")+
  geom_point(data=dat,aes(x=x,y=y))
x<-c(2,4,9,15)
sqrt(x)
x^2
sapply(x,function(x) sqrt(x))
sapply(x,function(x) rnorm(1,x,10))
x<-rnorm(100,10,5)
y<-3*x+1       
means<-data.frame(x,y)
means
ggplot()+
  geom_point(data=means,aes(x=x,y=y),size=5,color="red")
x<-c(-5,25)
y<-3*x+1
line<-data.frame(x,y)
line
ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  scale_x_continuous(limits = c(-10,30))+
  scale_y_continuous(limits = c(-20,80))
means
x<-means$x
y<-sapply(x,function(x) rnorm(1,3*x+1))
dat<-data.frame(x,y)
ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  scale_x_continuous(limits = c(-10,30))+
  scale_y_continuous(limits = c(-20,80))+
  geom_point(data=dat,aes(x=x,y=y))
