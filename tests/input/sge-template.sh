#$ -cwd
#$ -V
#$ -q broad
#$ -N __name__
#$ -j y
#$ -o __logfile__
#$ -l h_vmem=__virtualmemory__g,h_rt=2:00:00,os=RedHat7

source /broad/software/scripts/useuse
reuse .anaconda3-5.0.1
reuse R-3.5

Rscript tests/input/distributed-executor.R __checkpointfile__ __clobber__ __libraries__
