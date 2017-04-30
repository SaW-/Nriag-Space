clc
clear
format long g

ge = 398600.8; % Earth gravitational constant
TWOPI = 2*pi;
MINUTES_PER_DAY = 1440.;
MINUTES_PER_DAY_SQUARED = (MINUTES_PER_DAY * MINUTES_PER_DAY);
MINUTES_PER_DAY_CUBED = (MINUTES_PER_DAY * MINUTES_PER_DAY_SQUARED);
% TLE file name 
fname = 'tle.txt';

% Open the TLE file and read TLE elements
fid = fopen(fname, 'r');

% 19-32	04236.56031392	Element Set Epoch (UTC)
% 3-7	25544	Satellite Catalog Number
% 9-16	51.6335	Orbit Inclination (degrees)
% 18-25	344.7760	Right Ascension of Ascending Node (degrees)
% 27-33	0007976	Eccentricity (decimal point assumed)
% 35-42	126.2523	Argument of Perigee (degrees)
% 44-51	325.9359	Mean Anomaly (degrees)
% 53-63	15.70406856	Mean Motion (revolutions/day)
% 64-68	32890	Revolution Number at Epoch

while (1)
    % read first line
    tline = fgetl(fid);
    if ~ischar(tline)
        break
    end
    satname = tline(1:3);
    tline = fgetl(fid);
    if ~ischar(tline)
        break
    end
    Cnum = tline(3:7);      			        % Catalog Number (NORAD)
    SC   = tline(8);					        % Security Classification
    ID   = tline(10:17);			            % Identification Number
    epoch = str2num(tline(19:32));             % Epoch
    epochyr  = str2num(tline(19:20));          epochyr1 = epochyr + 1900;
    epochdays = str2num(tline(21:33));
    TD1   = str2num(tline(34:43));              % first time derivative
    TD2   = str2num(tline(45:50));              % 2nd Time Derivative
    ExTD2 = tline(51:52);                       % Exponent of 2nd Time Derivative
    BStar = str2num(tline(54:59));              % Bstar/drag Term
    ExBStar = str2num(tline(60:61));            % Exponent of Bstar/drag Term
    BStar = BStar*1e-5*10^ExBStar;
    Etype = tline(63);                          % Ephemeris Type
    Enum  = str2num(tline(65:end));             % Element Number
    
    % read second line
    tline = fgetl(fid);
    if ~ischar(tline)
        break
    end
    i = str2num(tline(9:16));                   % Orbit Inclination (degrees)
    raan = str2num(tline(18:25));               % Right Ascension of Ascending Node (degrees)
    e = str2num(strcat('0.',tline(27:33)));     % Eccentricity
    omega = str2num(tline(35:42));              % Argument of Perigee (degrees)
    M = str2num(tline(44:51));                  % Mean Anomaly (degrees)
    no = str2num(tline(53:63));                 % Mean Motion
    a = ( ge/(no*2*pi/86400)^2 )^(1/3);         % semi major axis (m)
    rNo = str2num(tline(64:68));                % Revolution Number at Epoch
end
fclose(fid);

satdata.epoch = epoch;
satdata.norad_number = Cnum;
satdata.bulletin_number = ID;
satdata.classification = SC; % almost always 'U'
satdata.revolution_number = rNo;
satdata.ephemeris_type = Etype;
satdata.xmo = M * (pi/180);
satdata.xnodeo = raan * (pi/180);
satdata.omegao = omega * (pi/180);
satdata.xincl = i * (pi/180);
satdata.eo = e;
satdata.xno = no * TWOPI / MINUTES_PER_DAY;
satdata.xndt2o = TD1 * 1e-8 * TWOPI / MINUTES_PER_DAY_SQUARED;
satdata.xndd6o = TD2 * TWOPI / MINUTES_PER_DAY_CUBED;
satdata.bstar = BStar;
y0 =abs(epochyr1);
nn= epochdays;
f =y0-100*fix(y0/100);
j =y0-400*fix(y0/400);
g =y0-4*fix(y0/4);
if((y0 < 1582 & g==0) | (f==0 & j==0) | (f~=0 & g==0));
mes='leap year';
k=1;
else
mes='simple year';
k=2;
end
if(nn < 32);
d0=nn;
m0=1;
else
m0=fix(9*(k+nn)/275+0.98);
d0=nn-fix(275*m0/9)+k*fix((m0+9)/12)+30;
end
 % ----------------- find hours minutes and seconds ----------------------
       temp= (d0 -fix (d0 ))*24.0;
       hr  = fix( temp );
       temp= (temp-hr) * 60.0;
       min = fix( temp );
       sec = (temp-min) * 60.0;
       
year = y0;
mon = m0;
day = fix(d0);
hour = hr;
min = min;
sec = sec; 
rd2rm   = 1440.0 / (2.0*pi);
nrr=no/rd2rm;
pe= fix((2*pi/nrr)*60);
jd = juliandate([year,mon,day,hour,min,sec]);
fid = fopen('SatelliteStates results.txt','wt');
for tsince =0:360:pe;
[year,mon,day,hr,min,sec] = invjday(jd+tsince/86400);    
[pos, vel] = sgp4(tsince, satdata);
fprintf(fid,'"%g-%2.2d-%2.2dT%2.2d:%2.2d:%2.2fZ",',year,mon,day,hr,min,sec);
fprintf(fid,'%4.4f,%4.4f,%4.4f,\n',...
            pos(1)*1000,pos(2)*1000,pos(3)*1000);
end
fclose(fid);
%plot3(pos(1)/1000,pos(2)/1000,pos(3)/1000,'or')

fid = fopen('SatelliteStates results.txt','r');

i = 0;
while (~feof(fid))
    i = i+1;
    tline = fgetl(fid);
    rtascH =str2num(tline(26:37));
    rtascd =str2num(tline(40:49));
    rtascs =str2num(tline(54:60));
    asH(i,1)=rtascH;
    asH(i,2)=rtascd;
    asH(i,3)=rtascs;
end
nobs = i;
fclose(fid);
plot3(asH(:,1)/1000,asH(:,2)/1000,asH(:,3)/1000,'-k')
