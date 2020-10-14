per_route <- edgelist_AFAB %>%  
  group_by(ID1, ID2) %>%
  summarise(weight = n()) %>% 
  ungroup()

AFAB_Edges <- per_route %>% 
  left_join(AFAB_Nodes, by = c("ID1" = "label")) %>% 
  rename(from = id) %>%
  left_join(AFAB_Nodes, by = c("ID2" = "label")) %>% 
  rename(to = id) %>%
  select(from, to, weight)