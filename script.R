library(jsonlite)
library(ggplot2)
result <- fromJSON("output/three_node_benchmark_shaped.json")

df <- as.data.frame(result)

filtered_df <- df[ which(df$term_count==1000 | df$term_count==50000 | df$term_count == 200000),]

ggplot(data=filtered_df, aes(x=shard_count,y=median, group=1)) +
  ylab("median query time (secs)") +
  xlab("Shards in index") +
  geom_line() +
  facet_grid(term_count ~ mapping_type, labeller = label_both) +
  theme_light()
  