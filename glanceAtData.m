%% just want to get a sense of what the data look like
clear; clc

% load the data
DATA_PATH = '/Users/lcnl/Documents/MATLAB/MCW/mcw_data';
files = dir([DATA_PATH '/*aseg*']);
load([DATA_PATH '/metadata.mat']);

numSubjects = size(metadata,2);

% for i = 1:numSubjects
for i = 1
    % get the ID for the 1st subject ...
    filename = sprintf('s%d.aseg.mat', metadata(i).subject);
    % ... and load the corresponding data
    load([DATA_PATH '/' filename])
    disp(filename)
    
    % run iterative lasso
    % TODO
    
    % try the first subject
    X = funcData(:, metadata(i).colfilter);
    Y = bsxfun(@and, metadata(i).TrueAnimals, metadata(i).rowfilter);
    
    [finalModel,iterModels,finalTune,iterTune] = ...
        iterativelasso(X, Y ,metadata.CVBLOCKS);
    
end


% look at the position of stimuli of interest
% imagesc(metadata(1).TrueAnimals)
% imagesc(metadata(1).TrueArtifacts)
% imagesc(metadata(1).TrueWords)


