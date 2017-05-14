function varargout = OptLat(varargin)
% OPTLAT Application M-file for OptLat.fig
%   OPTLAT, by itself, creates a new OPTLAT or raises the existing
%   singleton*.
%
%   H = OPTLAT returns the handle to a new OPTLAT or the handle to
%   the existing singleton*.
%
%   OPTLAT('CALLBACK',hObject,eventData,handles,...) calls the local
%   function named CALLBACK in OPTLAT.M with the given input arguments.
%
%   OPTLAT('Property','Value',...) creates a new OPTLATor raises the
%   existing singleton*.  Starting from the left, property value pairs are
%   applied to the GUI before two_axes_OpeningFunction gets called.  An
%   unrecognized property name or invalid value makes property application
%   stop.  All inputs are passed to OptLat_OpeningFcn via varargin.
%
%   *See GUI Options - GUI allows only one instance to run (singleton).
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OptLat

% Copyright 2001-2006 The MathWorks, Inc.

% Last Modified by GUIDE v2.5 21-Jan-2016 22:15:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',          mfilename, ...
                   'gui_Singleton',     gui_Singleton, ...
                   'gui_OpeningFcn',    @OptLat_OpeningFcn, ...
                   'gui_OutputFcn',     @OptLat_OutputFcn, ...
                   'gui_LayoutFcn',     [], ...
                   'gui_Callback',      []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
% --- Executes just before OptLat is made visible.
function OptLat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OptLat (see VARARGIN)
%handles.oldPos = get(gcf, 'position');
% Choose default command line output for OptLat
handles.output = hObject;
% lattice type 
%lattice =handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value
%Initialisation
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OptLat wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = OptLat_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%Make it fullscreen
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

set(handles.pushbutton15,'String','<HTML><FONT COLOR="black">a</HTML>');
set(handles.pushbutton15,'enable','off');
set(handles.pushbutton16,'String','<HTML><FONT COLOR="black">b</HTML>');
set(handles.pushbutton16,'enable','off');
set(handles.pushbutton17,'String','<HTML><FONT COLOR="black">c</HTML>');
set(handles.pushbutton17,'enable','off');
set(handles.pushbutton18,'String','<HTML><FONT COLOR="black">&alpha;</HTML>');
set(handles.pushbutton18,'enable','off');
set(handles.pushbutton19,'String','<HTML><FONT COLOR="black">&beta;</HTML>');
set(handles.pushbutton19,'enable','off');
set(handles.pushbutton20,'String','<HTML><FONT COLOR="black">&gamma;</HTML>');
set(handles.pushbutton20,'enable','off');
set(handles.pushbutton21,'String','<HTML><FONT COLOR="black">a</HTML>');
set(handles.pushbutton21,'enable','off');
set(handles.pushbutton22,'String','<HTML><FONT COLOR="black">b</HTML>');
set(handles.pushbutton22,'enable','off');
set(handles.pushbutton23,'String','<HTML><FONT COLOR="black">c</HTML>');
set(handles.pushbutton23,'enable','off');
set(handles.pushbutton24,'String','<HTML><FONT COLOR="black">&alpha;</HTML>');
set(handles.pushbutton24,'enable','off');
set(handles.pushbutton25,'String','<HTML><FONT COLOR="black">&beta;</HTML>');
set(handles.pushbutton25,'enable','off');
set(handles.pushbutton26,'String','<HTML><FONT COLOR="black">&gamma;</HTML>');
set(handles.pushbutton26,'enable','off');

set(handles.pushbutton28,'String','<HTML><FONT COLOR="black">v<sub>11</sub></HTML>');
set(handles.pushbutton28,'enable','off');
set(handles.pushbutton29,'String','<HTML><FONT COLOR="black">v<sub>21</sub></HTML>');
set(handles.pushbutton29,'enable','off');
set(handles.pushbutton30,'String','<HTML><FONT COLOR="black">v<sub>31</sub></HTML>');
set(handles.pushbutton30,'enable','off');
set(handles.pushbutton31,'String','<HTML><FONT COLOR="black">v<sub>12</sub></HTML>');
set(handles.pushbutton31,'enable','off');
set(handles.pushbutton32,'String','<HTML><FONT COLOR="black">v<sub>22</sub></HTML>');
set(handles.pushbutton32,'enable','off');
set(handles.pushbutton33,'String','<HTML><FONT COLOR="black">v<sub>32</sub></HTML>');
set(handles.pushbutton33,'enable','off');
set(handles.pushbutton34,'String','<HTML><FONT COLOR="black">v<sub>13</sub></HTML>');
set(handles.pushbutton34,'enable','off');
set(handles.pushbutton35,'String','<HTML><FONT COLOR="black">v<sub>23</sub></HTML>');
set(handles.pushbutton35,'enable','off');
set(handles.pushbutton36,'String','<HTML><FONT COLOR="black">v<sub>33</sub></HTML>');
set(handles.pushbutton36,'enable','off');

set(handles.pushbutton37,'String','<HTML><FONT COLOR="black">v<sub>11</sub></HTML>');
set(handles.pushbutton37,'enable','off');
set(handles.pushbutton38,'String','<HTML><FONT COLOR="black">v<sub>21</sub></HTML>');
set(handles.pushbutton38,'enable','off');
set(handles.pushbutton39,'String','<HTML><FONT COLOR="black">v<sub>31</sub></HTML>');
set(handles.pushbutton39,'enable','off');
set(handles.pushbutton40,'String','<HTML><FONT COLOR="black">v<sub>12</sub></HTML>');
set(handles.pushbutton40,'enable','off');
set(handles.pushbutton41,'String','<HTML><FONT COLOR="black">v<sub>22</sub></HTML>');
set(handles.pushbutton41,'enable','off');
set(handles.pushbutton42,'String','<HTML><FONT COLOR="black">v<sub>32</sub></HTML>');
set(handles.pushbutton42,'enable','off');
set(handles.pushbutton43,'String','<HTML><FONT COLOR="black">v<sub>13</sub></HTML>');
set(handles.pushbutton43,'enable','off');
set(handles.pushbutton44,'String','<HTML><FONT COLOR="black">v<sub>23</sub></HTML>');
set(handles.pushbutton44,'enable','off');
set(handles.pushbutton45,'String','<HTML><FONT COLOR="black">v<sub>33</sub></HTML>');
set(handles.pushbutton45,'enable','off');

set(handles.pushbutton46,'String','<HTML><FONT COLOR="black">m<sub>0</sub></HTML>');
set(handles.pushbutton46,'enable','off');
set(handles.pushbutton47,'String','<HTML><FONT COLOR="black">m<sub>1</sub>-m<sub>0</sub></HTML>');
set(handles.pushbutton47,'enable','off');


% Warnings

set(handles.WaVol,'String','No warnings');
set(handles.WaVol,'ForegroundColor',[0 0 0]);
set(handles.WaSize,'String','');


handles.m0prev='?';
handles.m0m1prev='?';

% set up for fcc to bcc with r=1
set(handles.cub,'Value',1);
set(handles.cub2,'Value',1);
set(handles.a,'String','1');
set(handles.b,'String','1');
set(handles.c,'String','1');
set(handles.alpha,'String','90');
set(handles.beta,'String','90');
set(handles.gamma,'String','90');



set(handles.F1,'Value',1);

set(handles.a2,'String','0.7937');
set(handles.b2,'String','0.7937');
set(handles.c2,'String','0.7937');
set(handles.alpha2,'String','90');
set(handles.beta2,'String','90');
set(handles.gamma2,'String','90');

set(handles.I12,'Value',1);

set(handles.r,'String','1');
%set(handles.compute,'String',strcat({'Compute the '},num2str(1),'-optimal lattice transformation'));
set(handles.compute,'String',horzcat('<HTML><FONT COLOR="black">Compute the <i>d</i><sub>',num2str(1),'</sub>-optimal lattice transformation</HTML>'));
    
set(handles.sl2,'Value',1);

%set up upper part

axes(handles.Parent)
set(handles.SubVec,'Enable','off');
set(handles.SubPar,'Enable','on');
set(handles.v11,'Enable','off');
set(handles.v12,'Enable','off');
set(handles.v13,'Enable','off');
set(handles.v21,'Enable','off');
set(handles.v22,'Enable','off');
set(handles.v23,'Enable','off');
set(handles.v31,'Enable','off');
set(handles.v32,'Enable','off');
set(handles.v33,'Enable','off');

set(handles.P1,'Enable','on');
set(handles.C1,'Enable','on');
set(handles.I1,'Enable','on');
set(handles.F1,'Enable','on');

set(handles.cub,'Enable','on');
set(handles.tri,'Enable','on');
set(handles.rho,'Enable','on');
set(handles.ort,'Enable','on');
set(handles.mon,'Enable','on');
set(handles.gamma,'Enable','on');
set(handles.tet,'Enable','on');
% Hint: get(hObject,'Value') returns toggle state of LatPar
set(handles.P2,'Enable','off');
set(handles.C2,'Enable','off');
set(handles.I2,'Enable','off');
set(handles.F2,'Enable','off');
set(handles.P2,'Value',1);

set(handles.a,'Enable','on');
set(handles.b,'Enable','off');
set(handles.c,'Enable','off');
set(handles.alpha,'Enable','off');
set(handles.beta,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.C1,'Enable','off');
set(handles.I1,'Enable','on');
set(handles.F1,'Enable','on');
if handles.C1.Value 
    set(handles.P1,'Value',1);
end
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);



% Lower part initialisation


axes(handles.Parent2)
set(handles.SubVec2,'Enable','off');
set(handles.SubPar2,'Enable','on');
set(handles.v112,'Enable','off');
set(handles.v122,'Enable','off');
set(handles.v132,'Enable','off');
set(handles.v212,'Enable','off');
set(handles.v222,'Enable','off');
set(handles.v232,'Enable','off');
set(handles.v312,'Enable','off');
set(handles.v322,'Enable','off');
set(handles.v332,'Enable','off');

