% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fun_read_check.R
\name{fun_read_check}
\alias{fun_read_check}
\title{Read check function.}
\usage{
fun_read_check(
  df_mutation,
  df_bam,
  ref_genome,
  sample_name,
  read_length,
  adapter_1,
  adapter_2,
  short_homology_search_length,
  min_homology_search,
  progress_bar
)
}
\arguments{
\item{df_mutation}{Mutation information.}

\item{df_bam}{Data from the BAM file.}

\item{ref_genome}{Reference genome for the data.}

\item{sample_name}{Sample name (character)}

\item{read_length}{The read length in the sequence.}

\item{adapter_1}{The Read 1 adapter sequence of the library.}

\item{adapter_2}{The Read 2 adapter sequence of the library.}

\item{short_homology_search_length}{Small sequence for homology search.}

\item{min_homology_search}{Minimum length to define "homologous".}

\item{progress_bar}{"Y": You can see the progress visually.}
}
\value{
list(msec, homology_search, mut_depth)
}
\description{
This function attempts to check the mutation profile in each read.
}
\examples{
\dontrun{
data(exampleMutation)
data(exampleBam)
fun_read_check(df_mutation = exampleMutation,
df_bam = exampleBam,
ref_genome = BSgenome.Hsapiens.UCSC.hg38::BSgenome.Hsapiens.UCSC.hg38,
sample_name = "sample",
read_length = 150,
adapter_1 = "AGATCGGAAGAGCACACGTCTGAACTCCAGTCA",
adapter_2 = "AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT",
short_homology_search_length = 4,
min_homology_search = 40,
progress_bar = "N"
)
}
}
