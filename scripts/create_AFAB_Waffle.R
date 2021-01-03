library(ggplot2)
library(waffle)
library(ggpubr)

AFAB_Waffle1 <- waffle(AFAB_Comb_Sum[1, 5:7]*100, 
       rows=10, 
       size=0.6,
       flip = T,
       reverse = F,
       title = "Pilosité faciale accrue",
       legend_pos = "bottom"
       ) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3", "#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[1,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[1,6]*100, "%"),
                               paste(AFAB_Comb_Sum[1,7]*100, "%")),
                    breaks= colnames(AFAB_Comb_Sum[5:7])
  )
                    
AFAB_Waffle2 <- waffle(AFAB_Comb_Sum[2, 5:7]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Pilosité corporelle accrue",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[2,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[2,6]*100, "%"),
                               paste(AFAB_Comb_Sum[2,7]*100, "%"))
  )


AFAB_Waffle3 <- waffle(AFAB_Comb_Sum[3, 5:7]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Aggrandissement du dickclit",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[3,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[3,6]*100, "%"),
                               paste(AFAB_Comb_Sum[3,7]*100, "%"))
  )


AFAB_Waffle4 <- waffle(AFAB_Comb_Sum[4, 5:7]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Arrêt des règles",
                       legend_pos = "bottom"
                       ) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3", "#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[4,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[4,6]*100, "%"),
                               paste(AFAB_Comb_Sum[4,7]*100, "%")),
                    breaks= colnames(AFAB_Comb_Sum[5:7])
  )

AFAB_Waffle5 <- waffle(AFAB_Comb_Sum[5, 5:7]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Aggravation de la voix",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[5,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[5,6]*100, "%"),
                               paste(AFAB_Comb_Sum[5,7]*100, "%"))
)

AFAB_Waffle6 <- waffle(AFAB_Comb_Sum[6, 5:7]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Répartition masculine des graisses",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3", "#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[6,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[6,6]*100, "%"),
                               paste(AFAB_Comb_Sum[6,7]*100, "%")),
                    breaks= colnames(AFAB_Comb_Sum[5:7])
  )

AFAB_Waffle7 <- waffle(AFAB_Comb_Sum[7, 5:7]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Majoration de la musculature",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[7,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[7,6]*100, "%"),
                               paste(AFAB_Comb_Sum[7,7]*100, "%")                               )
  )

AFAB_Waffle8 <- waffle(AFAB_Comb_Sum[8, 5:7]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Alopécie androgénique",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AFAB_Comb_Sum[8,5]*100, "%"), 
                               paste(AFAB_Comb_Sum[8,6]*100, "%"),
                               paste(AFAB_Comb_Sum[8,7]*100, "%")                               )
  )

AFAB_Waffle <- ggarrange(AFAB_Waffle1, 
          AFAB_Waffle2, 
          AFAB_Waffle3, 
          AFAB_Waffle4, 
          AFAB_Waffle5, 
          AFAB_Waffle6, 
          AFAB_Waffle7, 
          AFAB_Waffle8,
          ncol = 4,
          nrow = 2,
          common.legend = F,
          legend = "bottom") 

ggsave(
  "./plots/AFAB_Waffle.png",
  plot = AFAB_Waffle,
  scale = 2,
  dpi = 300,
  limitsize = TRUE
)




