% Create a figure window
f = figure('Position', [500, 500, 300, 400], 'name', 'Button Example');

r = figure('Position', [500, 500, 300, 400], 'name', '123');

close all
open f


% Create a smaller button and place it at a specific location
uicontrol('Style', 'pushbutton', ...
          'Position', [20, 20, 30, 30], ... % [x, y, width, height]
          'String', '🏠', ...
          'Callback', @buttonCallback);

% Callback function that is triggered when the button is clicked
function buttonCallback(~, ~)
    msgbox('Button clicked!', 'Information');  % Display a message box

end

% Create a smaller button and place it at a specific location
uicontrol('Style', 'pushbutton', ...
          'Position', [70, 20, 30, 30], ... % [x, y, width, height]
          'String', '👦', ...
          'Callback', @Callback);

% Callback function that is triggered when the button is clicked
function Callback
close all
open r



end

% Create a smaller button and place it at a specific location
uicontrol('Style', 'pushbutton', ...
          'Position', [120, 20, 30, 30], ... % [x, y, width, height]
          'String', '🏆', ...
          'Callback', @buttonCallback);

% Callback function that is triggered when the button is clicked
function buttCallback(~, ~)
    msgbox('Button clicked!', 'Information');  % Display a message box
end

% Create a smaller button and place it at a specific location
uicontrol('Style', 'pushbutton', ...
          'Position', [170, 20, 30, 30], ... % [x, y, width, height]
          'String', '🍽️', ...
          'Callback', @buttonCallback);

% Callback function that is triggered when the button is clicked
function butCallback(~, ~)
    msgbox('Button clicked!', 'Information');  % Display a message box
end
% Create a smaller button and place it at a specific location
uicontrol('Style', 'pushbutton', ...
          'Position', [220, 20, 30, 30], ... % [x, y, width, height]
          'String', '📝', ...
          'Callback', @buttonCallback);

% Callback function that is triggered when the button is clicked
function buCallback(~, ~)
    msgbox('Button clicked!', 'Information');  % Display a message box
end

% Create a smaller button and place it at a specific location
uicontrol('Style', 'pushbutton', ...
          'Position', [270, 20, 30, 30], ... % [x, y, width, height]
          'String', '💬', ...
          'Callback', @buttonCallback);

% Callback function that is triggered when the button is clicked
function bCallback(~, ~)
    msgbox('Button clicked!', 'Information');  % Display a message box
end

% Add a static text box with predefined text
uicontrol('Style', 'text', ...
          'Position', [30, 320, 200, 50], ...  % [x, y, width, height]
          'String', 'Username', ... % Text you want to display
          'FontSize', 13, ...
          'BackgroundColor', 'white');
% Add a static text box with predefined text
uicontrol('Style', 'text', ...
          'Position', [70, 290, 200, 50], ...  % [x, y, width, height]
          'String', 'Joined December 13, 2024', ... % Text you want to display
          'FontSize', 11, ...
          'BackgroundColor', 'white');
% Add a static text box with predefined text
uicontrol('Style', 'text', ...
          'Position', [50, 270, 200, 50], ...  % [x, y, width, height]
          'String', '_____________________________________________________________________________________________________________________________', ... % Text you want to display
          'FontSize', 13, ...
          'BackgroundColor', 'white');


%load("ExampleData.mat")

clear 
load( 'ExampleData.mat'); 
lat=Position. latitude; 
lon=Position.longitude; 
positionDatetime=Position.Timestamp; 
Xacc = Acceleration.X; 
Yacc = Acceleration.Y; 
Zacc = Acceleration.Z; 
accelDatetime=Acceleration.Timestamp; 
Time=timeElapsed(positionDatetime); 
accelTime=timeElapsed(accelDatetime);

earthCirc = 24901;
totaldis = 0;
for i = 1: (length(lat) -1)
lat1 = lat (1); 
lat2 = lat (1+1); 
lon1 = lon (1); 
lon2 = lon (1+1);

degDis = distance (lat1, lon1, lat2, lon2) ;
dis = (degDis/360) *earthCirc;
totaldis = totaldis + dis; 

end

stride = 2.5; 
totaldis_ft = totaldis*5280; 
steps = totaldis_ft/stride;
disp(['The total distance traveled is: ', numstr(totaldis), ' miles'])
disp(['You took', num2str(steps) ' steps'])


