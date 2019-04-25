dt<-read.csv(file.choose())
head(dt)
str(dt)
dt<-na.omit(dt)
str(dt)
head(dt$App)
levels(dt$Category)
library("ggplot2")
g<-ggplot(data = dt,aes(x=dt$Type,fill=dt$Type))+geom_bar()
g<-g+labs(title="NO OF USER TYPES",x="TYPES",y="NO OF USERS")
g<-g+theme(panel.background = element_rect(fill = "azure"))
g<-g+theme(plot.title = element_text(hjust = 0.5,face = "bold",colour = "lavender"))
g

g1<-ggplot(data=dt,aes(y=dt$Rating,x=factor(dt$Installs),col=dt$Type,shape=dt$Type,fill=dt$Type))+geom_point()+geom_smooth(method="lm",se=F)
g1<-g1+labs(title = "RATING VS INSTALLS",x="INSTALLS",y="RATING")+theme(panel.background = element_rect(fill = "thistle1"))+theme(plot.title = element_text(hjust = 0.5,face = "bold",colour = "midnightblue"))
g1


class(dt)


g2<-ggplot(data=dt,aes(x=dt$App,y=dt$Category,fill=dt$Type))+geom_bar(stat = "identity")+labs(title = " RATING OF USERS",x="RATING",y="COUNT")
g2<-g2+theme(plot.title = element_text(hjust = 0.5,face = "bold",colour = "aquamarine4"))
g2<-g2+theme(panel.background = element_rect(fill = "darkseagreen1"))
g2

g3<-ggplot(data=dt,aes(x=dt$Category,y=dt$Size,fill=dt$Type,col=dt$Type))+geom_point()+geom_smooth(method="lm",se=F)+geom_line()+labs(title = "DOES CATEGORY VARIES SIZE ",x="CATEGORY",y="SIZE")+theme(panel.background = element_rect(fill = "lavender"))+theme(plot.title = element_text(hjust = 0.5,face = "bold",colour = "red"))
g3

g4<-ggplot(data = dt,aes(x=dt$Android.Ver,y=dt$Installs,fill=dt$Type,col=dt$Type))+geom_jitter()+labs(title = " USAGE OF ANDROID VERSIONS WITH NO OF INSTALLS",x="ANDRIOD VERSION",y="NO OF INSTALLATIONS")
g4<-g4+theme(plot.title = element_text(hjust = 0.5,face = "bold",colour = "aquamarine4"))
g4<-g4+theme(panel.background = element_rect(fill = "darkseagreen1"))
g4




g5<-ggplot(data=dt,aes(x=dt$Content.Rating,fill=dt$Type,col=dt$Type))+geom_bar()+labs(title = "CLASSIFICATION OF CONTENT RATING",x="AGE GROUP",y="NO OF WRITERS")+theme(panel.background = element_rect(fill = "goldenrod1"))+theme(plot.title = element_text(hjust = 0.5,face = "bold",colour = "turquoise1"))
g5
