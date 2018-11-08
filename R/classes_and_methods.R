# Constructor function for the 'Gene' class
## Needs to be fixed as described in Lab 11 ##
Gene <- function(ID, symbol, ontology, CDS){
  if(length(ID) > 1) stop("Only provide one ID")
  if(length(symbol) > 1) stop("Only provide one symbol")
  if(length(CDS) > 1) stop("Only provide one CDS")
  if(!is.character(ID)) stop("ID must be a character string")
  if(!is.character(symbol)) stop("symbol must be a character string")
  if(!is.numeric(ontology)) stop("ontology must be a vector of GO numbers")
  if(!is.character(CDS)) stop("CDS must be a character string")
  
  # clean out line breaks from CDS and check that it is DNA sequence
  CDS <- gsub("\n", "", CDS)
  if(nchar(CDS) %% 3 != 0){
    stop("Length of protein coding sequence must be a multiple of three.")
  }
  if(!all(strsplit(CDS, "")[[1]] %in% c("A", "C", "G", "T"))){
    stop("CDS must be DNA sequence.")
  }
  
  out <- list(ID = ID, symbol = symbol, ontology = as.integer(ontology),
              CDS = CDS)
  class(out) <- c("Gene", class(out))
  return(out)
}

##length of protein in nucleotides function for the Gene class
ProteinLength <- function(GeneObject){
  UseMethod("ProteinLength", GeneObject)
}
ProteinLength.Gene <- function(GeneObject){
  amino_length <- nchar(GeneObject[[4]])/3 
  return(amino_length)
}

##print function with cat for the Gene class
print.Gene <- function(GeneObject, ...){
  cat(paste("The gene ID is", GeneObject$ID, sep = " "),
      paste("The length of the gene in bp is", nchar(GeneObject[[4]]), sep = " "),
      paste("Symbol:", GeneObject$symbol),
      paste("The length of the gene in amino acids is", ProteinLength(GeneObject)), sep = "\n")
}