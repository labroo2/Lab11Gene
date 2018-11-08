\name{print.Gene}
\alias{print.Gene}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print Method for class Gene
}
\description{
This method for print is suitable for objects of the class Gene.
}
\usage{
\method{print}{Gene}(GeneObject, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{GeneObject}{
  An object of the class Gene.
  }
  \item{\dots}{
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Joyce Njuguna & Marlee Labroo
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
phyA <- Gene("Solyc10g044670.1.1", "Phytochrome A", 
             c(155, 5515, 6355, 7165, 9584, 18298),
"ATGTCGTCT")
print.Gene(phyA)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
