function varargout = page2(varargin)
% PAGE2 MATLAB code for page2.fig
%      PAGE2, by itself, creates a new PAGE2 or raises the existing
%      singleton*.
%
%      H = PAGE2 returns the handle to a new PAGE2 or the handle to
%      the existing singleton*.
%
%      PAGE2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PAGE2.M with the given input arguments.
%
%      PAGE2('Property','Value',...) creates a new PAGE2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before page2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to page2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help page2

% Last Modified by GUIDE v2.5 20-Mar-2014 13:24:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @page2_OpeningFcn, ...
                   'gui_OutputFcn',  @page2_OutputFcn, ...
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


% --- Executes just before page2 is made visible.
function page2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to page2 (see VARARGIN)
dontOpen = false;
%mainGuiInput = find(strcmp(varargin, 'page1'));
%if (isempty(mainGuiInput)) ...
 %   || (length(varargin) <= mainGuiInput) ...
  %  || (~ishandle(varargin{mainGuiInput+1}))
   % dontOpen = true;
%else
 %   handles.page1 = varargin{mainGuiInput+1};
% Choose default command line output for page2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes page2 wait for user response (see UIRESUME)
 uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = page2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
%varargout{1} = [];
%delete(hObject);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
%video=videoinput('winvideo',1);
%triggerconfig(video, 'manual');
%set(video,'FramesPerTrigger',1);
%set(video,'ReturnedColorSpace','grayscale');
%set(hObject,'UserData',video);
%start(video);
%trigger(video);
%y=getdata(video,1,'uint8');
%stop(video);
%file=mmreader('MOV061.3gp')
%y=read(file,100);
y=imread('low traffic.jpg');
figure,imshow(y);
BW = roipoly(y);
imwrite(BW,'C:\Users\SNEHASHISH\Desktop\Test photos\cam1roi.jpg');
page1;
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
%vid=videoinput('winvideo',1);
%vid=get(handles.pushbutton1,'UserData');
%figure('Name', 'My Custom Preview Window');
hmfr = vision.VideoFileReader('MOV061.3gp');

       hdvp = vision.DeployableVideoPlayer('Location', [10,50]);
       framecount=0;
       while framecount<200
         frame = step(hmfr);
         framecount=framecount+1;
         step(hdvp, frame);
       end
       release(hmfr);
       release(hdvp);
uicontrol('String', 'Close', 'Callback', 'close(gcf)');
%vidRes = get(vid, 'VideoResolution');
%nBands = get(vid, 'NumberOfBands');
%hImage = image( zeros(vidRes(2), vidRes(1), nBands) );
%start(vid);
%preview(vid,hImage);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