set(handles.P12,'Enable','on');
set(handles.C12,'Enable','on');
set(handles.I12,'Enable','on');
set(handles.F12,'Enable','on');

set(handles.cub2,'Enable','on');
set(handles.tri2,'Enable','on');
set(handles.rho2,'Enable','on');
set(handles.ort2,'Enable','on');
set(handles.mon2,'Enable','on');
set(handles.gamma2,'Enable','on');
set(handles.tet2,'Enable','on');
% Hint: get(hObject,'Value') returns toggle state of LatPar2
set(handles.P22,'Enable','off');
set(handles.C22,'Enable','off');
set(handles.I22,'Enable','off');
set(handles.F22,'Enable','off');
set(handles.P22,'Value',1);

set(handles.a2,'Enable','on');
set(handles.b2,'Enable','off');
set(handles.c2,'Enable','off');
set(handles.alpha2,'Enable','off');
set(handles.beta2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.C12,'Enable','off');
set(handles.I12,'Enable','on');
set(handles.F12,'Enable','on');
if handles.C12.Value 
    set(handles.P12,'Value',1);
end
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

% middle part inititalisation
set(handles.Result,'Data',cell(3));
set(handles.Result,'FontUnits','points');
set(handles.Result,'FontSize',10);
set(handles.Result,'ColumnWidth',{65});
%set(handles.Result,'units','normalized');

%handles.s=zeros(1,9);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);



function figure1_SizeChangedFcn(hObject, eventdata, handles)
% % hObject    handle to figure1 (see GCBO)
% % eventdata  reserved - to be defined in a fut  ure version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% Get current size of GUI
% newPos = get(gcf, 'position');
% % If no changes have been made (eg. when figure is initially run)
% if(newPos == handles.oldPos)
%       return;
% else
%       sTxt = get(handles.compute, 'fontsize');
%       % Check if figure expanded
%       if(newPos(3) > handles.oldPos(3) || newPos(4) > handles.oldPos(4))
%           sTxt = sTxt + .25;
%       else
%           sTxt = sTxt - .25;
%       end
%       % Reset size of text
%       set(handles.compute, 'fontsize', sTxt);
% end
% handles.oldPos = newPos;
% % Update handles structure
% guidata(hObject, handles);

function r_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double
r = str2double(get(hObject,'String'));
if isnan(r) || ~isreal(r) || r==0
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.r.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
% else 
%     % Enable the Plot button with its original name
%     set(handles.SubPar,'String','Update')
%     set(handles.SubPar,'Enable','on')
end
if r<0
    set(handles.sl1,'String','-1');
    set(handles.sl2,'String','-2');
    set(handles.sl3,'String','-3');
    set(handles.sl4,'String','-4');
    set(handles.sl5,'String','-5');
end
if r>0
    set(handles.sl1,'String','1');
    set(handles.sl2,'String','2');
    set(handles.sl3,'String','3');
    set(handles.sl4,'String','4');
    set(handles.sl5,'String','5');
end
set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));

SL=handles.sl1.Value*1+handles.sl2.Value*2+handles.sl3.Value*3+handles.sl4.Value*4+handles.sl5.Value*5;
if r>0
    if SL==3
        set(handles.WaSize,'String',{'Computation will take';'a long time';'|SL^3(3,Z)|= 640 824'});
    elseif SL==4
         set(handles.WaSize,'String',{'Computation will take';'a very long time';'|SL^4(3,Z)|= 2 597 208'});
    elseif SL==5
        set(handles.WaSize,'String',{'Computation will take';'incredibly long';'|SL^5(3,Z)|= 10 460 024'});
    end
elseif r<0
    if SL==3
        set(handles.WaSize,'String',{'Computation will take';'a long time';'|SL^(-3)(3,Z)|= 640 824'});
    elseif SL==4
         set(handles.WaSize,'String',{'Computation will take';'a very long time';'|SL^(-4)(3,Z)|= 2 597 208'});
    elseif SL==5
        set(handles.WaSize,'String',{'Computation will take';'incredibly long';'|SL^(-5)(3,Z)|= 10 460 024'});
    end
end

set(handles.compute,'String',horzcat('<HTML><FONT COLOR="black">Compute the <i>d</i><sub>',num2str(r),'</sub>-optimal lattice transformation</HTML>'));
guidata(hObject, handles);
    
function Result_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to Result (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in compute.
function compute_Callback(hObject, eventdata, handles)
set(handles.figure1, 'pointer', 'watch')
drawnow;

r=str2double(handles.r.String);
set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
% hObject    handle to compute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SL=handles.sl1.Value*1+handles.sl2.Value*2+handles.sl3.Value*3+handles.sl4.Value*4+handles.sl5.Value*5;
set(handles.variantlist,'String','Variant');
precision=6; %Precisions is set to 10^(-10)
Fi=inv([handles.xx; handles.yy;handles.zz]');
G=[handles.xx2; handles.yy2;handles.zz2]';
if r>0
    load(strcat('SL',num2str(SL),'.mat'));
    [m0,m1,Q]= findmin(r,B,Fi,G,precision);
    %size(B)
end
if r<0
    load(strcat('SL',num2str(SL),'i.mat'));
    [m0,m1,Q]= findmin(r,Bi,Fi,G,precision);
    %size(Bi)
end
s= optdef(Q,Fi,G);
handles.s=s;
handles.m0prev=num2str(round(m0,4));
handles.m0m1prev=num2str(round(m1-m0,4));

set(handles.Result,'Data',reshape(s(1,:),[3,3]));
ind=1;
[d1 d2]=size(s);
set(handles.variantlist,'Value',1); 
set(handles.variantlist,'String',cell(1,d1));
names = cell(1,d1);
for j=1:size(s)
         names{j} = horzcat('Variant ',num2str(j));
end
set(handles.variantlist,'String',names);
set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.MinDiffe,'String',handles.m0m1prev);
set(handles.MinDefe,'String',horzcat(num2str(round(m0,4))));


set(handles.figure1, 'pointer', 'arrow');
guidata(hObject, handles);


function variantlist_Callback(hObject, eventdata, handles)
% set(handles.Result,'Data',reshape(s(1,:),[3,3]));
% [d1 d2]=size(s);
% set(handles.variantlist,'String',cell(1,d1));
% names = cell(1,d1);
% for j=1:size(s)
%          names{j} = strcat('Variant_',num2str(j));
% end
% set(handles.variantlist,'String',names);
% 
dummy=handles.variantlist.Value;
set(handles.Result,'Data',reshape(handles.s(dummy,:),[3,3]));
guidata(hObject, handles);

function variantlist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to variantlist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double
a = str2double(get(hObject,'String'));
if isnan(a) || ~isreal(a)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.a.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar,'String','Update')
    set(handles.SubPar,'Enable','on')
end


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double
b = str2double(get(hObject,'String'));
if isnan(b) || ~isreal(b)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
    %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.b.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar,'String','Update')
    set(handles.SubPar,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_Callback(hObject, eventdata, handles)
% hObject    handle to typec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of typec as text
%        str2double(get(hObject,'String')) returns contents of typec as a double
c = str2double(get(hObject,'String'));
if isnan(c) || ~isreal(c)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
    %set(handles.SubPar,'String','Cannot plot f1')
    %set(handles.SubPar,'Enable','off')
    handles.c.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
    %
else 
    % Enable the Plot button with its original name
    set(handles.SubPar,'String','Update')
    set(handles.SubPar,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_Callback(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha as text
%        str2double(get(hObject,'String')) returns contents of alpha as a double
alpha = str2double(get(hObject,'String'));
if isnan(alpha) || ~isreal(alpha)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.alpha.String=90;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar,'String','Update')
    set(handles.SubPar,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beta_Callback(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beta as text
%        str2double(get(hObject,'String')) returns contents of beta as a double
beta = str2double(get(hObject,'String'));
if isnan(beta) || ~isreal(beta)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
    handles.beta.String=90;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar,'String','Update')
    set(handles.SubPar,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gamma_Callback(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gamma as text
%        str2double(get(hObject,'String')) returns contents of gamma as a double
gamma = str2double(get(hObject,'String'));
if isnan(gamma) || ~isreal(gamma)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
    handles.gamma.String=90;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar,'String','Update')
    set(handles.SubPar,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function gamma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --------------------------------------------------------------------

% --- Executes on button press in P1.
function P1_Callback(hObject, eventdata, handles)
% hObject    handle to P1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of P1
axes(handles.Parent)
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));

guidata(hObject, handles);

% --- Executes on button press in C1.
function C1_Callback(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of C1
axes(handles.Parent)
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);
guidata(hObject, handles);

handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));

guidata(hObject, handles);


% --- Executes on button press in I1.
function I1_Callback(hObject, eventdata, handles)
% hObject    handle to I1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of I1
axes(handles.Parent)
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);


% --- Executes on button press in F1.
function F1_Callback(hObject, eventdata, handles)
% hObject    handle to F1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in SubPar.
axes(handles.Parent)
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);



handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);

function SubPar_Callback(hObject, eventdata, handles)
% hObject    handle to SubPar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
%[X, Y, Z] = convType(0,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
%    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String))
if handles.LatPar.Value
    
    [X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
    type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    handles.v11.String=round(X(1),5);
    handles.v12.String=round(X(2),5);
    handles.v13.String=round(X(3),5);

    handles.v21.String=round(Y(1),5);
    handles.v22.String=round(Y(2),5);
    handles.v23.String=round(Y(3),5);

    handles.v31.String=round(Z(1),5);
    handles.v32.String=round(Z(2),5);
    handles.v33.String=round(Z(3),5);

    
elseif  handles.LatVec.Value
    v11=str2double(handles.v11.String);
    v12=str2double(handles.v12.String);
    v13=str2double(handles.v13.String);
    v21=str2double(handles.v21.String);
    v22=str2double(handles.v22.String);
    v23=str2double(handles.v23.String);
    v31=str2double(handles.v31.String);
    v32=str2double(handles.v32.String);
    v33=str2double(handles.v33.String);
    type=handles.I2.Value*2+handles.C2.Value*1+handles.F2.Value*3;
    X=[v11,v12,v13];
    Y=[v21,v22,v23];
    Z=[v31,v32,v33];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a.String=round(a,5);
    handles.b.String=round(b,5);
    handles.c.String=round(c,5);
    
    handles.alpha.String=round(alpha,5);
    handles.beta.String=round(beta,5);
    handles.gamma.String=round(gamma,5);
    

end
set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));


