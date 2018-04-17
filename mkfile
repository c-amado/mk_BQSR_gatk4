< config.mk

results/%.recal-tab1:	data/%.markdup.sorted.bam
	set -x
	mkdir -p `dirname $target`
	java -jar $GATK \
		BaseRecalibrator \
		-R $REF \
		-I "data/"$stem".markdup.sorted.bam" \
		--known-sites $INDELs \
		--known-sites $dbSNP \
		-O $target".build" \
	&& mv $target".build" $target


results/%.recal.bam:	data/%.markdup.sorted.bam results/%.recal-tab1
	set -x
	java -jar $GATK \
		ApplyBQSR \
		-R $REF \
		-I "data/"$stem".markdup.sorted.bam" \
		-O $target".build" \
		--bqsr-recal-file "results/"$stem".recal-tab1" \
	&& mv $target".build" $target \
	&& mv $target".build.bai" $target".bai"


