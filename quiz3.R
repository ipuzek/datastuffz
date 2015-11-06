### quiz 3

getwd()

# q1
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", "housing_idaho.csv")
q1 <- read.csv("housing_idaho.csv")

q1$agricultureLogical <- (q1$ACR == 3 & q1$AGS == 6)
which(agricultureLogical)


# q2
# install.packages("jpeg")
library(jpeg)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", "jeffek.jpg")

q2 <- readJPEG("jeffek.jpg", native = TRUE)
quantile(q2, probs = c(0.3, 0.8))

# q3
library(dplyr)
library(readr)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", "GDP.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", "educ.csv")

# prvo malo ručnog sređivanja - GDP.csv je u klincu
# hadleyjev read_csv

gdp <- read_csv("GDP.csv")
educ <- read_csv("educ.csv")

str(educ)

# Drop unimportant variables so it's easier to understand the join results.

gdp_educ <- gdp %>% 
  inner_join(educ, by = c("ID" = "CountryCode"))

str(gdp_educ)

gdp_educ$Ranking <- as.numeric(gdp_educ$Ranking)
gdp_educ_sorted <- arrange(gdp_educ, desc(Ranking))

gdp_educ_sorted[13,]

# q4

names(gdp_educ_sorted)[7] <- "Income.Group"

gdp_educ_sorted %>%
  group_by(Income.Group) %>%
  summarize(meanz = mean(Ranking, na.rm = TRUE))


# q5

gdp_educ_sorted$Rank_cut_5 <- cut(gdp_educ_sorted$Ranking, breaks = 5)


?table
table(gdp_educ_sorted$Income.Group, gdp_educ_sorted$Rank_cut)