v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);

    
function v11_Callback(hObject, eventdata, handles)
% hObject    handle to v11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v11 as text
%        str2double(get(hObject,'String')) returns contents of v11 as a double
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v11.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end


% --- Executes during object creation, after setting all properties.
function v11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v12_Callback(hObject, eventdata, handles)
% hObject    handle to v12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v12.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v12 as text
%        str2double(get(hObject,'String')) returns contents of v12 as a double


% --- Executes during object creation, after setting all properties.
function v12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v13_Callback(hObject, eventdata, handles)
% hObject    handle to v13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v13.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v13 as text
%        str2double(get(hObject,'String')) returns contents of v13 as a double


% --- Executes during object creation, after setting all properties.
function v13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v21_Callback(hObject, eventdata, handles)
% hObject    handle to v21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v21.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v21 as text
%        str2double(get(hObject,'String')) returns contents of v21 as a double


% --- Executes during object creation, after setting all properties.
function v21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v22_Callback(hObject, eventdata, handles)
% hObject    handle to v22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v22.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v22 as text
%        str2double(get(hObject,'String')) returns contents of v22 as a double


% --- Executes during object creation, after setting all properties.
function v22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v23_Callback(hObject, eventdata, handles)
% hObject    handle to v23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v23.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v23 as text
%        str2double(get(hObject,'String')) returns contents of v23 as a double


% --- Executes during object creation, after setting all properties.
function v23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v31_Callback(hObject, eventdata, handles)
% hObject    handle to v31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v31.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v31 as text
%        str2double(get(hObject,'String')) returns contents of v31 as a double


% --- Executes during object creation, after setting all properties.
function v31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v32_Callback(hObject, eventdata, handles)
% hObject    handle to v32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v32.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v32 as text
%        str2double(get(hObject,'String')) returns contents of v32 as a double


% --- Executes during object creation, after setting all properties.
function v32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v33_Callback(hObject, eventdata, handles)
% hObject    handle to v33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v33.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec,'String','Update')
    set(handles.SubVec,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v33 as text
%        str2double(get(hObject,'String')) returns contents of v33 as a double


% --- Executes during object creation, after setting all properties.
function v33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end











% Hint: get(hObject,'Value') returns toggle state of F1


% --- Executes on button press in ShowPrim.
function ShowPrim_Callback(hObject, eventdata, handles)
% hObject    handle to ShowPrim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
%[X, Y, Z] = convType(0,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
%    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String))
if handles.LatPar.Value
    
    [X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
    type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    
    handles.v11.String=round(X(1),5);
    handles.v12.String=round(X(2),5);
    handles.v13.String=round(X(3),5);

    handles.v21.String=round(Y(1),5);
    handles.v22.String=round(Y(2),5);
    handles.v23.String=round(Y(3),5);

    handles.v31.String=round(Z(1),5);
    handles.v32.String=round(Z(2),5);
    handles.v33.String=round(Z(3),5);

    
elseif  handles.LatVec.Value
    v11=str2double(handles.v11.String);
    v12=str2double(handles.v12.String);
    v13=str2double(handles.v13.String);
    v21=str2double(handles.v21.String);
    v22=str2double(handles.v22.String);
    v23=str2double(handles.v23.String);
    v31=str2double(handles.v31.String);
    v32=str2double(handles.v32.String);
    v33=str2double(handles.v33.String);
    type=handles.I2.Value*2+handles.C2.Value*1+handles.F2.Value*3;
    X=[v11,v12,v13];
    Y=[v21,v22,v23];
    Z=[v31,v32,v33];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a.String=round(a,5);
    handles.b.String=round(b,5);
    handles.c.String=round(c,5);
    
    handles.alpha.String=round(alpha,5);
    handles.beta.String=round(beta,5);
    handles.gamma.String=round(gamma,5);
    
end
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of ShowPrim


% --- Executes on button press in cub.
function cub_Callback(hObject, eventdata, handles)
% hObject    handle to cub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
set(handles.a,'Enable','on');
set(handles.b,'Enable','off');
set(handles.c,'Enable','off');
set(handles.alpha,'Enable','off');
set(handles.beta,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.C1,'Enable','off');
set(handles.I1,'Enable','on');
set(handles.F1,'Enable','on');
if handles.C1.Value 
    set(handles.P1,'Value',1);
end
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);


set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end
set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));



guidata(hObject, handles);
%lattice =handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value
% Hint: get(hObject,'Value') returns toggle state of cub


% --- Executes on button press in rho.
function rho_Callback(hObject, eventdata, handles)
axes(handles.Parent)
set(handles.a,'Enable','on');
set(handles.b,'Enable','off');
set(handles.c,'Enable','off');
set(handles.alpha,'Enable','on');
set(handles.beta,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.C1,'Enable','off');
set(handles.I1,'Enable','off');
set(handles.F1,'Enable','off');
set(handles.P1,'Value',1);
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));



guidata(hObject, handles);

% --- Executes on button press in tet.
function tet_Callback(hObject, eventdata, handles)
axes(handles.Parent)
set(handles.a,'Enable','on');
set(handles.b,'Enable','on');
set(handles.c,'Enable','off');
set(handles.alpha,'Enable','off');
set(handles.beta,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.C1,'Enable','off');
set(handles.I1,'Enable','on');
set(handles.F1,'Enable','off');
if handles.C1.Value 
    set(handles.P1,'Value',1);
end
if handles.F1.Value 
    set(handles.P1,'Value',1);
end
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);

% --- Executes on button press in ort.
function ort_Callback(hObject, eventdata, handles)
axes(handles.Parent)
set(handles.a,'Enable','on');
set(handles.b,'Enable','on');
set(handles.c,'Enable','on');
set(handles.alpha,'Enable','off');
set(handles.beta,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.C1,'Enable','on');
set(handles.I1,'Enable','on');
set(handles.F1,'Enable','on');
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);



% --- Executes on button press in mon.
function mon_Callback(hObject, eventdata, handles)
axes(handles.Parent)
set(handles.a,'Enable','on');
set(handles.b,'Enable','on');
set(handles.c,'Enable','on');
set(handles.alpha,'Enable','off');
set(handles.beta,'Enable','on');
set(handles.gamma,'Enable','off');
set(handles.C1,'Enable','on');
set(handles.I1,'Enable','off');
set(handles.F1,'Enable','off');
if handles.I1.Value 
    set(handles.P1,'Value',1);
end
if handles.F1.Value 
    set(handles.P1,'Value',1);
end
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);



% --- Executes on button press in tri.
function tri_Callback(hObject, eventdata, handles)
axes(handles.Parent)
set(handles.a,'Enable','on');
set(handles.b,'Enable','on');
set(handles.c,'Enable','on');
set(handles.alpha,'Enable','on');
set(handles.beta,'Enable','on');
set(handles.gamma,'Enable','on');
set(handles.C1,'Enable','off');
set(handles.I1,'Enable','off');
set(handles.F1,'Enable','off');
set(handles.P1,'Value',1);
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);




% --- Executes on button press in LatPar.
function LatPar_Callback(hObject, eventdata, handles)
% hObject    handle to LatPar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)

type=handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value;
set(handles.SubVec,'Enable','off');
set(handles.SubPar,'Enable','on');


   
set(handles.v11,'Enable','off');
set(handles.v12,'Enable','off');
set(handles.v13,'Enable','off');
set(handles.v21,'Enable','off');
set(handles.v22,'Enable','off');
set(handles.v23,'Enable','off');
set(handles.v31,'Enable','off');
set(handles.v32,'Enable','off');
set(handles.v33,'Enable','off');

set(handles.cub,'Enable','on');
set(handles.tri,'Enable','on');
set(handles.rho,'Enable','on');
set(handles.ort,'Enable','on');
set(handles.mon,'Enable','on');
set(handles.tet,'Enable','on');

if type==0
    set(handles.a,'Enable','on');
    set(handles.b,'Enable','off');
    set(handles.c,'Enable','off');
    set(handles.alpha,'Enable','off');
    set(handles.beta,'Enable','off');
    set(handles.gamma,'Enable','off');
    set(handles.P1,'Enable','on');
    set(handles.C1,'Enable','off');
    set(handles.I1,'Enable','on');
    set(handles.F1,'Enable','on');
elseif type ==1
    set(handles.a,'Enable','on');
    set(handles.b,'Enable','off');
    set(handles.c,'Enable','off');
    set(handles.alpha,'Enable','on');
    set(handles.beta,'Enable','off');
    set(handles.gamma,'Enable','off');
    set(handles.P1,'Enable','on');
    set(handles.C1,'Enable','off');
    set(handles.I1,'Enable','off');
    set(handles.F1,'Enable','off');
elseif type ==2
    set(handles.a,'Enable','on');
    set(handles.b,'Enable','on');
    set(handles.c,'Enable','off');
    set(handles.alpha,'Enable','off');
    set(handles.beta,'Enable','off');
    set(handles.gamma,'Enable','off');
    set(handles.P1,'Enable','on');
    set(handles.C1,'Enable','off');
    set(handles.I1,'Enable','on');
    set(handles.F1,'Enable','off');
elseif type ==3
    set(handles.a,'Enable','on');
    set(handles.b,'Enable','on');
    set(handles.c,'Enable','on');
    set(handles.alpha,'Enable','off');
    set(handles.beta,'Enable','off');
    set(handles.gamma,'Enable','off');
    set(handles.P1,'Enable','on');
    set(handles.C1,'Enable','on');
    set(handles.I1,'Enable','on');
    set(handles.F1,'Enable','on');
