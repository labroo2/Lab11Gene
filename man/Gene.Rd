\name{Gene}
\alias{Gene}
\title{
Class Constructor for Gene
}
\description{
This function makes an object of the S3 class "Gene" to contain some information
about a gene.
}
\usage{
Gene(ID, symbol, ontology, CDS)
}
\arguments{
  \item{ID}{
A character string with the gene id.
}
  \item{symbol}{
A character string with the gene symbol.
}
  \item{ontology}{
An integer or numeric vector (which will be converted to integer) containing
gene ontology (GO) terms for the gene.
}
  \item{CDS}{
A character string containing the DNA sequence for the protein-coding portion
of the gene.
}
}

\value{
An object of the class "Gene", with slot names identical to the four
argument names.
}

\author{
Awesome Student
}

\seealso{
\code{\link{print.Gene}}, \code{\link{ProteinLength}}
}
\examples{
mygene <- Gene("Abc000011", "XYZ", c(8020, 112, 900),
               "ATGAAATAG")
mygene
}
