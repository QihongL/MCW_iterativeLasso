# MCW_iterativeLasso
Run iterative lasso on the MCW data set. The iterative lasso code was adapted from knowledge and concepts lab github, which can be retrieved from this link: https://github.com/UWKCL/iterativelasso


intro the MCW dataset:

1200 rows
- 1-900: TrueWords
- 901 - 1200: non-words

- 1-94: TrueAnimals
- 95-240: TrueArtifacts

rowfilter and colfilter are filtered data. In particular, outlying voxels and voxels that never active (always 0) were removed. 
  
Goal: 
- classifcation: animals vs. artifacts, animals vs. non-animal words, animals vs. everything else, artifacts vs. non-artifacts words, etc. 


notes 6/1: 

data for subject1: 
- X = numItems x numVoxels, matrix
- Y = numItems x 1, logical vector  (e.g. 1 = 'animal', 0 = 'non-animal')

obejctive: Yhat = XB close to Y 
- Since we are using LASSO, many elements in B are going to be zero out

lambda: sparsity parameter. 
- bigger lambda ~> more zeros
- note that the "best lambda" is unknown 

outer k folds cross validation
- maximize the "performance" on the test set

inner k folders cross validation
- tune lambda with respect to the "performance"


e.g.: 
10 folds CV
- try lambda1, lambda2, ..., lambdaN
- - for each lambda, do 9 folds CV 

and do this for every subject 
