elseif type ==4
    set(handles.a,'Enable','on');
    set(handles.b,'Enable','on');
    set(handles.c,'Enable','on');
    set(handles.alpha,'Enable','off');
    set(handles.beta,'Enable','on');
    set(handles.gamma,'Enable','off');
    set(handles.P1,'Enable','on');
    set(handles.C1,'Enable','on');
    set(handles.I1,'Enable','off');
    set(handles.F1,'Enable','off');
elseif type ==5
    set(handles.a,'Enable','on');
    set(handles.b,'Enable','on');
    set(handles.c,'Enable','on');
    set(handles.alpha,'Enable','on');
    set(handles.beta,'Enable','on');
    set(handles.gamma,'Enable','on');
    set(handles.P1,'Enable','on');
    set(handles.C1,'Enable','off');
    set(handles.I1,'Enable','off');
    set(handles.F1,'Enable','off');
end



% Hint: get(hObject,'Value') returns toggle state of LatPar
set(handles.P2,'Enable','off');
set(handles.C2,'Enable','off');
set(handles.I2,'Enable','off');
set(handles.F2,'Enable','off');
set(handles.P2,'Value',1);

% --- Executes on button press in LatVec.
function LatVec_Callback(hObject, eventdata, handles)
axes(handles.Parent)
set(handles.SubPar,'Enable','off');
set(handles.SubVec,'Enable','on');
set(handles.a,'Enable','off');
set(handles.b,'Enable','off');
set(handles.c,'Enable','off');
set(handles.alpha,'Enable','off');
set(handles.beta,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.P1,'Enable','off');
set(handles.C1,'Enable','off');
set(handles.I1,'Enable','off');
set(handles.F1,'Enable','off');

set(handles.cub,'Enable','off');
set(handles.tri,'Enable','off');
set(handles.rho,'Enable','off');
set(handles.ort,'Enable','off');
set(handles.mon,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.tet,'Enable','off');
set(handles.v11,'Enable','on');
set(handles.v12,'Enable','on');
set(handles.v13,'Enable','on');
set(handles.v21,'Enable','on');
set(handles.v22,'Enable','on');
set(handles.v23,'Enable','on');
set(handles.v31,'Enable','on');
set(handles.v32,'Enable','on');
set(handles.v33,'Enable','on');

set(handles.P2,'Enable','on');
set(handles.C2,'Enable','on');
set(handles.I2,'Enable','on');
set(handles.F2,'Enable','on');

set(handles.P1,'Value',1);
% hObject    handle to LatVec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LatVec


% --- Executes on button press in P2.
function P2_Callback(hObject, eventdata, handles)
% hObject    handle to P2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
%[X, Y, Z] = convType(0,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
%    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String))
if handles.LatPar.Value
    
    [X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
    type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    handles.v11.String=round(X(1),5);
    handles.v12.String=round(X(2),5);
    handles.v13.String=round(X(3),5);

    handles.v21.String=round(Y(1),5);
    handles.v22.String=round(Y(2),5);
    handles.v23.String=round(Y(3),5);

    handles.v31.String=round(Z(1),5);
    handles.v32.String=round(Z(2),5);
    handles.v33.String=round(Z(3),5);
elseif  handles.LatVec.Value
    v11=str2double(handles.v11.String);
    v12=str2double(handles.v12.String);
    v13=str2double(handles.v13.String);
    v21=str2double(handles.v21.String);
    v22=str2double(handles.v22.String);
    v23=str2double(handles.v23.String);
    v31=str2double(handles.v31.String);
    v32=str2double(handles.v32.String);
    v33=str2double(handles.v33.String);
    type=handles.I2.Value*2+handles.C2.Value*1+handles.F2.Value*3;
    X=[v11,v12,v13];
    Y=[v21,v22,v23];
    Z=[v31,v32,v33];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a.String=round(a,5);
    handles.b.String=round(b,5);
    handles.c.String=round(c,5);
    
    handles.alpha.String=round(alpha,5);
    handles.beta.String=round(beta,5);
    handles.gamma.String=round(gamma,5);  
end
set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of P2


% --- Executes on button press in C2.
function C2_Callback(hObject, eventdata, handles)
% hObject    handle to C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
%[X, Y, Z] = convType(0,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
%    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String))
if handles.LatPar.Value
    
    [X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
    type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    
    handles.v11.String=round(X(1),5);
    handles.v12.String=round(X(2),5);
    handles.v13.String=round(X(3),5);

    handles.v21.String=round(Y(1),5);
    handles.v22.String=round(Y(2),5);
    handles.v23.String=round(Y(3),5);

    handles.v31.String=round(Z(1),5);
    handles.v32.String=round(Z(2),5);
    handles.v33.String=round(Z(3),5);

    
elseif  handles.LatVec.Value
    v11=str2double(handles.v11.String);
    v12=str2double(handles.v12.String);
    v13=str2double(handles.v13.String);
    v21=str2double(handles.v21.String);
    v22=str2double(handles.v22.String);
    v23=str2double(handles.v23.String);
    v31=str2double(handles.v31.String);
    v32=str2double(handles.v32.String);
    v33=str2double(handles.v33.String);
    type=handles.I2.Value*2+handles.C2.Value*1+handles.F2.Value*3;
    X=[v11,v12,v13];
    Y=[v21,v22,v23];
    Z=[v31,v32,v33];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a.String=round(a,5);
    handles.b.String=round(b,5);
    handles.c.String=round(c,5);
    
    handles.alpha.String=round(alpha,5);
    handles.beta.String=round(beta,5);
    handles.gamma.String=round(gamma,5);
    
end
set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of C2


% --- Executes on button press in I2.
function I2_Callback(hObject, eventdata, handles)
% hObject    handle to I2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
%[X, Y, Z] = convType(0,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
%    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String))
if handles.LatPar.Value
    
    [X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
    type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    
    handles.v11.String=round(X(1),5);
    handles.v12.String=round(X(2),5);
    handles.v13.String=round(X(3),5);

    handles.v21.String=round(Y(1),5);
    handles.v22.String=round(Y(2),5);
    handles.v23.String=round(Y(3),5);

    handles.v31.String=round(Z(1),5);
    handles.v32.String=round(Z(2),5);
    handles.v33.String=round(Z(3),5);

    
elseif  handles.LatVec.Value
    v11=str2double(handles.v11.String);
    v12=str2double(handles.v12.String);
    v13=str2double(handles.v13.String);
    v21=str2double(handles.v21.String);
    v22=str2double(handles.v22.String);
    v23=str2double(handles.v23.String);
    v31=str2double(handles.v31.String);
    v32=str2double(handles.v32.String);
    v33=str2double(handles.v33.String);
    type=handles.I2.Value*2+handles.C2.Value*1+handles.F2.Value*3;
    X=[v11,v12,v13];
    Y=[v21,v22,v23];
    Z=[v31,v32,v33];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a.String=round(a,5);
    handles.b.String=round(b,5);
    handles.c.String=round(c,5);
    
    handles.alpha.String=round(alpha,5);
    handles.beta.String=round(beta,5);
    handles.gamma.String=round(gamma,5);
    
end
set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of I2


% --- Executes on button press in F2.
function F2_Callback(hObject, eventdata, handles)
% hObject    handle to F2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
%[X, Y, Z] = convType(0,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
%    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String))
if handles.LatPar.Value
    
    [X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
    type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    
    handles.v11.String=round(X(1),5);
    handles.v12.String=round(X(2),5);
    handles.v13.String=round(X(3),5);

    handles.v21.String=round(Y(1),5);
    handles.v22.String=round(Y(2),5);
    handles.v23.String=round(Y(3),5);

    handles.v31.String=round(Z(1),5);
    handles.v32.String=round(Z(2),5);
    handles.v33.String=round(Z(3),5);

    
elseif  handles.LatVec.Value
    v11=str2double(handles.v11.String);
    v12=str2double(handles.v12.String);
    v13=str2double(handles.v13.String);
    v21=str2double(handles.v21.String);
    v22=str2double(handles.v22.String);
    v23=str2double(handles.v23.String);
    v31=str2double(handles.v31.String);
    v32=str2double(handles.v32.String);
    v33=str2double(handles.v33.String);
    type=handles.I2.Value*2+handles.C2.Value*1+handles.F2.Value*3;
    X=[v11,v12,v13];
    Y=[v21,v22,v23];
    Z=[v31,v32,v33];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a.String=round(a,5);
    handles.b.String=round(b,5);
    handles.c.String=round(c,5);
    
    handles.alpha.String=round(alpha,5);
    handles.beta.String=round(beta,5);
    handles.gamma.String=round(gamma,5);
    
end
set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of F2


% --- Executes on button press in SubVec.
function SubVec_Callback(hObject, eventdata, handles)
% hObject    handle to SubVec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent)
%[X, Y, Z] = convType(0,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
%    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String))
if handles.LatPar.Value
    
    [X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
    type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    handles.v11.String=round(X(1),5);
    handles.v12.String=round(X(2),5);
    handles.v13.String=round(X(3),5);

    handles.v21.String=round(Y(1),5);
    handles.v22.String=round(Y(2),5);
    handles.v23.String=round(Y(3),5);

    handles.v31.String=round(Z(1),5);
    handles.v32.String=round(Z(2),5);
    handles.v33.String=round(Z(3),5);

    
elseif  handles.LatVec.Value
    v11=str2double(handles.v11.String);
    v12=str2double(handles.v12.String);
    v13=str2double(handles.v13.String);
    v21=str2double(handles.v21.String);
    v22=str2double(handles.v22.String);
    v23=str2double(handles.v23.String);
    v31=str2double(handles.v31.String);
    v32=str2double(handles.v32.String);
    v33=str2double(handles.v33.String);
    type=handles.I2.Value*2+handles.C2.Value*1+handles.F2.Value*3;
    X=[v11,v12,v13];
    Y=[v21,v22,v23];
    Z=[v31,v32,v33];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx=X;
    handles.yy=Y;
    handles.zz=Z; guidata(hObject, handles);


    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a.String=round(a,5);
    handles.b.String=round(b,5);
    handles.c.String=round(c,5);
    
    handles.alpha.String=round(alpha,5);
    handles.beta.String=round(beta,5);
    handles.gamma.String=round(gamma,5);
    
end
if det([X;Y;Z])<0
    set(handles.SubVec,'String','Warning: Vectors have negative orientation')
elseif det([X;Y;Z])>0
    set(handles.SubVec,'String','Submit')
end
set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);

    












