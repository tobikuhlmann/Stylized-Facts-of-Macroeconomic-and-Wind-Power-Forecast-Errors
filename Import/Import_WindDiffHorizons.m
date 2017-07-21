%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/tobias/Documents/Bachelorarbeit/Data sets/Wind:Photovoltaic Power/Wind Power Germany /Windenergie_GER15.xlsx
%    Worksheet: By forecast horizon
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2017/01/30 11:08:58

%% Import the data
[~, ~, raw] = xlsread('/Users/tobias/Documents/Bachelorarbeit/Data sets/Final Data/Combined Data.xlsx','Final Data Sets');
raw = raw(4:1463,2:30);
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
Tennet2012_16 = data(:,1);
Tennet2012_21 = data(:,2);
Tennet2012_31 = data(:,3);
Tennet2012_39 = data(:,4);

Hertz2012_15 = data(:,6);
Hertz2012_20 = data(:,7);
Hertz2012_30 = data(:,8);
Hertz2012_38 = data(:,9);

Tennet2015_16 = data(:,11);
Tennet2015_21 = data(:,12);
Tennet2015_31 = data(:,13);
Tennet2015_39 = data(:,14);

Hertz2015_15 = data(:,16);
Hertz2015_20 = data(:,17);
Hertz2015_30 = data(:,18);
Hertz2015_38 = data(:,19);

Tennet2016_16 = data(:,21);
Tennet2016_21 = data(:,22);
Tennet2016_31 = data(:,23);
Tennet2016_39 = data(:,24);

Hertz2016_15 = data(:,26);
Hertz2016_20 = data(:,27);
Hertz2016_30 = data(:,28);
Hertz2016_38 = data(:,29);



%% Clear temporary variables
clearvars data raw R;