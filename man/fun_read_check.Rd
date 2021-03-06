% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fun_read_check.R
\name{fun_read_check}
\alias{fun_read_check}
\title{Read check function.}
\usage{
fun_read_check(
  df_mutation,
  df_bam,
  df_mut_call,
  ref_genome,
  sample_name,
  read_length,
  adapter_1,
  adapter_2,
  short_homology_search_length,
  progress_bar
)
}
\arguments{
\item{df_mutation}{Mutation information.}

\item{df_bam}{Data from the BAM file.}

\item{df_mut_call}{Read ID list.}

\item{ref_genome}{Reference genome for the data.}

\item{sample_name}{Sample name (character)}

\item{read_length}{The read length in the sequence.}

\item{adapter_1}{The Read 1 adapter sequence of the library.}

\item{adapter_2}{The Read 2 adapter sequence of the library.}

\item{short_homology_search_length}{Small sequence for homology search.}

\item{progress_bar}{"Y": You can see the progress visually.}
}
\value{
list(msec, homology_search)
}
\description{
This function attempts to check the mutation profile in each read.
}
\examples{
\donttest{
fun_read_check(df_mutation = exampleMutation,
               df_bam =  exampleBAM,
               df_mut_call = exampleMutCall,
               ref_genome = BSgenome.Hsapiens.UCSC.hg38::
                              BSgenome.Hsapiens.UCSC.hg38,
               sample_name = "H15-11943-1-T_TDv3",
               read_length = 151,
               adapter_1 = "AGATCGGAAGAGCACACGTCTGAACTCCAGTCA",
               adapter_2 = "AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT",
               short_homology_search_length = 4,
               progress_bar = "Y")
}
}
