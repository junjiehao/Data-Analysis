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
addpath('/n/home05/jeffmoffitt/Code/Data_Analysis/');
addpath('/n/home05/jeffmoffitt/Code/Data_Analysis/Startup');

%% Define matlab-storm Variables and Paths
global insightExe; % System executable command for InsightM
global scratchPath; % place for matlab-storm to save temporary files
global pythonPath; % path to Python 2.7
global matlabStormPath; % path to matlab-storm
global stormAnalysisPath; % path to storm-analysis

scratchPath = '/n/home05/jeffmoffitt/Scratch/'; 
pythonPath = ''; 
matlabStormPath = '/n/home05/jeffmoffitt/Code/matlab-storm/';  
stormAnalysisPath= '/n/home05/jeffmoffitt/Code/storm-analysis/';  
insightExe = '';

% Call the matlab-storm startup script
addpath([matlabStormPath,'Startup/']);
matlabstorm_startup;

%% Add Paths to search directory
baseDir = ['/n/home05/jeffmoffitt/Code/'];
global dataAnalysisPath;
dataAnalysisPath = [baseDir 'Data_Analysis/'];

scriptPaths = {'Data_Analysis', ...
    'Data_Analysis/96_Well', ...
    'Data_Analysis/L1H', ...
    'Data_Analysis/OligoPaint', ...
    'Data_Analysis/qPCR', ...
    'Data_Analysis/RNAZipcode', ...
    'Data_Analysis/Sequencing', ...
    'Data_Analysis/Image_Analysis', ...
    'Data_Analysis/Primer_Design', ...
    'Data_Analysis/TSTORM'};
display('Adding Data Analysis Paths');
for i=1:length(scriptPaths)
    addpath([baseDir scriptPaths{i}], '-end');
    display(['    ' baseDir scriptPaths{i}]);
end
display('------------------------------------------------------------------');

%% Add matlab-functions and matlab-scripts
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
