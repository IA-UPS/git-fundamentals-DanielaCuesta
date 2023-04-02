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
