---
layout: post
title: Sequencing Technology Workshop Information - 2019
link: 
author: Morgan Sammons
image: 
---
### Information for Attendees of the Sequencing Technology Workshop, 2019
#### Part of the 6th Annual RNA Symposium of the RNA Institute

**Instructor:** [Morgan Sammons](/team/Morgan-Sammons/), Assistant Professor of Biology, State University of New York at Albany

**Instructor:** Ryan Meng, Bioinformatics Support Specialist, State University of New York at Albany

> There are a number of resources online for learning about and using high-throughput sequencing data in your own work. The [Harvard Chan Bioinformatics Core](https://hbctraining.github.io/main/) provides extremely detailed, well-organized introductions to a number of sequencing approaches, software, and workflows. I highly recommend this for further information.


[Main Presentation](/pdfs/links/rnasymp/Sammons.RNAsymp.SeqTech.Workshop.2019.pdf) 
: Presentation given by Morgan as part of the workshop. 

[Bulk RNA-seq Replicate Guidelines](/pdfs/links/rnasymp/Schurch.2016.RNA.pdf)
: Excellent manuscript published in *RNA* discussing why biological replicates matter and how to select the number of replicates in a bulk RNA-seq experiment. 


#### Tools used during the symposium
[STAR](https://github.com/alexdobin/STAR): a splice-aware alignment tool. 

> Dobin, A., Davis, C. A., Schlesinger, F., Drenkow, J., Zaleski, C., Jha, S., Batut, P., Chaisson, M., … Gingeras, T. R. (2012). STAR: ultrafast universal RNA-seq aligner. Bioinformatics (Oxford, England), 29(1), 15-21. doi: [10.1093/bioinformatics/bts635](10.1093/bioinformatics/bts635)

[DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html): An *R*-based package for differential gene expression analysis using raw read counts derived from STAR. [Short Tutorial](http://bioconductor.org/packages/devel/bioc/vignettes/DESeq2/inst/doc/DESeq2.html)

> Love, M.I., Huber, W., Anders, S. (2014) Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2. Genome Biology, 15:550 doi: [10.1186/s13059-014-0550-8](10.1186/s13059-014-0550-8)

[Samtools](http://www.htslib.org/): software for manipulating SAM and BAM alignment files. 

> Li H, Handsaker B, Wysoker A, Fennell T, Ruan J, Homer N, Marth G, Abecasis G, Durbin R, and 1000 Genome Project Data Processing Subgroup, The Sequence alignment/map (SAM) format and SAMtools, Bioinformatics (2009) 25(16) 2078-9 doi: [10.1093/bioinformatics/btp352](10.1093/bioinformatics/btp352)


#### Commands used for Genome Indexing and Alignment

[Genome Indexing with STAR](/pdfs/links/rnasymp/STARIndex.bash)

We used the *Saccharomyces cerevisiae* sacCer3 genome from UCSC found at the [Illumina iGenomes](https://support.illumina.com/sequencing/sequencing_software/igenome.html) website. 

iGenomes is a nice source for the genomes of many model organisms used in research. 

You can use STAR (or other genome aligners) to build indexes to your own model organism using a FASTA file of the genome. 

[Genome Alignment with STAR](/pdfs/links/rnasymp/STARAlign.bash)

We used STAR in a cluster setting to align our raw FASTQ files to the sacCer3 genome we indexed in the prior steps. 

The script shown here is designed to be used in a cluster setting using the [slurm](https://slurm.schedmd.com/tutorials.html) schedule manager. If you are performing these tasks locally, you would not need to use the slurm nomenclature. If you are performing these tasks on your home institution cluster, they may use another schedule manager. 

Another point to remember is that we asked for certain computational resources in order to do the alignment. We based these numbers off of the available computational resources and our expectations of how long the alignment should take based on it being yeast (versus human or mouse with larger genomes). 

#### Non-alignment Based Strategies for Differential Gene Expression

We used [salmon](https://salmon.readthedocs.io/en/latest/) to perform transcript quantification of our RNA-seq data without prior alignment to a reference genome. 

The major advantage over STAR (or other aligners) is **speed**. salmon and a similar tool called [kallisto](https://pachterlab.github.io/kallisto/) do not actually perform any alignments, which drastically speeds up the process of quantifying your RNA-seq data. 

The other huge advantage is the processing power required to perform the transcript quantification using salmon or kallisto. These two programs can be run on your laptop or desktop and do not require anything more than that! 