## pfasta Docker Container

This Docker container provides a set of tools for working with genetic sequences using the `pfasta` package (-> from: https://github.com/kloetzl/pfasta ). The tools offer various functionalities for fasta file manipulation and analysis.

### Examples

Running `pfasta` command to process a file:

`docker run --rm -v /absolute/path/to/demo.fasta:/data/bad.fasta plaquette/pfasta:dev pfasta acgt /data/bad.fasta > /absolute/path/to/good.fasta`


Replace `/absolute/path/to/demo.fasta` with the absolute path to your input `demo.fasta` file, and `/absolute/path/to/good.fasta` with the desired absolute path for the resulting `good.fasta` file.

This example demonstrates how to use the `pfasta` command to process a file (`acgt` subcommand is used in this case) and redirect the output to another file.

Starting an interactive session within the container:

`docker run -it -v /absolute/path/to/demo.fasta:/data/demo.fasta plaquette/pfasta:dev /bin/bash`


Replace `/absolute/path/to/demo.fasta` with the absolute path to your `demo.fasta` file.

This example showcases how to start an interactive session within the container and have the `demo.fasta` file mounted inside. It launches a bash shell (`/bin/bash`) for interactive usage within the container.

After starting the interactive session, you can navigate to the `/data` directory and access the `demo.fasta` file or execute other `pfasta` commands as needed.

### Available Tools (-> from: https://github.com/kloetzl/pfasta )

There is  a wrapper program `pfasta` which bundles all of the tools at installation.


- `acgt`: Reduce residues to the four canonical bases.
- `aln2dist`: Convert an alignment to a distance matrix.
- `aln2maf`: Convert an alignment to MAF.
- `cchar`: Count the number of nucleotides.
- `concat`: Concatenate sequences.
- `fancy_info`: Print a fancy report.
- `format`: Format sequences.
- `gc_content`: Determine the GC content.
- `n50`: Compute the N50.
- `revcomp`: Compute the reverse complement.
- `shuffle`: Shuffle a set of sequences.
- `sim`: Simulate a set of genetic sequences.
- `split`: Split a FASTA file into multiple files on a sequence basis.
- `validate`: Check if a file conforms to the grammar given below.

Use the following command to format a file:

`pfasta tool file.fasta`

Replace `file.fasta` with the actual name of the file you want to format.
