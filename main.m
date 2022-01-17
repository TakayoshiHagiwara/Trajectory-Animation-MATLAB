% -----Summary-----
% Sample of 3D animation plot
% 
% Created:      2022/1/18
% Author:       Takayoshi Hagiwara (Graduate School of Media Design, Keio University)
% Environment:  MATLAB_R2021b

addpath('Data/');
file1 = 'Data/star.csv';
file2 = 'Data/circle.csv';
filePaths = {file1, file2};

TrajectoryAnimator(filePaths, false);