#Same castillo PATH
#PATH=/castle/cfresno/.bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/usr/lib/plan9/bin:/usr/bin/

#GATK directory
# GATK="/home/adminserver/bin/GenomeAnalysisTK3.7.jar"  
GATK="/home/adminserver/bin/gatk-4.0.3.0/gatk-package-4.0.3.0-local.jar"

#Archivo de genoma de referencia
##REF="/references/ftp.broadinstitute.org/bundle/hg38/Homo_sapiens_assembly38.fasta" ##For whole-genome
REF="/references/mitocondria/NCBI_NC_012920.1_Homo_sapiens_mitochondrion.fasta" ##For mitochondria

##For mitochondria using NC_012920 reference
#INDELs="/references/mitocondria/GATK_bundle_for_NC012920/indels_mitochondria.vcf"
INDELs="/references/mitocondria/GATK_bundle_for_NC012920/indels_mitochondria_2.vcf"
#dbSNP="/references/mitocondria/GATK_bundle_for_NC012920/SNVs_mitochondria.vcf"
dbSNP="/references/mitocondria/GATK_bundle_for_NC012920/SNVs_mitochondria_2.vcf"

#Number of threads
NT="4"
