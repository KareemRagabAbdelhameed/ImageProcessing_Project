function varargout = project_p1(varargin)
% PROJECT_P1 MATLAB code for project_p1.fig
%      PROJECT_P1, by itself, creates a new PROJECT_P1 or raises the existing
%      singleton*.
%
%      H = PROJECT_P1 returns the handle to a new PROJECT_P1 or the handle to
%      the existing singleton*.
%
%      PROJECT_P1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT_P1.M with the given input arguments.
%
%      PROJECT_P1('Property','Value',...) creates a new PROJECT_P1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_p1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_p1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project_p1

% Last Modified by GUIDE v2.5 10-May-2024 00:59:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_p1_OpeningFcn, ...
                   'gui_OutputFcn',  @project_p1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before project_p1 is made visible.
function project_p1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project_p1 (see VARARGIN)

% Choose default command line output for project_p1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project_p1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_p1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function [im]=pushbutton1_Callback(hObject, eventdata, handles)

[name,path]=uigetfile({'*.jpg';'*.png'},'select image data');
fullname = [path name];
im=imread(fullname);
disp(fullname);
axes(handles.axes1)
imshow(im);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in menue_resize.
function menue_resize_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function menue_resize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menue_resize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fact_edit_Callback(hObject, eventdata, handles)
% hObject    handle to fact_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fact_edit as text
%        str2double(get(hObject,'String')) returns contents of fact_edit as a double


% --- Executes during object creation, after setting all properties.
function fact_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fact_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function row_edit_Callback(hObject, eventdata, handles)
% hObject    handle to row_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of row_edit as text
%        str2double(get(hObject,'String')) returns contents of row_edit as a double


% --- Executes during object creation, after setting all properties.
function row_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to row_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function col_edit_Callback(hObject, eventdata, handles)
% hObject    handle to col_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of col_edit as text
%        str2double(get(hObject,'String')) returns contents of col_edit as a double


% --- Executes during object creation, after setting all properties.
function col_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to col_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)

val=get(handles.menue_resize,'value');
str=get(handles.menue_resize,'string');
oldImage=getimage(handles.axes1);

switch str{val}

    case 'Direct Mapping: 0-Order'
        newImage= DM_0L(oldImage,str2num(get(handles.fact_edit,'string')));
    case 'Direct Mapping: 1-Order'
        newImage= DM_1L(oldImage,str2num(get(handles.fact_edit,'string')));
    case 'Reverse Mapping: 0-Order'
        newImage= RM_0_order(oldImage,str2num(get(handles.row_edit,'string')),str2num(get(handles.col_edit,'string')));
        
    case 'Reverse Mapping: 1-Order'
        newImage= RM_1_order(oldImage,str2num(get(handles.row_edit,'string')),str2num(get(handles.col_edit,'string')));
    case 'kareem'
         newImage= DM_1L(oldImage,str2num(get(handles.fact_edit,'string')));
end
axes(handles.axes2)
imshow(newImage);
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in menue_Neighborhood.
function menue_Neighborhood_Callback(hObject, eventdata, handles)
% hObject    handle to menue_Neighborhood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menue_Neighborhood contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menue_Neighborhood


% --- Executes during object creation, after setting all properties.
function menue_Neighborhood_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menue_Neighborhood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function size_edit_Callback(hObject, eventdata, handles)
% hObject    handle to size_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size_edit as text
%        str2double(get(hObject,'String')) returns contents of size_edit as a double


% --- Executes during object creation, after setting all properties.
function size_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function segma_edit_Callback(hObject, eventdata, handles)
% hObject    handle to segma_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of segma_edit as text
%        str2double(get(hObject,'String')) returns contents of segma_edit as a double


% --- Executes during object creation, after setting all properties.
function segma_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to segma_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Neighbohood_edit.
function Neighbohood_edit_Callback(hObject, eventdata, handles)
val=get(handles.menue_Neighborhood,'value');
str=get(handles.menue_Neighborhood,'string');
oldImage=getimage(handles.axes1);
%Smoothing Mean (Averaging) Filter
%Smoothing Weighted (Gaussian) Filter
%Smoothing with Median Filter
%Smoothing with Max Filter.
%Smoothing with Min Filter
%Sharpening Filter
%Edge Detection Filter
%UnSharp Filter

