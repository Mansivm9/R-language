#loading dataset
pokemon <- read.csv("C:\\Users\\USER\\Desktop\\Projects\\R\\Pokemon.csv")
View(pokemon)

#understanding dataset
nrow(pokemon)
ncol(pokemon)
sum(is.na(pokemon))

#Glancing categorical columns
table(pokemon$Type.1)
table(pokemon$Generation)
table(pokemon$Legendary)

#Understanding numerical columns
min(pokemon$Sp..Atk)
max(pokemon$Sp..Atk)

min(pokemon$HP)
max(pokemon$HP)

#Renaming columns
colnames(pokemon)[colnames(pokemon)=="Type.1"]<-"primary_type"
colnames(pokemon)[colnames(pokemon)=="Type.2"]<-"secondary_type"

View(pokemon)

---------------------------------------------------------------------
#Grass Pokemon  
    
library(dplyr)  
pokemon %>% filter(primary_type=="Grass") -> grass_pokemon

min(grass_pokemon$Speed)
max(grass_pokemon$Speed)

mean(grass_pokemon$Sp..Atk)
mean(grass_pokemon$Sp..Def)

#visualizing stats of grass-pokemon
library(ggplot2)

#hp
ggplot(data = pokemon,aes(x=HP)) + geom_histogram()
ggplot(data = pokemon,aes(x=HP)) + geom_histogram(fill="palegreen4")

#legendary vs not-legendary
ggplot(data = grass_pokemon,aes(x=Legendary)) + geom_bar()

---------------------------------------------------------
#Fire Pokemon  
    
pokemon %>% filter(primary_type=="Fire") -> fire_pokemon

min(fire_pokemon$Speed)
max(fire_pokemon$Speed)

mean(fire_pokemon$Sp..Atk)
mean(fire_pokemon$Sp..Def)


#visualizing stats of fire-pokemon

#generation
ggplot(data = fire_pokemon,aes(x=Generation)) + geom_bar()

#secondary_type
ggplot(data = fire_pokemon,aes(x=secondary_type)) + geom_bar()

#sp_attack vs sp_defense
ggplot(data = fire_pokemon,aes(x=Sp..Atk,y=Sp..Def)) + geom_point()

-------------------------------------------------------------------------
#water_pokemon  
pokemon %>% filter(primary_type=="Water") -> water_pokemon

min(water_pokemon$Speed)
max(water_pokemon$Speed)

mean(water_pokemon$Sp..Atk)
mean(water_pokemon$Sp..Def)

#visualizing stats of water_pokemon

#generation
ggplot(data = water_pokemon,aes(x=Generation)) + geom_bar()

#secondary_type
ggplot(data = water_pokemon,aes(x=secondary_type)) + geom_bar()

#sp_attack vs sp_defense
ggplot(data = water_pokemon,aes(x=Sp..Atk,y=Sp..Def)) + geom_point()

View (water_pokemon)
View (fire_pokemon)
