#!/bin/bash

if [ $# -lt 2 ];then
	echo0 1 $0" prefix directly_mapped_folder"
	echo0 4 "be sure to be in the piPipes folder"
	exit 1
fi

if [ "${2%normalized_by_*}" = "mirna" ];then
	NF=hairpins_mapping/${1}.x_rRNA.hairpin.v1m1.bed2
else
	NF=genome_mapping/${1}.x_rRNA.x_hairpin.dm3v1.unique.bed2
fi

run_bed2_summary $2/${1}.x_rRNA.piRNAcluster.a1.insert.bed2 $2/${1}.x_rRNA.transposon.a1.insert.bed2 ${NF} genome_mapping/${1}.x_rRNA.x_hairpin.dm3v1.all.bed2 bed2_summary/${1} 8


