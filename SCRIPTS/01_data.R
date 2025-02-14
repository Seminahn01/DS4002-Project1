library(rvest)
library(dplyr)

data1 = read_html("https://www.boxofficemojo.com/chart/top_lifetime_gross/?ref_=bo_cso_ac")
### 1-200 movies ###
title = data1 %>% 
  html_nodes(".mojo-field-type-title .a-link-normal")%>%
  html_text()
title_d <- data.frame(title)

gross = data1 %>% 
  html_nodes(".mojo-field-type-money")%>%
  html_text()
gross_d <- data.frame(gross)
gross_d <- gross_d[-1,]
gross_d <- data.frame(gross_d)

year = data1 %>% 
  html_nodes(".mojo-field-type-year")%>%
  html_text()
year_d <- data.frame(year)
year_d <- year_d[-1,]
year_d <- data.frame(year_d)

boxoffice1 <- cbind(title_d, gross_d, year_d)

### 201-400 movies ###
data2 = read_html("https://www.boxofficemojo.com/chart/top_lifetime_gross/?area=XWW&offset=200")
title = data2 %>% 
  html_nodes(".mojo-field-type-title .a-link-normal")%>%
  html_text()
title_d <- data.frame(title)

gross = data2 %>% 
  html_nodes(".mojo-field-type-money")%>%
  html_text()
gross_d <- data.frame(gross)
gross_d <- gross_d[-1,]
gross_d <- data.frame(gross_d)

year = data2 %>% 
  html_nodes(".mojo-field-type-year")%>%
  html_text()
year_d <- data.frame(year)
year_d <- year_d[-1,]
year_d <- data.frame(year_d)

boxoffice2 <- cbind(title_d, gross_d, year_d)

### 401-600 movies ###
data3 = read_html("https://www.boxofficemojo.com/chart/top_lifetime_gross/?area=XWW&offset=400")
title = data3 %>% 
  html_nodes(".mojo-field-type-title .a-link-normal")%>%
  html_text()
title_d <- data.frame(title)

gross = data3 %>% 
  html_nodes(".mojo-field-type-money")%>%
  html_text()
gross_d <- data.frame(gross)
gross_d <- gross_d[-1,]
gross_d <- data.frame(gross_d)

year = data3 %>% 
  html_nodes(".mojo-field-type-year")%>%
  html_text()
year_d <- data.frame(year)
year_d <- year_d[-1,]
year_d <- data.frame(year_d)

boxoffice3 <- cbind(title_d, gross_d, year_d)

### 601-800 movies ###
data4 = read_html("https://www.boxofficemojo.com/chart/top_lifetime_gross/?area=XWW&offset=600")
title = data4 %>% 
  html_nodes(".mojo-field-type-title .a-link-normal")%>%
  html_text()
title_d <- data.frame(title)

gross = data4 %>% 
  html_nodes(".mojo-field-type-money")%>%
  html_text()
gross_d <- data.frame(gross)
gross_d <- gross_d[-1,]
gross_d <- data.frame(gross_d)

year = data4 %>% 
  html_nodes(".mojo-field-type-year")%>%
  html_text()
year_d <- data.frame(year)
year_d <- year_d[-1,]
year_d <- data.frame(year_d)

boxoffice4 <- cbind(title_d, gross_d, year_d)

### 801-1000 movies ### 
data5 = read_html("https://www.boxofficemojo.com/chart/top_lifetime_gross/?area=XWW&offset=800")
title = data5 %>% 
  html_nodes(".mojo-field-type-title .a-link-normal")%>%
  html_text()
title_d <- data.frame(title)

gross = data5 %>% 
  html_nodes(".mojo-field-type-money")%>%
  html_text()
gross_d <- data.frame(gross)
gross_d <- gross_d[-1,]
gross_d <- data.frame(gross_d)

year = data5 %>% 
  html_nodes(".mojo-field-type-year")%>%
  html_text()
year_d <- data.frame(year)
year_d <- year_d[-1,]
year_d <- data.frame(year_d)

boxoffice5 <- cbind(title_d, gross_d, year_d)

boxoffice <- rbind(boxoffice1, boxoffice2, boxoffice3, boxoffice4, boxoffice5)

reviews <- read.csv("movie_reviews.csv")
names(reviews)[names(reviews)=="movie_name"]<-"title"

movie_data_initial <- merge(reviews, boxoffice, by="title")
names(movie_data_initial)[names(movie_data_initial)=='year_d']<- "release_year"
names(movie_data_initial)[names(movie_data_initial)=='year']<- "review_year"
names(movie_data_initial)[names(movie_data_initial)=='gross_d']<- "lifetime_gross"

movie_data_final <- subset(movie_data_initial, select=c("title", "review_id", "review_text", "lifetime_gross", "release_year"))

movie_data_final$lifetime_gross<- substring(movie_data_final$lifetime_gross,2)
movie_data_final$lifetime_gross <- as.numeric(gsub(",","",movie_data_final$lifetime_gross))
movie_data_final$release_year <- as.numeric(movie_data_final$release_year)

write.csv(movie_data_initial, file='/Users/adairhancock/Desktop/Data Science/movie_data_initial.csv')
write.csv(movie_data_final, file='/Users/adairhancock/Desktop/Data Science/movie_data_final.csv')

