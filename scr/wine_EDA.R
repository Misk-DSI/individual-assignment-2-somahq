
library(tidyr)
library(janitor)
setwd("C:/misk-DSI/individual-assignment-2-somahq/data")
Data1 <- read.csv("winequality-red.csv")
Data1<-clean_names(Data1)
colnames(Data1)
library(DataExplorer)
plot_str(Data1)
Data1$quality = as.factor(Data1$quality)
#plot_bar(Data1 , by="quality")
plot_qq(Data1)
plot_density(Data1)
plot_correlation(Data1)
plot_prcomp(Data1)
library (GGally)
library (dplyr)
Data1 %>% 
  select("p_h", "alcohol", "sulphates", "density") %>%
  ggpairs(mapping = aes(color = Data1$quality, alpha = 0.5))

library(SmartEDA)
ExpData(data=Data1, type=1)
ExpCatStat(Data1, Target="quality", Pclass="1", plot=FALSE)


