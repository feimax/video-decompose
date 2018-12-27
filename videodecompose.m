clear
clc
vidObj = VideoReader('video.mp4');
 
% Specify that reading should start at 0.5 seconds from the
% beginning.
vidObj.CurrentTime = 0;

% Create an axes
%currAxes = axes;

% Read video frames until available
i = 0;
while hasFrame(vidObj)
    i = i + 1;
    vidFrame = readFrame(vidObj);
    vidFramet(:,:,1) = rot270(vidFrame(:,:,1));
    vidFramet(:,:,2) = rot270(vidFrame(:,:,2));
    vidFramet(:,:,3) = rot270(vidFrame(:,:,3));
    imwrite(vidFramet, sprintf('%03d.jpg',i));
    %image(vidFrame, 'Parent', currAxes);
    
    %currAxes.Visible = 'off';
    %pause(1/vidObj.FrameRate);
end


