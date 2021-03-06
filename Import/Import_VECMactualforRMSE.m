%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/tobias/Documents/Bachelorarbeit/Data sets/Final Data/Combined Data.xlsx
%    Worksheet: Co-integration data
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2016/12/15 15:24:38

%% Import the data
[~, ~, raw] = xlsread('/Users/tobias/Documents/Bachelorarbeit/Data sets/Final Data/Combined Data.xlsx','Co-integration data');
raw = raw(3:196,8);
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
USCPROF_actual = data(:,1);


%% Clear temporary variables
clearvars data raw R;