switch str{val}

    case 'Smoothing Mean (Averaging) Filter'

       newImage= Geometric_mean_filter(oldImage,str2num(get(handles.size_edit,'string')));
    case 'Smoothing Weighted (Gaussian) Filter'
        newImage= Weighted_Filter(oldImage,str2num(get(handles.segma_edit,'string')));
    case 'Smoothing with Median Filter'
        newImage=applyMedianFilter(oldImage,str2num(get(handles.filter_edit,'string')));
        
     case 'Smoothing with Max Filter.' 
         newImage=applyMaxFilter(oldImage,str2num(get(handles.filter_edit,'string')));
     case 'Smoothing with Min Filter' 
         newImage=applyMinFilter(oldImage,str2num(get(handles.filter_edit,'string')));
    case 'Sharpening Filter'
        newImage= Sharpening_Filter(oldImage);
        
    case 'Edge Detection Filter'
        newImage= Edge_Detection(oldImage);
    case 'UnSharp Filter'
        newImage= UnsharpenFilter(oldImage);
        
end
axes(handles.axes2)
imshow(newImage);


% --- Executes on selection change in menu_frequency.
function menu_frequency_Callback(hObject, eventdata, handles)
% hObject    handle to menu_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_frequency contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_frequency


% --- Executes during object creation, after setting all properties.
function menu_frequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_edite_Callback(hObject, eventdata, handles)
% hObject    handle to N_edite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_edite as text
%        str2double(get(hObject,'String')) returns contents of N_edite as a double


% --- Executes during object creation, after setting all properties.
function N_edite_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_edite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
val=get(handles.menu_frequency,'value');
str=get(handles.menu_frequency,'string');
oldImage=getimage(handles.axes1);
% High Butterworth Filter
% Low Butterworth Filter
% High Gaussian Filter
% Low  Gaussian Filter
% High Ideal Filter
% Low Ideal Filter

switch str{val}

    case 'High Butterworth Filter'

       newImage= highButterworthFilter(oldImage,str2num(get(handles.D0_edite,'string')),str2num(get(handles.N_edite,'string')));
       newImage=im2uint8(newImage);
    case 'Low Butterworth Filter'
        newImage= LowButterworthFilter(oldImage,str2num(get(handles.D0_edite,'string')),str2num(get(handles.N_edite,'string')));
        newImage=im2uint8(newImage);
    case 'High Gaussian Filter'
        newImage= highGaussianFilter(oldImage,str2num(get(handles.D0_edite,'string')));
        newImage=im2uint8(newImage);
    case 'Low  Gaussian Filter'
        newImage= LowGaussianFilter(oldImage,str2num(get(handles.D0_edite,'string')));
        newImage=im2uint8(newImage);
    case 'High Ideal Filter'
        newImage= highIdealFilter(oldImage,str2num(get(handles.D0_edite,'string')));
        newImage=im2uint8(newImage);
    case 'Low Ideal Filter'
        newImage= LowIdealFilter(oldImage,str2num(get(handles.D0_edite,'string')));
        newImage=im2uint8(newImage);
end
axes(handles.axes2)
imshow(newImage);



function D0_edite_Callback(hObject, eventdata, handles)
% hObject    handle to D0_edite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D0_edite as text
%        str2double(get(hObject,'String')) returns contents of D0_edite as a double


% --- Executes during object creation, after setting all properties.
function D0_edite_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D0_edite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu_pixel.
function menu_pixel_Callback(hObject, eventdata, handles)
% hObject    handle to menu_pixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_pixel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_pixel


% --- Executes during object creation, after setting all properties.
function menu_pixel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_pixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Minimum_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Minimum_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Minimum_edit as text
%        str2double(get(hObject,'String')) returns contents of Minimum_edit as a double


