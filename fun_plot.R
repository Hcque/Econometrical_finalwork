
# Title: fun_plot
# using data to do some sort of PCA visualization



data_beijing <- AQ_beijing[,c(11:14,16:18)]
pr <- prcomp(data_beijing, scale = TRUE)
print(pr)

# visualize and save picture
library(ggfortify)
p <- autoplot(pr,data = AQ_beijing, alpha = I(1/5),
         colour = 'season',
         loadings = TRUE, loadings.colour = 'orange',
         loadings.label = TRUE,
         loadings.label.size = 3,
         main = 'Air Quality in Beijing(2010-2015)')
print(p)