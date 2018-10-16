library(ggplot2)

df <- read.csv('throughput/length_tab.csv', header = FALSE)
names(df) <- c('length', 'count')

p <- ggplot(df) + 
    aes(x = length, y = count) + 
    geom_bar(stat = 'identity')

ggsave('figs/bar.png', p)