% --- Executes during object creation, after setting all properties.
function Minimum_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Minimum_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function max_edit_Callback(hObject, eventdata, handles)
% hObject    handle to max_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max_edit as text
%        str2double(get(hObject,'String')) returns contents of max_edit as a double


% --- Executes during object creation, after setting all properties.
function max_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_edit_Callback(hObject, eventdata, handles)
% hObject    handle to k_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_edit as text
%        str2double(get(hObject,'String')) returns contents of k_edit as a double


% --- Executes during object creation, after setting all properties.
function k_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)


val=get(handles.menu_pixel,'value');
str=get(handles.menu_pixel,'string');
oldImage=getimage(handles.axes1);
oldImage1=getimage(handles.axes4);
oldImage2=getimage(handles.axes5);
% Convert to grayscale: Single color channel
% Convert to grayscale: Averaging
% Convert to grayscale: Luminance
% Convert to grayscale: Desaturation
% Convert to grayscale: Decomposing
% Drawing the histogram
% Contrast adjustment
% Brightness adjustment
% power_low
% Histogram equalization
% Histogram matching
% Add two images
% subtract two images
% Image Negatives
% Quantization
switch str{val}

    case 'Convert to grayscale: Single color channel'
       newImage= cvt2graySingleColorChanel(oldImage);
       
    case 'Convert to grayscale: Averaging'
       newImage= cvt2grayAveraging(oldImage); 
       
       
    case 'Convert to grayscale: Luminance'
       newImage= cvt2grayLuminance(oldImage);
       
    case 'Convert to grayscale: Desaturation'
       newImage= cvt2grayDesaturation(oldImage);
       
    case 'Convert to grayscale: Decomposing'
       newImage= cvt2grayDecomposing(oldImage);   
      
    case 'Drawing the histogram'
        [counts, grayLevels]= MyHistogram(oldImage);
       
    case 'Contrast adjustment'
        newImage= constrast(oldImage,str2num(get(handles.Minimum_edit,'string')),str2num(get(handles.max_edit,'string')));
       
        
    case 'Brightness adjustment'
        newImage= Brightness(oldImage,str2num(get(handles.offset_edite,'string')));
        
        
    case 'power_low'
        newImage= powerLaw(oldImage,str2num(get(handles.gama_edit,'string')));
      
    case 'Histogram equalization'
        newImage= HisEqual(oldImage);
        
    case 'Histogram matching'
         newImage= HistogramMatching(oldImage1,oldImage2);
       
    case 'Add two images'
         newImage= addition(oldImage1,oldImage2);
        
    case 'subtract two images'
         newImage= subtraction(oldImage1,oldImage2);
         
    case 'Image Negatives'
        newImage= ImNegative(oldImage);
        
    case 'Quantization'
        newImage= Quantization(oldImage,str2num(get(handles.k_edit,'string')));
      
end
 axes(handles.axes2)
 imshow(newImage);


function gama_edit_Callback(hObject, eventdata, handles)
% hObject    handle to gama_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gama_edit as text
%        str2double(get(hObject,'String')) returns contents of gama_edit as a double


% --- Executes during object creation, after setting all properties.
function gama_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gama_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg';'*.png'},'select image data');
fullname = [path name];
im=imread(fullname);
disp(fullname);
axes(handles.axes4)
imshow(im);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg';'*.png'},'select image data');
fullname = [path name];
im=imread(fullname);
disp(fullname);
axes(handles.axes5)
imshow(im);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function offset_edite_Callback(hObject, eventdata, handles)
% hObject    handle to offset_edite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of offset_edite as text
%        str2double(get(hObject,'String')) returns contents of offset_edite as a double


% --- Executes during object creation, after setting all properties.
function offset_edite_CreateFcn(hObject, eventdata, handles)
% hObject    handle to offset_edite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
close;
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
clear;
clc;
cla;
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function filter_edit_Callback(hObject, eventdata, handles)
% hObject    handle to filter_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filter_edit as text
%        str2double(get(hObject,'String')) returns contents of filter_edit as a double


% --- Executes during object creation, after setting all properties.
function filter_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filter_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