function a2_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double
a = str2double(get(hObject,'String'));
if isnan(a) || ~isreal(a)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its String to say why
     %set(handles.SubPar2,'String','Cannot update')
    %set(handles.SubPar2,'Enable','off')
    handles.a2.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar2,'String','Submit')
    set(handles.SubPar2,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function a2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double
b = str2double(get(hObject,'String'));
if isnan(b) || ~isreal(b)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its String to say why
    %set(handles.SubPar2,'String','Cannot update')
    %set(handles.SubPar2,'Enable','off')
    handles.b2.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar2,'String','Update')
    set(handles.SubPar2,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function b2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c2_Callback(hObject, eventdata, handles)
% hObject    handle to typec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of typec as text
%        str2double(get(hObject,'String')) returns contents of typec as a double
c = str2double(get(hObject,'String'));
if isnan(c) || ~isreal(c)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its String to say why
    %set(handles.SubPar2,'String','Cannot plot f1')
    %set(handles.SubPar2,'Enable','off')
    handles.c2.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
    %guidata(hObject, handles);
else 
    % Enable the Plot button with its original name
    set(handles.SubPar2,'String','Submit')
    set(handles.SubPar2,'Enable','on')
end
% --- Executes during object creation, after setting all properties.
function c2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha2_Callback(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha as text
%        str2double(get(hObject,'String')) returns contents of alpha as a double
alpha = str2double(get(hObject,'String'));
if isnan(alpha) || ~isreal(alpha)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its String to say why
     %set(handles.SubPar2,'String','Cannot update')
    %set(handles.SubPar2,'Enable','off')
    handles.alpha2.String=90;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar2,'String','Submit')
    set(handles.SubPar2,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function alpha2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beta2_Callback(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beta as text
%        str2double(get(hObject,'String')) returns contents of beta as a double
beta = str2double(get(hObject,'String'));
if isnan(beta) || ~isreal(beta)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its String to say why
    handles.beta2.String=90;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar2,'String','Submit')
    set(handles.SubPar2,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function beta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gamma2_Callback(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gamma as text
%        str2double(get(hObject,'String')) returns contents of gamma as a double
gamma = str2double(get(hObject,'String'));
if isnan(gamma) || ~isreal(gamma)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its String to say why
    handles.gamma2.String=90;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubPar2,'String','Submit')
    set(handles.SubPar2,'Enable','on')
end

% --- Executes during object creation, after setting all properties.
function gamma2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --------------------------------------------------------------------

% --- Executes on button press in P1.
function P12_Callback(hObject, eventdata, handles)
% hObject    handle to P1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of P1
axes(handles.Parent2)
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);



handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);

% --- Executes on button press in C1.
function C12_Callback(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of C1
axes(handles.Parent2)
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);


set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);

% --- Executes on button press in I1.
function I12_Callback(hObject, eventdata, handles)
% hObject    handle to I1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of I1
axes(handles.Parent2)
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);


% --- Executes on button press in F1.
function F12_Callback(hObject, eventdata, handles)
% hObject    handle to F1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in SubPar2.
axes(handles.Parent2)
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
cubeplot(X,Y,Z,type);
[X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));



guidata(hObject, handles);

function SubPar2_Callback(hObject, eventdata, handles)
% hObject    handle to SubPar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
%[X, Y, Z] = convType(0,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
%    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String))
if handles.LatPar2.Value
    
    [X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
    type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    handles.v112.String=round(X(1),5);
    handles.v122.String=round(X(2),5);
    handles.v132.String=round(X(3),5);

    handles.v212.String=round(Y(1),5);
    handles.v222.String=round(Y(2),5);
    handles.v232.String=round(Y(3),5);

    handles.v312.String=round(Z(1),5);
    handles.v322.String=round(Z(2),5);
    handles.v332.String=round(Z(3),5);

    
elseif  handles.LatVec2.Value
    v112=str2double(handles.v112.String);
    v122=str2double(handles.v122.String);
    v132=str2double(handles.v132.String);
    v212=str2double(handles.v212.String);
    v222=str2double(handles.v222.String);
    v232=str2double(handles.v232.String);
    v312=str2double(handles.v312.String);
    v322=str2double(handles.v322.String);
    v332=str2double(handles.v332.String);
    type=handles.I22.Value*2+handles.C22.Value*1+handles.F22.Value*3;
    X=[v112,v122,v132];
    Y=[v212,v222,v232];
    Z=[v312,v322,v332];
    if handles.ShowPrim.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);

    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a2.String=round(a,5);
    handles.b2.String=round(b,5);
    handles.c2.String=round(c,5);
    
    handles.alpha2.String=round(alpha,5);
    handles.beta2.String=round(beta,5);
    handles.gamma2.String=round(gamma,5);
    
end

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);


    


function v112_Callback(hObject, eventdata, handles)
% hObject    handle to v112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v112.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v112 as text
%        str2double(get(hObject,'String')) returns contents of v112 as a double


% --- Executes during object creation, after setting all properties.
function v112_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v122_Callback(hObject, eventdata, handles)
% hObject    handle to v122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v122.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v122 as text
%        str2double(get(hObject,'String')) returns contents of v122 as a double


% --- Executes during object creation, after setting all properties.
function v122_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v132_Callback(hObject, eventdata, handles)
% hObject    handle to v132 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v132.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v132 as text
%        str2double(get(hObject,'String')) returns contents of v132 as a double


% --- Executes during object creation, after setting all properties.
function v132_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v132 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v212_Callback(hObject, eventdata, handles)
% hObject    handle to v212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v212.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v212 as text
%        str2double(get(hObject,'String')) returns contents of v212 as a double


% --- Executes during object creation, after setting all properties.
function v212_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v222_Callback(hObject, eventdata, handles)
% hObject    handle to v222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v222.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v222 as text
%        str2double(get(hObject,'String')) returns contents of v222 as a double


% --- Executes during object creation, after setting all properties.
function v222_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v232_Callback(hObject, eventdata, handles)
% hObject    handle to v232 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v232.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v232 as text
%        str2double(get(hObject,'String')) returns contents of v232 as a double


% --- Executes during object creation, after setting all properties.
function v232_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v232 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v312_Callback(hObject, eventdata, handles)
% hObject    handle to v312 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v312.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v312 as text
%        str2double(get(hObject,'String')) returns contents of v312 as a double


% --- Executes during object creation, after setting all properties.
function v312_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v312 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v322_Callback(hObject, eventdata, handles)
% hObject    handle to v322 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v322.String=0;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v322 as text
%        str2double(get(hObject,'String')) returns contents of v322 as a double


% --- Executes during object creation, after setting all properties.
function v322_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v322 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v332_Callback(hObject, eventdata, handles)
% hObject    handle to v332 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(hObject,'String'));
if isnan(x) || ~isreal(x)  
    % isdouble returns NaN for non-numbers and f1 cannot be complex
    % Disable the Plot button and change its string to say why
     %set(handles.SubPar,'String','Cannot update')
    %set(handles.SubPar,'Enable','off')
    handles.v332.String=1;
    % Give the edit text box focus so user can correct the error
    uicontrol(hObject)
else 
    % Enable the Plot button with its original name
    set(handles.SubVec2,'String','Update')
    set(handles.SubVec2,'Enable','on')
end
% Hints: get(hObject,'String') returns contents of v332 as text
%        str2double(get(hObject,'String')) returns contents of v332 as a double


% --- Executes during object creation, after setting all properties.
function v332_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v332 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end











% Hint: get(hObject,'Value') returns toggle state of F1


% --- Executes on button press in ShowPrim.
function ShowPrim2_Callback(hObject, eventdata, handles)
% hObject    handle to ShowPrim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
%[X, Y, Z] = convType(0,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
%    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String))
if handles.LatPar2.Value
    
    [X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
    type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    handles.v112.String=round(X(1),5);
    handles.v122.String=round(X(2),5);
    handles.v132.String=round(X(3),5);

    handles.v212.String=round(Y(1),5);
    handles.v222.String=round(Y(2),5);
    handles.v232.String=round(Y(3),5);

    handles.v312.String=round(Z(1),5);
    handles.v322.String=round(Z(2),5);
    handles.v332.String=round(Z(3),5);

    
elseif  handles.LatVec2.Value
    v112=str2double(handles.v112.String);
    v122=str2double(handles.v122.String);
    v132=str2double(handles.v132.String);
    v212=str2double(handles.v212.String);
    v222=str2double(handles.v222.String);
    v232=str2double(handles.v232.String);
    v312=str2double(handles.v312.String);
    v322=str2double(handles.v322.String);
    v332=str2double(handles.v332.String);
    type=handles.I22.Value*2+handles.C22.Value*1+handles.F22.Value*3;
    X=[v112,v122,v132];
    Y=[v212,v222,v232];
    Z=[v312,v322,v332];
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
    
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);

    handles.a2.String=round(a,5);
    handles.b2.String=round(b,5);
    handles.c2.String=round(c,5);
    
    handles.alpha2.String=round(alpha,5);
    handles.beta2.String=round(beta,5);
    handles.gamma2.String=round(gamma,5);
    
end

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);


% Hint: get(hObject,'Value') returns toggle state of ShowPrim2


