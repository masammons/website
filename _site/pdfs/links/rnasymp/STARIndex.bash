#!/bin/bash
#SBATCH --job-name=INDEXSTAR      # Job name	
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=5gb                   # Job memory request (5gb worth of memory)
#SBATCH --cpus-per-task=5            # Number of CPU cores per task
#SBATCH --time=2:00:00              # Time limit hrs:min:sec
#SBATCH --output=/network/rit/misc/scratch/rna_symp19/%u/INDEXSTAR.log     # Standard output and error log file

#Changing each user's directory so that they are in their home directory, in case this script is run from elsewhere.
cd /network/rit/misc/scratch/rna_symp19/${USER}

#Setting a variable to state the path to the STAR aligner program based in conda.
export BIN_PATH='/network/rit/misc/scratch/rna_symp19/miniconda3/envs/RNAS19/bin/'

#First we call upon the STAR program using the aforementioned path variable.
#--runMode. Default is alignReads, which as the name states aligns your fastq reads back to a reference genome. genomeGenerate produces genome indicies for your reference genome of choice.
#--runThreadN. Number of CPU cores you want your job spread across.  This flag is for multi-threaded jobs. 
#--genomeDir. The path to the location you want your genome indicies generated.
#--genomeFastaFiles. The reference genome, in FASTA format.
#--sjdbGTFfile. The transcript annotation file, in Gene Transfer Format (GTF). While STAR is able to run without a GTF file, it is highly recommended that you run it with said file.
${BIN_PATH}STAR  --runMode genomeGenerate --runThreadN 5  --genomeDir ./yeast --genomeFastaFiles ./raw_data/annotation_files/saccer3.fa --sjdbGTFfile ./raw_data/annotation_files/saccer3.gtf


