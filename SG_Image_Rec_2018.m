function Start
clc; clear all; close all;
h = figure(  'Position', [460 500 500 60] );
set(h,'Name','SG_Image_Rec','numbertitle','off')
set(h, 'MenuBar', 'none');
set(h, 'ToolBar', 'none');

lafs = javax.swing.UIManager.getInstalledLookAndFeels;
javax.swing.UIManager.setLookAndFeel('javax.swing.plaf.metal.MetalLookAndFeel');
javax.swing.UIManager.setLookAndFeel('com.jgoodies.looks.plastic.Plastic3DLookAndFeel');

btn1 = uicontrol ( 'Parent',h, ...
                                'Style', 'pushbutton', ...
                                'String', 'Image Registration',...
                                'Backgroundcolor','g', ...
                                'Position', [20 10 150 40], ...
                                'Callback', @ic); 

btn2 = uicontrol ( 'Parent',h, ...
                                'Style', 'pushbutton', ...
                                'String', 'Exit',...
                                'Backgroundcolor','r', ...
                                'Position', [400 10 60 40], ...
                                'Callback', @el); 
                            
btn3 = uicontrol ( 'Parent',h, ...
                  'Style', 'pushbutton', ...
                  'String', 'Image Comparison',...
                  'Backgroundcolor','y', ...
                  'Position', [180 10 150 40], ...
                  'Callback', @ec);


function ic(~,~)
registrationEstimator
end

function ec(~,~)
    [filename1, user_canceled]= imgetfile;
    [filename2, user_canceled]= imgetfile;
    cpselect(filename1, filename2)
end

function el(~,~)
x=questdlg('Do you want to close program?','User Action','Yes','No','Yes');
switch x
    case 'Yes'
        close(gcf);
    case 'No'
end
end

end