% --- Executes on button press in cub.
function cub2_Callback(hObject, eventdata, handles)
% hObject    handle to cub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
set(handles.a2,'Enable','on');
set(handles.b2,'Enable','off');
set(handles.c2,'Enable','off');
set(handles.alpha2,'Enable','off');
set(handles.beta2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.C12,'Enable','off');
set(handles.I12,'Enable','on');
set(handles.F12,'Enable','on');
if handles.C12.Value 
    set(handles.P12,'Value',1);
end
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim2.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));


v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);
%lattice =handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value
% Hint: get(hObject,'Value') returns toggle state of cub


% --- Executes on button press in rho2.
function rho2_Callback(hObject, eventdata, handles)
axes(handles.Parent2)
set(handles.a2,'Enable','on');
set(handles.b2,'Enable','off');
set(handles.c2,'Enable','off');
set(handles.alpha2,'Enable','on');
set(handles.beta2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.C12,'Enable','off');
set(handles.I12,'Enable','off');
set(handles.F12,'Enable','off');
set(handles.P12,'Value',1);
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim2.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));



guidata(hObject, handles);

% --- Executes on button press in tet2.
function tet2_Callback(hObject, eventdata, handles)
axes(handles.Parent2)
set(handles.a2,'Enable','on');
set(handles.b2,'Enable','on');
set(handles.c2,'Enable','off');
set(handles.alpha2,'Enable','off');
set(handles.beta2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.C12,'Enable','off');
set(handles.I12,'Enable','on');
set(handles.F12,'Enable','off');
if handles.C12.Value 
    set(handles.P12,'Value',1);
end
if handles.F12.Value 
    set(handles.P12,'Value',1);
end
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim2.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));



guidata(hObject, handles);

% --- Executes on button press in ort2.
function ort2_Callback(hObject, eventdata, handles)
axes(handles.Parent2)
set(handles.a2,'Enable','on');
set(handles.b2,'Enable','on');
set(handles.c2,'Enable','on');
set(handles.alpha2,'Enable','off');
set(handles.beta2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.C12,'Enable','on');
set(handles.I12,'Enable','on');
set(handles.F12,'Enable','on');
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim2.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));


v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end

set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);



% --- Executes on button press in mon2.
function mon2_Callback(hObject, eventdata, handles)
axes(handles.Parent2)
set(handles.a2,'Enable','on');
set(handles.b2,'Enable','on');
set(handles.c2,'Enable','on');
set(handles.alpha2,'Enable','off');
set(handles.beta2,'Enable','on');
set(handles.gamma2,'Enable','off');
set(handles.C12,'Enable','on');
set(handles.I12,'Enable','off');
set(handles.F12,'Enable','off');
if handles.I12.Value 
    set(handles.P12,'Value',1);
end
if handles.F12.Value 
    set(handles.P12,'Value',1);
end
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim2.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


guidata(hObject, handles);



% --- Executes on button press in tri2.
function tri2_Callback(hObject, eventdata, handles)
axes(handles.Parent2)
set(handles.a2,'Enable','on');
set(handles.b2,'Enable','on');
set(handles.c2,'Enable','on');
set(handles.alpha2,'Enable','on');
set(handles.beta2,'Enable','on');
set(handles.gamma2,'Enable','on');
set(handles.C12,'Enable','off');
set(handles.I12,'Enable','off');
set(handles.F12,'Enable','off');
set(handles.P12,'Value',1);
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim2.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));



guidata(hObject, handles);




% --- Executes on button press in LatPar2.
function LatPar2_Callback(hObject, eventdata, handles)
% hObject    handle to LatPar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)

type=handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value;
set(handles.SubVec2,'Enable','off');
set(handles.SubPar2,'Enable','on');


   
set(handles.v112,'Enable','off');
set(handles.v122,'Enable','off');
set(handles.v132,'Enable','off');
set(handles.v212,'Enable','off');
set(handles.v222,'Enable','off');
set(handles.v232,'Enable','off');
set(handles.v312,'Enable','off');
set(handles.v322,'Enable','off');
set(handles.v332,'Enable','off');

set(handles.cub2,'Enable','on');
set(handles.tri2,'Enable','on');
set(handles.rho2,'Enable','on');
set(handles.ort2,'Enable','on');
set(handles.mon2,'Enable','on');
set(handles.tet2,'Enable','on');

if type==0
    set(handles.a2,'Enable','on');
    set(handles.b2,'Enable','off');
    set(handles.c2,'Enable','off');
    set(handles.alpha2,'Enable','off');
    set(handles.beta2,'Enable','off');
    set(handles.gamma2,'Enable','off');
    set(handles.P12,'Enable','on');
    set(handles.C12,'Enable','off');
    set(handles.I12,'Enable','on');
    set(handles.F12,'Enable','on');
elseif type ==1
    set(handles.a2,'Enable','on');
    set(handles.b2,'Enable','off');
    set(handles.c2,'Enable','off');
    set(handles.alpha2,'Enable','on');
    set(handles.beta2,'Enable','off');
    set(handles.gamma2,'Enable','off');
    set(handles.P12,'Enable','on');
    set(handles.C12,'Enable','off');
    set(handles.I12,'Enable','off');
    set(handles.F12,'Enable','off');
elseif type ==2
    set(handles.a2,'Enable','on');
    set(handles.b2,'Enable','on');
    set(handles.c2,'Enable','off');
    set(handles.alpha2,'Enable','off');
    set(handles.beta2,'Enable','off');
    set(handles.gamma2,'Enable','off');
    set(handles.P12,'Enable','on');
    set(handles.C12,'Enable','off');
    set(handles.I12,'Enable','on');
    set(handles.F12,'Enable','off');
elseif type ==3
    set(handles.a2,'Enable','on');
    set(handles.b2,'Enable','on');
    set(handles.c2,'Enable','on');
    set(handles.alpha2,'Enable','off');
    set(handles.beta2,'Enable','off');
    set(handles.gamma2,'Enable','off');
    set(handles.P12,'Enable','on');
    set(handles.C12,'Enable','on');
    set(handles.I12,'Enable','on');
    set(handles.F12,'Enable','on');
elseif type ==4
    set(handles.a2,'Enable','on');
    set(handles.b2,'Enable','on');
    set(handles.c2,'Enable','on');
    set(handles.alpha2,'Enable','off');
    set(handles.beta2,'Enable','on');
    set(handles.gamma2,'Enable','off');
    set(handles.P12,'Enable','on');
    set(handles.C12,'Enable','on');
    set(handles.I12,'Enable','off');
    set(handles.F12,'Enable','off');
elseif type ==5
    set(handles.a2,'Enable','on');
    set(handles.b2,'Enable','on');
    set(handles.c2,'Enable','on');
    set(handles.alpha2,'Enable','on');
    set(handles.beta2,'Enable','on');
    set(handles.gamma2,'Enable','on');
    set(handles.P12,'Enable','on');
    set(handles.C12,'Enable','off');
    set(handles.I12,'Enable','off');
    set(handles.F12,'Enable','off');
end



% Hint: get(hObject,'Value') returns toggle state of LatPar
set(handles.P22,'Enable','off');
set(handles.C22,'Enable','off');
set(handles.I22,'Enable','off');
set(handles.F22,'Enable','off');
set(handles.P22,'Value',1);
guidata(hObject, handles);


% --- Executes on button press in LatVec2.
function LatVec2_Callback(hObject, eventdata, handles)
axes(handles.Parent2)
set(handles.SubPar2,'Enable','off');
set(handles.SubVec2,'Enable','on');
set(handles.a2,'Enable','off');
set(handles.b2,'Enable','off');
set(handles.c2,'Enable','off');
set(handles.alpha2,'Enable','off');
set(handles.beta2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.P12,'Enable','off');
set(handles.C12,'Enable','off');
set(handles.I12,'Enable','off');
set(handles.F12,'Enable','off');

set(handles.cub2,'Enable','off');
set(handles.tri2,'Enable','off');
set(handles.rho2,'Enable','off');
set(handles.ort2,'Enable','off');
set(handles.mon2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.tet2,'Enable','off');
set(handles.v112,'Enable','on');
set(handles.v122,'Enable','on');
set(handles.v132,'Enable','on');
set(handles.v212,'Enable','on');
set(handles.v222,'Enable','on');
set(handles.v232,'Enable','on');
set(handles.v312,'Enable','on');
set(handles.v322,'Enable','on');
set(handles.v332,'Enable','on');

set(handles.P22,'Enable','on');
set(handles.C22,'Enable','on');
set(handles.I22,'Enable','on');
set(handles.F22,'Enable','on');

set(handles.P12,'Value',1);
% hObject    handle to LatVec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LatVec
guidata(hObject, handles);

% --- Executes on button press in P2.
function P22_Callback(hObject, eventdata, handles)
% hObject    handle to P2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
%[X, Y, Z] = convType(0,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
%    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String))
if handles.LatPar2.Value
    
    [X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
    type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);

    handles.v112.String=round(X(1),5);
    handles.v122.String=round(X(2),5);
    handles.v132.String=round(X(3),5);

    handles.v212.String=round(Y(1),5);
    handles.v222.String=round(Y(2),5);
    handles.v232.String=round(Y(3),5);

    handles.v312.String=round(Z(1),5);
    handles.v322.String=round(Z(2),5);
    handles.v332.String=round(Z(3),5);

    
elseif  handles.LatVec2.Value
    v112=str2double(handles.v112.String);
    v122=str2double(handles.v122.String);
    v132=str2double(handles.v132.String);
    v212=str2double(handles.v212.String);
    v222=str2double(handles.v222.String);
    v232=str2double(handles.v232.String);
    v312=str2double(handles.v312.String);
    v322=str2double(handles.v322.String);
    v332=str2double(handles.v332.String);
    type=handles.I22.Value*2+handles.C22.Value*1+handles.F22.Value*3;
    X=[v112,v122,v132];
    Y=[v212,v222,v232];
    Z=[v312,v322,v332];
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a2.String=round(a,5);
    handles.b2.String=round(b,5);
    handles.c2.String=round(c,5);
    
    handles.alpha2.String=round(alpha,5);
    handles.beta2.String=round(beta,5);
    handles.gamma2.String=round(gamma,5);
    
