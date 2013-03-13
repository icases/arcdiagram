\name{arcplot}
\alias{arcplot}
\title{Arc Diagram Plot}
\usage{
  arcplot(edgelist, sorted = FALSE, decreasing = FALSE,
    ordering = NULL, horizontal = TRUE,
    col.arcs = "#5998ff77", lwd.arcs = 1.8, pos.arcs = 1,
    lty = 1, lend = 1, ljoin = 2, lmitre = 1,
    show.nodes = FALSE, pch.nodes = 19, cex.nodes = 1,
    col.nodes = "gray80", bg.nodes = "gray80",
    lwd.nodes = 1, show.labels = TRUE, labels = NULL,
    col.labels = "gray55", cex.labels = 0.9, srt = 90,
    font = NULL, adj = NULL, pos = NULL, offset = 0.5,
    axes = FALSE, xpd = NA, ...)
}
\arguments{
  \item{edgelist}{basically a two-column matrix with edges
  (see \code{\link{graph}})}

  \item{sorted}{logical to indicate if nodes should be
  sorted (default \code{FALSE})}

  \item{decreasing}{logical to indicate type of sorting
  (used only when \code{sorted=TRUE})}

  \item{ordering}{optional numeric vector providing the
  ordering of nodes (when provided, this parameter
  overrides \code{sorted=TRUE})}

  \item{horizontal}{logical indicating whether to plot in
  horizontal orientation}

  \item{col.arcs}{color for the arcs (default
  \code{"gray50"})}

  \item{pos.arcs}{whether the arc has to be plotted over
  (to the right if vertical) or under (to the left if
  vertical) the x (y if vertical) axe (default \code{1})}

  \item{lwd.arcs}{line width for the arcs (default 1)}

  \item{lty}{line type for the arcs (see
  \code{\link{par}})}

  \item{lend}{the line end style for the arcs (see
  \code{\link{par}})}

  \item{ljoin}{the line join style for the arcs (see
  \code{\link{par}})}

  \item{lmitre}{the line mitre limit for the arcs (see
  \code{\link{par}})}

  \item{show.nodes}{logical indicating whether to show node
  symbols}

  \item{pch.nodes}{plotting 'character', i.e. symbol to use
  when plotting nodes (\code{pch.nodes=0:25})}

  \item{cex.nodes}{expansion of the node symbols (default
  1)}

  \item{col.nodes}{color of the node symbols (default
  \code{"gray50"})}

  \item{bg.nodes}{background (fill) color for the node
  symbols given by \code{pch.nodes=21:25}}

  \item{lwd.nodes}{line width for drawing node symbols (see
  \code{\link{points}})}

  \item{show.labels}{logical indicating whether to show
  node labels}

  \item{labels}{character vector with labels for the nodes}

  \item{col.labels}{color of the node labels (default
  \code{"gray50"})}

  \item{cex.labels}{expansion of node labels (default
  \code{"gray50"})}

  \item{srt}{The string rotation in degrees (see
  \code{\link{par}})}

  \item{font}{font used for node labels (see
  \code{\link{par}})}

  \item{line}{on which margin line the node labels are
  displayed, starting at 0 counting outwards (see
  \code{\link{mtext}})}

  \item{adj}{ane or two values which specify the x (and
  optionally y) adjustment of the labels. (see
  \code{\link{text}})}

  \item{pos}{a position specifier for the text. If
  specified this overrides any adj value given. Values of
  1, 2, 3 and 4, respectively indicate positions below, to
  the left of, above and to the right of the specified
  coordinates.}

  \item{offset}{when pos is specified, this value gives the
  offset of the label from the specified coordinate in
  fractions of a character width.}

  \item{axes}{logical indicating whether to plot the axes
  (default \code{FALSE})}

  \item{xpd}{A logical value or NA. If FALSE, all plotting
  is clipped to the plot region, if TRUE, all plotting is
  clipped to the figure region, and if NA, all plotting is
  clipped to the device region, default to NA (see
  \code{\link{par}}).}

  \item{...}{further graphical parameters (see
  \code{\link{par}}), including \code{family}, \code{main},
  \code{asp}, etc.}
}
\description{
  Give me an edgelist and I'll help you plot a pretty damn
  arc diagram
}
\details{
  The arcs are scaled such that they fit in a plot region
  with its x-axis ranging from zero to one. Node symbols
  and labels can be optionally displayed. Node symbols are
  displayed through the function \code{link{\points}}. In
  turn, node labels are displayed through the function
  \code{\link{text}}.
}
\examples{
\dontrun{
 # generate graphs
 ring_graph = graph.ring(10)
 star_graph = graph.star(10, mode="out")
 tree_graph = graph.tree(10, 2)

 # add names to nodes
 V(ring_graph)$name = letters[1:vcount(ring_graph)]
 V(star_graph)$name = paste("Node", 1:vcount(star_graph))
 V(tree_graph)$name = paste("V", 1:vcount(tree_graph), sep='')

 # extract edgelist
 ring_edges = get.edgelist(ring_graph)
 star_edges = get.edgelist(star_graph)
 tree_edges = get.edgelist(tree_graph)

 # arc diagram
 arcplot(ring_edges, labels=V(ring_graph)$name, srt=0)
 arcplot(star_edges, labels=V(star_graph)$name, srt=90)
 arcplot(tree_edges, labels=V(tree_graph)$name, srt=90)

 # compare to plot.igraph
 plot(ring_graph, vertex.label=V(ring_graph)$name)
 plot(star_graph, vertex.label=V(star_graph)$name)
 plot(tree_graph, vertex.label=V(tree_graph)$name)
 }
}
\author{
  Gaston Sanchez with contributions from I. Cases
}
\seealso{
  \code{\link{xynodes}}
}

