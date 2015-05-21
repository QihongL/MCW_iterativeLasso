# MCW_iterativeLasso
Run iterative lasso on the MCW data set. The iterative lasso code was adapted from knowledge and concepts lab github, which can be retrieved from this link: https://github.com/UWKCL/iterativelasso


Some stats of the MCW dataset:

1200 rows
- 1-900: TrueWords
- 901 - 1200: non-words

- 1-94: TrueAnimals
- 95-240: TrueArtifacts

rowfilter and colfilter are filtered data. In particular, outlying voxels and voxels that never active (always 0) were removed. 
  
Goal: 
- classifcation: animals vs. artifacts, animals vs. non-animal words, animals vs. everything else, artifacts vs. non-artifacts words, etc. 
