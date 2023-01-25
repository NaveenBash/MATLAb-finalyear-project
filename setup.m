clear all
clc

% Create the face detector object.
faceDetector = vision.CascadeObjectDetector();

% Create the point tracker object.
pointTracker = vision.PointTracker('MaxBidirectionalError', 2);

%Create the webcam object.
cam = webcam();

% Capture one frame to get its size.
Frame = snapshot (cam);
frameSize = size (Frame);

% Create the video player object.
videoPlayer=vision.VideoPlayer ('Position', [100 100 [frameSize(2), frameSize(1)]+30]);