end

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);


% Hint: get(hObject,'Value') returns toggle state of P2


% --- Executes on button press in C2.
function C22_Callback(hObject, eventdata, handles)
% hObject    handle to C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
%[X, Y, Z] = convType(0,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
%    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String))
if handles.LatPar2.Value
    
    [X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
    type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    handles.v112.String=round(X(1),5);
    handles.v122.String=round(X(2),5);
    handles.v132.String=round(X(3),5);

    handles.v212.String=round(Y(1),5);
    handles.v222.String=round(Y(2),5);
    handles.v232.String=round(Y(3),5);

    handles.v312.String=round(Z(1),5);
    handles.v322.String=round(Z(2),5);
    handles.v332.String=round(Z(3),5);

    
elseif  handles.LatVec2.Value
    v112=str2double(handles.v112.String);
    v122=str2double(handles.v122.String);
    v132=str2double(handles.v132.String);
    v212=str2double(handles.v212.String);
    v222=str2double(handles.v222.String);
    v232=str2double(handles.v232.String);
    v312=str2double(handles.v312.String);
    v322=str2double(handles.v322.String);
    v332=str2double(handles.v332.String);
    type=handles.I22.Value*2+handles.C22.Value*1+handles.F22.Value*3;
    X=[v112,v122,v132];
    Y=[v212,v222,v232];
    Z=[v312,v322,v332];
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a2.String=round(a,5);
    handles.b2.String=round(b,5);
    handles.c2.String=round(c,5);
    
    handles.alpha2.String=round(alpha,5);
    handles.beta2.String=round(beta,5);
    handles.gamma2.String=round(gamma,5);
   
end

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);


% Hint: get(hObject,'Value') returns toggle state of C2


% --- Executes on button press in I2.
function I22_Callback(hObject, eventdata, handles)
% hObject    handle to I2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
%[X, Y, Z] = convType(0,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
%    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String))
if handles.LatPar2.Value
    
    [X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
    type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    handles.v112.String=round(X(1),5);
    handles.v122.String=round(X(2),5);
    handles.v132.String=round(X(3),5);

    handles.v212.String=round(Y(1),5);
    handles.v222.String=round(Y(2),5);
    handles.v232.String=round(Y(3),5);

    handles.v312.String=round(Z(1),5);
    handles.v322.String=round(Z(2),5);
    handles.v332.String=round(Z(3),5);

    
elseif  handles.LatVec2.Value
    v112=str2double(handles.v112.String);
    v122=str2double(handles.v122.String);
    v132=str2double(handles.v132.String);
    v212=str2double(handles.v212.String);
    v222=str2double(handles.v222.String);
    v232=str2double(handles.v232.String);
    v312=str2double(handles.v312.String);
    v322=str2double(handles.v322.String);
    v332=str2double(handles.v332.String);
    type=handles.I22.Value*2+handles.C22.Value*1+handles.F22.Value*3;
    X=[v112,v122,v132];
    Y=[v212,v222,v232];
    Z=[v312,v322,v332];
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a2.String=round(a,5);
    handles.b2.String=round(b,5);
    handles.c2.String=round(c,5);
    
    handles.alpha2.String=round(alpha,5);
    handles.beta2.String=round(beta,5);
    handles.gamma2.String=round(gamma,5);
    
end

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);


% Hint: get(hObject,'Value') returns toggle state of I2


% --- Executes on button press in F2.
function F22_Callback(hObject, eventdata, handles)
% hObject    handle to F2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
%[X, Y, Z] = convType(0,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
%    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String))
if handles.LatPar2.Value
    
    [X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
    type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    handles.v112.String=round(X(1),5);
    handles.v122.String=round(X(2),5);
    handles.v132.String=round(X(3),5);

    handles.v212.String=round(Y(1),5);
    handles.v222.String=round(Y(2),5);
    handles.v232.String=round(Y(3),5);

    handles.v312.String=round(Z(1),5);
    handles.v322.String=round(Z(2),5);
    handles.v332.String=round(Z(3),5);

    
elseif  handles.LatVec2.Value
    v112=str2double(handles.v112.String);
    v122=str2double(handles.v122.String);
    v132=str2double(handles.v132.String);
    v212=str2double(handles.v212.String);
    v222=str2double(handles.v222.String);
    v232=str2double(handles.v232.String);
    v312=str2double(handles.v312.String);
    v322=str2double(handles.v322.String);
    v332=str2double(handles.v332.String);
    type=handles.I22.Value*2+handles.C22.Value*1+handles.F22.Value*3;
    X=[v112,v122,v132];
    Y=[v212,v222,v232];
    Z=[v312,v322,v332];
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);
    
    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a2.String=round(a,5);
    handles.b2.String=round(b,5);
    handles.c2.String=round(c,5);
    
    handles.alpha2.String=round(alpha,5);
    handles.beta2.String=round(beta,5);
    handles.gamma2.String=round(gamma,5);
    
end

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end


set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);


% Hint: get(hObject,'Value') returns toggle state of F2


% --- Executes on button press in SubVec2.
function SubVec2_Callback(hObject, eventdata, handles)
% hObject    handle to SubVec2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Parent2)
%[X, Y, Z] = convType(0,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
%    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String))
if handles.LatPar2.Value
    
    [X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
    type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);

    handles.v112.String=round(X(1),5);
    handles.v122.String=round(X(2),5);
    handles.v132.String=round(X(3),5);

    handles.v212.String=round(Y(1),5);
    handles.v222.String=round(Y(2),5);
    handles.v232.String=round(Y(3),5);

    handles.v312.String=round(Z(1),5);
    handles.v322.String=round(Z(2),5);
    handles.v332.String=round(Z(3),5);

    
elseif  handles.LatVec2.Value
    v112=str2double(handles.v112.String);
    v122=str2double(handles.v122.String);
    v132=str2double(handles.v132.String);
    v212=str2double(handles.v212.String);
    v222=str2double(handles.v222.String);
    v232=str2double(handles.v232.String);
    v312=str2double(handles.v312.String);
    v322=str2double(handles.v322.String);
    v332=str2double(handles.v332.String);
    type=handles.I22.Value*2+handles.C22.Value*1+handles.F22.Value*3;
    X=[v112,v122,v132];
    Y=[v212,v222,v232];
    Z=[v312,v322,v332];
    if handles.ShowPrim2.Value
        [X,Y,Z]=toprim(type,X,Y,Z);
        cubeplot(X,Y,Z,0);
    else
        cubeplot(X,Y,Z,type);
        [X,Y,Z]=toprim(type,X,Y,Z);
    end
    handles.xx2=X;
    handles.yy2=Y;
    handles.zz2=Z; guidata(hObject, handles);

    [a,b,c,alpha,beta,gamma] = ToPar(X(1),X(2),X(3),Y(1),Y(2),Y(3),Z(1),Z(2),Z(3));
        
    handles.a2.String=round(a,5);
    handles.b2.String=round(b,5);
    handles.c2.String=round(c,5);
    
    handles.alpha2.String=round(alpha,5);
    handles.beta2.String=round(beta,5);
    handles.gamma2.String=round(gamma,5);
    
end

set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end



if det([X;Y;Z])<0
    set(handles.SubVec2,'String','Warning: Vectors have negative orientation')
elseif det([X;Y;Z])>0
    set(handles.SubVec2,'String','Submit')
end

set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);

    




% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in sl1.
function sl1_Callback(hObject, eventdata, handles)
set(handles.sl1,'Value',1);
set(handles.WaSize,'String','');
v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
else
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
end
% hObject    handle to sl1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sl1


% --- Executes on button press in sl2.
function sl2_Callback(hObject, eventdata, handles)
set(handles.sl2,'Value',1);
set(handles.WaSize,'String','');
v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end
% hObject    handle to sl2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sl2


% --- Executes on button press in sl3.
function sl3_Callback(hObject, eventdata, handles)
set(handles.sl3,'Value',1);
if strcmp(handles.WaVol.String,'No warnings')
    set(handles.WaVol,'String','');
end
% hObject    handle to sl3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2double(handles.r.String)>0
    set(handles.WaSize,'String',{'Computation will take';'a long time';'|SL^3(3,Z)|= 640 824'});
else 
    set(handles.WaSize,'String',{'Computation will take';'a long time';'|SL^(-3)(3,Z)|= 640 824'});
end


% --- Executes when entered data in editable cell(s) in Result.

function sl4_Callback(hObject, eventdata, handles)
set(handles.sl4,'Value',1);
if strcmp(handles.WaVol.String,'No warnings')
    set(handles.WaVol,'String','');
end
if str2double(handles.r.String)>0
    set(handles.WaSize,'String',{'Computation will take';'a very long time';'|SL^4(3,Z)|= 2 597 208'});
else 
    set(handles.WaSize,'String',{'Computation will take';'a very long time';'|SL^(-4)(3,Z)|= 2 597 208'});
end


function sl5_Callback(hObject, eventdata, handles)
set(handles.sl5,'Value',1);
if strcmp(handles.WaVol.String,'No warnings')
    set(handles.WaVol,'String','');
end
if str2double(handles.r.String)>0
    set(handles.WaSize,'String',{'Computation will take';'incredibly long';'|SL^5(3,Z)|= 10 460 024'});
else 
    set(handles.WaSize,'String',{'Computation will take';'incredibly long';'|SL^(-5)(3,Z)|= 10 460 024'});
end


% --- Executes when entered data in editable cell(s) in Result.


% --- Executes on selection change in variantlist.

% hObject    handle to variantlist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns variantlist contents as cell array
%        contents{get(hObject,'Value')} returns selected item from variantlist


% --- Executes during object creation, after setting all properties.



% --- Executes during object creation, after setting all properties.



