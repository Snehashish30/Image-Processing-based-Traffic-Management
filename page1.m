function varargout = page1(varargin)
% PAGE1 MATLAB code for page1.fig
%      PAGE1, by itself, creates a new PAGE1 or raises the existing
%      singleton*.
%
%      H = PAGE1 returns the handle to a new PAGE1 or the handle to
%      the existing singleton*.
%
%      PAGE1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PAGE1.M with the given input arguments.
%
%      PAGE1('Property','Value',...) creates a new PAGE1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before page1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to page1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help page1

% Last Modified by GUIDE v2.5 20-Mar-2014 13:42:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @page1_OpeningFcn, ...
                   'gui_OutputFcn',  @page1_OutputFcn, ...
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


% --- Executes just before page1 is made visible.
function page1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to page1 (see VARARGIN)

% Choose default command line output for page1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes page1 wait for user response (see UIRESUME)
%setappdata(handles.figure,'waiting',1)
%uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = page1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;
%delete(hObject);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%page2('page1', handles.figure);
%errordlg('Bekar hai');
page2;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ui;
