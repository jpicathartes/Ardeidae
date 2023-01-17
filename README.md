# Heron (Aves:Ardeidae) phylogeny 

This repository documents the methodology of Hruska et al. (2023) (doi:#), where we estimated a molecular phylogeny of herons using ultraconserved elements (UCEs) sequenced from 58 species. In addition, we explore approaches that might be useful when encoutering phylogenetic artifacts associated with sequences from historical samples (e.g.,toepads). We also assess patterns of gene-tree discordance across the hypothesized phylogeny, allowing us to more directly assess variation in support across the genome. Lastly we estimate rates of molecular evolution along branches of the phylogeny, and ask whether these patterns corroborate rate patterns previously recovered with other types of genetic data. It is my hope that this repository will be of use to anyone interested in phylogenetic analysis of UCEs, particularly if 'historical' samples are included.   

For inquiries regarding any of the analyses implemented in the manuscript, don't hesitate to contact me at jackphruska@gmail.com

![Illustration of Reddish Egret (Egretta rufescens)](https://github.com/jphruska/Ardeidae/blob/master/reddish_egret.jpg)
Illustration of the Reddish Egret *Egretta rufescens* by Sarah MacLean. 

## Data

We implemented a target-capture approach, wherein we enriched individual libraries for a set of thousands of ultraconserved elements (UCEs). These libraries were sequenced on an Illumina HiSeq 3000. Raw reads are available at NCBI (BioProject PRJNA658323). A dryad repository associated with the manuscript contains the following: (1) fasta files of the contigs assembled with SPAdes, (2) all of the DNA alignments (datasets) included in the study.  Dataset IDs provided in Supplemental Table S3 of the manuscript, (3) gene trees estimated from dataset 5 that were used as input for the evaluation of gene-tree/species-tree discordance, (4) xml files used as input when estimating mtDNA phylogenies with BEAST and (5) xml files used as input when carying out molecular rate variation analyses.

## Tissue UCE phylogeny 
Initial analyses of the data revealed that toepad samples contained both substantially shorter and fewer UCEs, when compared to UCEs from tissue samples (See Supplemental Figures S9 and S10). As a result, we decided to estimate the UCE phylogeny with two matrices: the first containing only tissue samples and the other containing tissue and toepad samples. Below we demonstrate the workflow carried out for the matrix that contains only tissue samples. More details and scripts on the UCE workflow are provided in the **Tissue_UCE_phylogeny** folder of this repository. 

### Fastq trimming, cleaning, and contig assembly 

## MtDNA assembly, alignment, and phylogenetic analysis 

We assembled mtDNA sequences of most individuals (48 out of 58) using off-target (non-UCE) reads. This dataset included both tissue and toepad samples, and tissue type did not appear to have a discernible effect on mtDNA assembly. For example, we failed to recover good mtDNA assemblies for some tissue samples (e.g., Ardea herodias) and also recovered mtDNA assemblies for most toepad samples. Here we used MITObim, which employs the assembler MIRA. Sequences that had 65% or greater similarity to a Gorsachius magnificus assembly (GenBank # KT364529) were subsequently extracted and identified to one of 13 mtDNA coding regions. We then aligned each coding region separately with MAFFT, as implemented by Geneious. Individual coding region alignments were subsequently concatenated. The resulting alignment was then used to estimate phylogenetic trees with RAxML (as implemented by Geneious) and BEAST. More details and scripts are provided in the **mtDNA_assembly_phylogeny** folder of this repository. 

### UCE extraction and alignment

## 
## Gene-tree species-tree discordance 
We explored patterns of gene-tree/species-tree discordance for a proposed phylogeny of herons. Phylogenies of the complete (UCEs found in all species) and incomplete (UCEs found in at least 75% of all species) tissue datasets produced mostly concordant topologies (Figure 2 & Supplemental Figures S1-S4), with the exception of the placement of *Gorsachius melanolophus*, which was recovered either as sister to the rest of the Ardeinae or as sister to a clade that consisted of (*Ardea* + night herons + (*Ardeola* + *Butorides*)). To explore the proportion of gene trees and sites that support these two alternative topologies we explored patterns of gene-tree species-tree discordance with PhyParts and gene and site discordance with IQTree. We carried out these analyses for all nodes of the alternative topologies and suggest that discordance is commonplace across nodes of the heron tree, even for those with high bootstrap/posterior probability support. While gene and site discordance are commonplace, few nodes have a substantial proportion of genes or sites that support an alternative bipartition (for a given node), which suggests that while discordance is common, the proposed phylogeny (Figure 2) is the most plausible, moving forward. The PhyParts analysis was carried out on the incomplete tissue dataset, and the IQTree analyses were carried out on the incomplete and complete tissue datasets. More details and scripts are provided in the **Gene-tree_species-tree_discordance** folder of this repository. 

## Molecular rate variation analysis
Previous DNA-DNA hybridization and mtDNA data suggest that clades of herons varied with respect to rates of molecular evolution. We explored whether or not UCE data recapitulated these patterns (e.g., that bitterns evolved faster) by assessing rates of molecular evolution across branches of the phylogeny using five subsets of loci sampled from the complete tissue dataset (dataset 6a). Each subset included 100 unique (non-redudant) UCE loci that were concatenated. These alignments were then used an input for analyses in BEAST, which allowed us to explore patterns of rate variation. More details and scripts are provided in the **Molecular_rate_variation** folder of this repository. As mentioned above, the xml files of each subset are provied in the Dryad repository associated with the manuscript. 

