library(readxl)
library(tidyverse)

self_report_c1 <- read_excel("C:/Users/Sjoer/Desktop/school/Seminar/seminar/self-report.xlsx",, sheet = "Company 1")
self_report_c2 <- read_excel("C:/Users/Sjoer/Desktop/school/Seminar/seminar/self-report.xlsx",, sheet = "Company 2")
self_report_c3 <- read_excel("C:/Users/Sjoer/Desktop/school/Seminar/seminar/self-report.xlsx",, sheet = "Company 3")
self_report_c4 <- read_excel("C:/Users/Sjoer/Desktop/school/Seminar/seminar/self-report.xlsx",, sheet = "Company 4")
self_report_c5 <- read_csv("C:/Users/Sjoer/Desktop/school/Seminar/seminar/Company 5.csv")

self_report_closed_c1 <- filter(self_report_c1, Status == "POPUP_CLOSED")
self_report_closed_c2 <- filter(self_report_c2, Status == "POPUP_CLOSED")
self_report_closed_c3 <- filter(self_report_c3, Status == "POPUP_CLOSED")
self_report_closed_c4 <- filter(self_report_c4, Status == "POPUP_CLOSED")
self_report_closed_c5 <- filter(self_report_c5, Status == "POPUP_CLOSED")

self_report_closed_total <- rbind(self_report_closed_c1, self_report_closed_c2)
self_report_closed_total <- rbind(self_report_closed_total, self_report_closed_c3)
self_report_closed_total <- rbind(self_report_closed_total, self_report_closed_c4)
self_report_closed_total <- rbind(self_report_closed_total, self_report_closed_c5)

productivity=c(-2, -1, 0, 1, 2)
names(productivity)=c("Very Low", "Below average", "Average", "Above average", "Very high")

self_report_closed_total <- self_report_closed_total %>%
  mutate(Progress_numeric = case_when(
    Progress == "Very low" ~ -2,
    Progress == "Below average" ~ -1,
    Progress == "Average" ~ 0,
    Progress == "Above average" ~ 1,
    Progress == "Very high" ~ 2
  ))

view(self_report_closed_total)