largestcc <- function(graph) {
  clust <- clusters(graph)

  ans <- induced.subgraph(
    graph = graph,
    vids = which(clust$membership == which.max(clust$csize)))

  return(ans)
}
