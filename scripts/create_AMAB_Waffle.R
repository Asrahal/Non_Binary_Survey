library(ggplot2)
library(waffle)
library(ggpubr)

AMAB_Waffle1 <- waffle(AMAB_Comb_Sum[1, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse =F,
                       title = "Augmentation de la taille des seins",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AMAB_Comb_Sum[1,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[1,5]*100, "%"),
                               paste(AMAB_Comb_Sum[1,6]*100, "%"))
  )

AMAB_Waffle2 <- waffle(AMAB_Comb_Sum[2, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Peau plus souple et moins grasse",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AMAB_Comb_Sum[2,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[2,5]*100, "%"),
                               paste(AMAB_Comb_Sum[2,6]*100, "%")),
                    breaks = colnames(AMAB_Comb_Sum[4:6])
  )


AMAB_Waffle3 <- waffle(AMAB_Comb_Sum[3, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Diminution des érections",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3","#5bc2a3" ), 
                    labels = c(paste(AMAB_Comb_Sum[3,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[3,5]*100, "%"),
                               paste(AMAB_Comb_Sum[3,6]*100, "%")),
                    breaks = colnames(AMAB_Comb_Sum[4:6])
  )


AMAB_Waffle4 <- waffle(AMAB_Comb_Sum[4, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Diminution du volume testiculaire",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3", "#5bc2a3"), 
                    labels = c(paste(AMAB_Comb_Sum[4,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[4,5]*100, "%"),
                               paste(AMAB_Comb_Sum[4,6]*100, "%")),
                    breaks= colnames(AMAB_Comb_Sum[4:6])
  )

AMAB_Waffle5 <- waffle(AMAB_Comb_Sum[5, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Répartition féminine des graisses",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AMAB_Comb_Sum[5,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[5,5]*100, "%"),
                               paste(AMAB_Comb_Sum[5,6]*100, "%"))
  )

AMAB_Waffle6 <- waffle(AMAB_Comb_Sum[6, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Diminution de la pilosité faciale",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3"), 
                    labels = c(paste(AMAB_Comb_Sum[6,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[6,5]*100, "%"),
                               paste(AMAB_Comb_Sum[6,6]*100, "%"))
  )

AMAB_Waffle7 <- waffle(AMAB_Comb_Sum[7, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Diminution de la pilosité corporelle",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3", "#5bc2a3"), 
                    labels = c(paste(AMAB_Comb_Sum[7,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[7,5]*100, "%"),
                               paste(AMAB_Comb_Sum[7,6]*100, "%")),
                    breaks= colnames(AMAB_Comb_Sum[4:6])
  )

AMAB_Waffle8 <- waffle(AMAB_Comb_Sum[8, 4:6]*100, 
                       rows=10, 
                       size=0.6,
                       flip = T,
                       reverse = F,
                       title = "Diminution de la masse musculaire",
                       legend_pos = "bottom"
) +
  theme(plot.title = element_text(hjust = 0.5, size = 10)) +
  scale_fill_manual(name = NULL, 
                    values = c("#ed7b84", "#FADF75","#5bc2a3","#5bc2a3" ), 
                    labels = c(paste(AMAB_Comb_Sum[8,4]*100, "%"), 
                               paste(AMAB_Comb_Sum[8,5]*100, "%"),
                               paste(AMAB_Comb_Sum[8,6]*100, "%")),
                    breaks= colnames(AMAB_Comb_Sum[4:6])
  )

AMAB_Waffle <- ggarrange(AMAB_Waffle1, 
                         AMAB_Waffle2, 
                         AMAB_Waffle3, 
                         AMAB_Waffle4, 
                         AMAB_Waffle5, 
                         AMAB_Waffle6, 
                         AMAB_Waffle7, 
                         AMAB_Waffle8,
                         ncol = 4,
                         nrow = 2,
                         common.legend = F,
                         legend = "bottom") 

ggsave(
  "./plots/AMAB_Waffle.png",
  plot = AMAB_Waffle,
  scale = 2,
  dpi = 300,
  limitsize = TRUE
)



