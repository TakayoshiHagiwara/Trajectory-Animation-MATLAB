% -----Summary-----
% TRAJECTORYANIMATOR Draw data as an animation
%
% TRAJECTORYANIMATOR(filePath, isSaveVideo)
%  
% Parameters
% ----------
% filePath: array like
%   File path. Include extension.
% isSaveVideo: bool
%   If True, save video as MP4.
% 
% Returns
% -------
% none
%
% Created:      2022/1/18
% Author:       Takayoshi Hagiwara (Graduate School of Media Design, Keio University)
% Environment:  MATLAB_R2021b

function TrajectoryAnimator(filePaths, isSaveVideo)
% --------------- Allocating cells --------------- %
fileCount = size(numel(filePaths));
dat = cell(fileCount);
len = cell(fileCount);
al  = cell(fileCount);

% --------------- Read file --------------- %
for iFile = 1:numel(filePaths)
    readDat = readtable(filePaths{iFile});
    len{iFile}  = height(readDat);
    dat{iFile}  = readDat;
end
maxLen = max(cell2mat(len));

% --------------- Make graph objects --------------- %
colors = ["#EDB120", "#0072BD"];
for iFile = 1:numel(filePaths)
    al{iFile} = animatedline(MaximumNumPoints=maxLen, LineWidth=2, Color=colors(iFile));
end

% --------------- Make video writer --------------- %
if isSaveVideo
    v = VideoWriter('trajectory.mp4', 'MPEG-4');
    open(v);
end

% --------------- Set graph param --------------- %
grid on
grid minor
legend('star','circle')
xlabel('x')
ylabel('y')
zlabel('z')

% --------------- Plot data --------------- %
for time = 1:maxLen
    for iFile = 1:numel(filePaths)
        addpoints(al{iFile}, dat{iFile}.x(time), dat{iFile}.y(time), dat{iFile}.z(time));
    end
    drawnow

    if isSaveVideo
        writeVideo(v,getframe);
    end
end

% --------------- Close video writer --------------- %
if isSaveVideo
    close(v);
end

end