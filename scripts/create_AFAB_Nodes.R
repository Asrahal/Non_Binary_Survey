AFAB1 <- edgelist_AFAB %>%
  distinct(ID1) %>%
  rename(label = ID1)
AFAB2 <- edgelist_AFAB %>%
  distinct(ID2) %>%
  rename(label = ID2)

AFAB_Nodes <- full_join(AFAB1, AFAB2, by = "label") %>%
  rowid_to_column("id") 

AFAB_Nodes <- mutate(AFAB_Nodes, category = 
           ifelse(grepl("indésirable", AFAB_Nodes$label), "Indésirable", "Attendu"))

AFAB_Sum <-  Survey_Data_AFAB %>%
  summarise_all(sum) %>%
  gather(var, value) %>%
  rename(label = var, "personnes" = value)

AFAB_Nodes <-  mutate(AFAB_Nodes, personnes = AFAB_Sum$personnes)%>%
  arrange(id)