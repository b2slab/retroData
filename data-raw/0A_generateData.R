library(data.table)
library(igraph)

source("data-raw/largestcc.R")

# old biogrid is a pain
# Idea: load latest and remove recent edges!
df <- fread(
  "~/all/devel/datasets/bioinfo/databases/BioGRID//BIOGRID-ALL-3.4.140.tab2.txt",
  stringsAsFactors = FALSE,
  na.strings = "-")

df.confidence <- read.table(
  "data-raw/tab_confidence_gitter_et_al",
  sep = ",",
  stringsAsFactors = FALSE,
  header = TRUE)

dim(df)

df <- df[df$`Organism Interactor A` == "9606" &
           df$`Organism Interactor B` == "9606", ]
gc()

dim(df)
sum(df$`Experimental System` %in% df.confidence$Experiment.type)

df2 <- df[, c("Entrez Gene Interactor A",
              "Entrez Gene Interactor B",
              "Author"), with = F]

df2$Year <- as.numeric(gsub("(.+\\()(\\d{4})(\\))", "\\2", df2$Author))
df2$Author <- NULL
gg <- graph_from_data_frame(df2, directed = F)

E(gg)$sources <- 1
gg2 <- simplify(gg, edge.attr.comb = list(sources = "sum"))
g%>%
  simplify(.,
           remove.loops = T,
           edge.attr.comb = "min") %>%
  largestcc

V(gg)$name <- paste0("hsa:", V(gg)$name)

gg
gg.old <- delete_edges(gg, E(gg)[Year > 2008]) %>% largestcc

# sapply(kegg, function(df) {
#   sum(df$V1 %in% V(largestcc(gg))$name)/nrow(df)
# })
# sapply(kegg, function(df) {
#   sum(df$V1 %in% V(largestcc(gg.old))$name)/nrow(df)
# })

g.biogrid <- gg
save(g.biogrid, file = "data/graph.biogrid.RData")
