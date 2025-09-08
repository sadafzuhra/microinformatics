setRepositories()
if (!requireNamespace("BiocManager" , quietly = TRUE) )
  install.packages("BiocManager")
BiocManager::install(c('qvalue' , 'plot3D' , 'ggplot2','pheatmap','cowplot',
                       'cluster','NbClust','fastICA','NMF','matrixStats',
                       'Rtsne','mosaic','knitr','genomation',
                       'ggbio','Gviz','DESeq2','RUVSeq','gProfileR','ggfortify','corrplot',
                       'gage','EDASeq','citr','formatR',
                       'svglite','Rqc','ShortRead','QuasR',
                       'methylKit','FactoMineR', 'iClusterPlus',
                       'enrichR','caret','xgboost','glmnet',
                       'DALEX','kernlab','pROC','nnet','RANN',
                       'ranger','GenoInfoDb','GenomicRanges',
                       'GenomicAlignments','ComplexHeatmap','circlize',
                       'BSgenome.Hsapiens.UCSC.hg19','tidyr',
                       'AnnotationHub' , 'GenomicFeatures' , 'normr' ,
                      ' MotifDb' ,'TFBSTools' ,'rGADEM' , 'JASPAR2018'
                      ))
  