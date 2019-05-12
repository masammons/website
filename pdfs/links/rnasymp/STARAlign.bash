#!/bin/bash
#SBATCH --job-name=ALIGNSTAR      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=5gb                   # Job memory request (5gb worth of memory)
#SBATCH --cpus-per-task=5            # Number of CPU cores per task
#SBATCH --time=2:00:00              # Time limit hrs:min:sec
#SBATCH --output=/network/rit/misc/scratch/rna_symp19/%u/ALIGNSTAR.log # Standard output and error log file

#Changing each user's directory so that they are in their home directory, in case this script is run from elsewhere.
cd /network/rit/misc/scratch/rna_symp19/${USER}

#Stating two different path variables to make our lives easier when running each individual command for STAR. 
#One variable for the path to the STAR program, and one variable for the path to the raw data files. 
export BIN_PATH='/network/rit/misc/scratch/rna_symp19/miniconda3/envs/RNAS19/bin/'

export DATA_PATH='/network/rit/misc/scratch/rna_symp19/${USER}/raw_data/'

#--genomeDir: Points to your recently indexed genome that you produced in the previous STARIndex slurm job.
#--runThreadN. Number of CPU cores you want your job spread across.  This flag is for multi-threaded jobs. 
#--readFilesIn: Points to where your raw sequencing reads are located.
#--outfilenameprefix: Naming your output files. This will be the prefix to all the SAM/BAM files produced and all of the log files.
#--quantMode: How you want your reads to be quantified. Transcriptome SAM outputs alignments translated into transcript coordinates for further downstream analysis, GeneCounts puts out a separate file of the individual genes that aligned and were subsequently counted as the alignment occurred.
#--outSAMtype: Specifying what we want our alignment output file format to be. In this case we want our files to be aligned and put out in BAM format (could also be SAM) and we want that file sorted by coordinate, so starting with Chromosome 1.
#--readFilesCommand: Tells STAR what type of files we are using. Since these files are gzipped (compressed), we must specify that to STAR.
#We are processing 6 different FASTQ files, thus we are running essentially 6 different commands.
${BIN_PATH}STAR --genomeDir ./yeast  --runThreadN 5 --readFilesIn ${DATA_PATH}fastq_files/SRR636633.fastq.gz --outFileNamePrefix ${PWD}/staroutput/WT1 --quantMode TranscriptomeSAM GeneCounts --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
${BIN_PATH}STAR --genomeDir ./yeast  --runThreadN 5 --readFilesIn ${DATA_PATH}fastq_files/SRR636634.fastq.gz --outFileNamePrefix ${PWD}/staroutput/WT2 --quantMode TranscriptomeSAM GeneCounts --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
${BIN_PATH}STAR --genomeDir ./yeast  --runThreadN 5 --readFilesIn ${DATA_PATH}fastq_files/SRR636635.fastq.gz --outFileNamePrefix ${PWD}/staroutput/WT3 --quantMode TranscriptomeSAM GeneCounts --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
${BIN_PATH}STAR --genomeDir ./yeast  --runThreadN 5 --readFilesIn ${DATA_PATH}fastq_files/SRR636636.fastq.gz --outFileNamePrefix ${PWD}/staroutput/WT4_H202_Treatment --quantMode TranscriptomeSAM GeneCounts --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
${BIN_PATH}STAR --genomeDir ./yeast  --runThreadN 5 --readFilesIn ${DATA_PATH}fastq_files/SRR636637.fastq.gz --outFileNamePrefix ${PWD}/staroutput/WT5_H202_Treatment --quantMode TranscriptomeSAM GeneCounts --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
${BIN_PATH}STAR --genomeDir ./yeast  --runThreadN 5 --readFilesIn ${DATA_PATH}fastq_files/SRR636638.fastq.gz --outFileNamePrefix ${PWD}/staroutput/WT6_H202_Treatment --quantMode TranscriptomeSAM GeneCounts --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat








