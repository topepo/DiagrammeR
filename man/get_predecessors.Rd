% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_predecessors.R
\name{get_predecessors}
\alias{get_predecessors}
\title{Get node IDs for predecessor nodes to the specified
node}
\usage{
get_predecessors(graph, node)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph}.}

\item{node}{a node ID for the selected node.}
}
\value{
a vector of node ID values.
}
\description{
Provides a vector of node IDs for all
nodes that have a
connection to the given node.
}
\examples{
\dontrun{
# Create a node data frame (ndf)
nodes <-
  create_nodes(
    nodes = LETTERS)

# Create an edge data frame (edf)
edges <-
  create_edges(
    from = sample(LETTERS, replace = TRUE),
    to = sample(LETTERS, replace = TRUE))

# From the ndf and edf, create a graph object
graph <-
  create_graph(
    nodes_df = nodes,
    edges_df = edges)

# Get predecessors for node `Z` in the graph
get_predecessors(graph, node = "Z")
#> [1] "A" "R" "R"

# If there are no predecessors, NA is returned
get_predecessors(graph, node = "A")
#> [1] NA
}
}

