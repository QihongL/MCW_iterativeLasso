%% just want to get a sense of what the data look like
clear all; clc 

% load the data
DATA_PATH = '../mcw_data';
files = dir([DATA_PATH '/*aseg*']);
load([DATA_PATH '/metadata.mat']);
for i = 1:size(files,1)
    load([DATA_PATH '/' files(i).name])
end

% look at the position of stimuli of interest
imagesc(metadata(1).TrueAnimals)
imagesc(metadata(1).TrueArtifacts)
imagesc(metadata(1).TrueWords)

