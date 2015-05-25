%% Startup Script
% -------------------------------------------------------------------------
% This script initializes the matlab workspace and defines useful paths and
% global variables for STORM analysis
% If you already have a startup script add the following code to this
% script. To be functional, there are specific paths that must be set based
% on the vlocal machine.  
% -------------------------------------------------------------------------
% Jeffrey Moffitt, Alistair Boettinger
% January 18, 2013
% -------------------------------------------------------------------------
%% Clear Existing Workspace
close all;
clear all;
clc;
display('------------------------------------------------------------------');
warning off all
restoredefaultpath; % Clear previous paths
warning on all
addpath('C:\Users\Junjie\Documents\MATLAB');
addpath('C:\Users\Junjie\Dropbox\MERFISHCode\Data-Analysis\Startup\');

%% Define matlab-storm Variables and Paths
global insightExe; % System executable command for InsightM
global scratchPath; % place for matlab-storm to save temporary files
global pythonPath; % path to Python 2.7
global matlabStormPath; % path to matlab-storm
global stormAnalysisPath; % path to storm-analysis

scratchPath = 'C:\Users\Junjie\Documents\Scratch\'; 
pythonPath = 'C:\Python27\'; 
matlabStormPath = 'C:\Users\Junjie\Dropbox\MERFISHCode\matlab-storm\';  
stormAnalysisPath= 'C:\Users\Junjie\Dropbox\MERFISHCode\storm-analysis\';  
insightExe = 'C:\Software\Insight3\InsightM.exe';

% Call the matlab-storm startup script
addpath([matlabStormPath,'Startup\']);
matlabstorm_startup;

%% Add matlab-functions and matlab-scripts
baseDir='C:\Users\Junjie\Dropbox\MERFISHCode\';
display('Adding matlab-functions');
matlabFunctionsPath = [baseDir 'matlab-functions'];
addpath(genpath(matlabFunctionsPath), '-begin');
display(['    ' matlabFunctionsPath]);
display(['      And all enclosed paths']);
display('------------------------------------------------------------------');

display('Adding matlab-scripts');
matlabScriptsPath = [baseDir 'matlab-scripts'];
addpath(genpath(matlabScriptsPath), '-begin');
display(['    ' matlabScriptsPath]);
display(['      And all enclosed paths']);
display('------------------------------------------------------------------');

%% Change working directory
cd(baseDir);