% --- Executes during object creation, after setting all properties.
function sl1_CreateFcn(hObject, eventdata, handles)
function sl2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sl2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function MinDefe_Callback(hObject, eventdata, handles)
% hObject    handle to MinDefe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MinDefe as text
%        str2double(get(hObject,'String')) returns contents of MinDefe as a double
set(handles.MinDefe,'String',handles.m0prev);


% --- Executes during object creation, after setting all properties.
function MinDefe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MinDefe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function MinDefe_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to MinDefe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function MinDiffe_Callback(hObject, eventdata, handles)
% hObject    handle to MinDiffe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MinDiffe as text
%        str2double(get(hObject,'String')) returns contents of MinDiffe as a double
set(handles.MinDiffe,'String',handles.m0m1prev);

% --- Executes during object creation, after setting all properties.
function MinDiffe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MinDiffe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --------------------------------------------------------------------
function uipushtool2_ClickedCallback(hObject, eventdata, handles)
% set up for fcc to bcc with r=1
%Reset everything

set(handles.SubPar,'String','Submit')
set(handles.SubPar2,'String','Submit')
set(handles.SubVec,'String','Submit')
set(handles.SubVec2,'String','Submit')

set(handles.ShowPrim,'Value',0);
set(handles.ShowPrim2,'Value',0);

set(handles.cub,'Value',1);
set(handles.cub2,'Value',1);
set(handles.a,'String','1');
set(handles.b,'String','1');
set(handles.c,'String','1');
set(handles.alpha,'String','90');
set(handles.beta,'String','90');
set(handles.gamma,'String','90');

set(handles.WaVol,'String','No warnings');
set(handles.WaVol,'ForegroundColor',[0 0 0]);
set(handles.WaSize,'String','');

set(handles.F1,'Value',1);

set(handles.a2,'String','0.7937');
set(handles.b2,'String','0.7937');
set(handles.c2,'String','0.7937');
set(handles.alpha2,'String','90');
set(handles.beta2,'String','90');
set(handles.gamma2,'String','90');

set(handles.LatPar,'Value',1);
set(handles.LatPar2,'Value',1);

set(handles.sl1,'String','1');
set(handles.sl2,'String','2');
set(handles.sl3,'String','3');
set(handles.sl4,'String','4');

set(handles.cub,'Value',1);
set(handles.cub2,'Value',1);

set(handles.a,'String','1');
set(handles.F1,'Value',1);

set(handles.a2,'String','0.7937');
set(handles.I12,'Value',1);

set(handles.r,'String','1');
set(handles.compute,'String',horzcat('<HTML><FONT COLOR="black">Compute the <i>d</i><sub>',num2str(1),'</sub>-optimal lattice transformation</HTML>'));
    
set(handles.sl2,'Value',1);

%set up upper part

axes(handles.Parent)
set(handles.SubVec,'Enable','off');
set(handles.SubPar,'Enable','on');
set(handles.v11,'Enable','off');
set(handles.v12,'Enable','off');
set(handles.v13,'Enable','off');
set(handles.v21,'Enable','off');
set(handles.v22,'Enable','off');
set(handles.v23,'Enable','off');
set(handles.v31,'Enable','off');
set(handles.v32,'Enable','off');
set(handles.v33,'Enable','off');

set(handles.P1,'Enable','on');
set(handles.C1,'Enable','on');
set(handles.I1,'Enable','on');
set(handles.F1,'Enable','on');

set(handles.cub,'Enable','on');
set(handles.tri,'Enable','on');
set(handles.rho,'Enable','on');
set(handles.ort,'Enable','on');
set(handles.mon,'Enable','on');
set(handles.gamma,'Enable','on');
set(handles.tet,'Enable','on');
% Hint: get(hObject,'Value') returns toggle state of LatPar
set(handles.P2,'Enable','off');
set(handles.C2,'Enable','off');
set(handles.I2,'Enable','off');
set(handles.F2,'Enable','off');
set(handles.P2,'Value',1);

set(handles.a,'Enable','on');
set(handles.b,'Enable','off');
set(handles.c,'Enable','off');
set(handles.alpha,'Enable','off');
set(handles.beta,'Enable','off');
set(handles.gamma,'Enable','off');
set(handles.C1,'Enable','off');
set(handles.I1,'Enable','on');
set(handles.F1,'Enable','on');
if handles.C1.Value 
    set(handles.P1,'Value',1);
end
[X, Y, Z] = convType(handles.rho.Value+2*handles.tet.Value+3*handles.ort.Value+4*handles.mon.Value+5*handles.tri.Value,str2double(handles.a.String),str2double(handles.b.String),str2double(handles.c.String),...
    str2double(handles.alpha.String),str2double(handles.beta.String),str2double(handles.gamma.String));
type=handles.I1.Value*2+handles.C1.Value*1+handles.F1.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx=X;
handles.yy=Y;
handles.zz=Z; guidata(hObject, handles);


handles.v11.String=round(X(1),5);
handles.v12.String=round(X(2),5);
handles.v13.String=round(X(3),5);

handles.v21.String=round(Y(1),5);
handles.v22.String=round(Y(2),5);
handles.v23.String=round(Y(3),5);

handles.v31.String=round(Z(1),5);
handles.v32.String=round(Z(2),5);
handles.v33.String=round(Z(3),5);



% Lower part initialisation


axes(handles.Parent2)
set(handles.SubVec2,'Enable','off');
set(handles.SubPar2,'Enable','on');
set(handles.v112,'Enable','off');
set(handles.v122,'Enable','off');
set(handles.v132,'Enable','off');
set(handles.v212,'Enable','off');
set(handles.v222,'Enable','off');
set(handles.v232,'Enable','off');
set(handles.v312,'Enable','off');
set(handles.v322,'Enable','off');
set(handles.v332,'Enable','off');

set(handles.P12,'Enable','on');
set(handles.C12,'Enable','on');
set(handles.I12,'Enable','on');
set(handles.F12,'Enable','on');

set(handles.cub2,'Enable','on');
set(handles.tri2,'Enable','on');
set(handles.rho2,'Enable','on');
set(handles.ort2,'Enable','on');
set(handles.mon2,'Enable','on');
set(handles.gamma2,'Enable','on');
set(handles.tet2,'Enable','on');
% Hint: get(hObject,'Value') returns toggle state of LatPar2
set(handles.P22,'Enable','off');
set(handles.C22,'Enable','off');
set(handles.I22,'Enable','off');
set(handles.F22,'Enable','off');
set(handles.P22,'Value',1);

set(handles.a2,'Enable','on');
set(handles.b2,'Enable','off');
set(handles.c2,'Enable','off');
set(handles.alpha2,'Enable','off');
set(handles.beta2,'Enable','off');
set(handles.gamma2,'Enable','off');
set(handles.C12,'Enable','off');
set(handles.I12,'Enable','on');
set(handles.F12,'Enable','on');
if handles.C12.Value 
    set(handles.P12,'Value',1);
end
[X, Y, Z] = convType(handles.rho2.Value+2*handles.tet2.Value+3*handles.ort2.Value+4*handles.mon2.Value+5*handles.tri2.Value,str2double(handles.a2.String),str2double(handles.b2.String),str2double(handles.c2.String),...
    str2double(handles.alpha2.String),str2double(handles.beta2.String),str2double(handles.gamma2.String));
type=handles.I12.Value*2+handles.C12.Value*1+handles.F12.Value*3;
if handles.ShowPrim.Value
    [X,Y,Z]=toprim(type,X,Y,Z);
    cubeplot(X,Y,Z,0);
else
    cubeplot(X,Y,Z,type);
    [X,Y,Z]=toprim(type,X,Y,Z);
end
handles.xx2=X;
handles.yy2=Y;
handles.zz2=Z; guidata(hObject, handles);

handles.v112.String=round(X(1),5);
handles.v122.String=round(X(2),5);
handles.v132.String=round(X(3),5);

handles.v212.String=round(Y(1),5);
handles.v222.String=round(Y(2),5);
handles.v232.String=round(Y(3),5);

handles.v312.String=round(Z(1),5);
handles.v322.String=round(Z(2),5);
handles.v332.String=round(Z(3),5);

% middle part inititalisation
set(handles.Result,'Data',cell(3));
set(handles.Result,'FontUnits','points');
%handles.s=zeros(1,9);

handles.m0prev='?';
handles.m0m1prev='?';




set(handles.UniVol,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx; handles.yy;handles.zz]))));
set(handles.UniVol2,'String',horzcat('Vol of primitive unit cell = ',num2str(det([handles.xx2; handles.yy2;handles.zz2]))));

v=abs(det([handles.xx2;handles.yy2;handles.zz2])/det([handles.xx;handles.yy;handles.zz]));
if volchangecrit(v)
    set(handles.WaVol,'String',{horzcat(num2str(volchange(v)),'% change in volume');' - consider taking sub-';'lattices with similar volumes'});
    set(handles.WaVol,'ForegroundColor',[0.6353    0.0784    0.1843]);
elseif strcmp(handles.WaSize.String,'')
    set(handles.WaVol,'String','No warnings');
    set(handles.WaVol,'ForegroundColor',[0 0 0]);
else
    set(handles.WaVol,'String','');
end

set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));


set(handles.MinDefe,'String',handles.m0prev);
set(handles.MinDiffe,'String',handles.m0m1prev);


guidata(hObject, handles);



% hObject    handle to uipushtool2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function anabound_Callback(hObject, eventdata, handles)
% hObject    handle to anabound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of anabound as text
%        str2double(get(hObject,'String')) returns contents of anabound as a double
set(handles.anabound,'String',num2str(...
sign(str2double(handles.r.String))*anbound(str2double(handles.r.String),handles.xx,handles.yy,handles.zz,handles.xx2,handles.yy2,handles.zz2)));
guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function anabound_CreateFcn(hObject, eventdata, handles)
% hObject    handle to anabound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sl5.

% hObject    handle to sl5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sl5


% --- Executes during object creation, after setting all properties.
function latex_gamma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to latex_gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes during object creation, after setting all properties.
function latex_beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to latex_beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
