close all; clear all; clc;

P = 4;
lamda_m = 0.2;
rs = 3.4;
Lls = 1.1e-3;
Lms = 11e-3;
Lss = Lls + (3/2)*Lms;
n = 577.7;
wr = (n./60).*(2*pi).*(P/2);
Te = 1;
vdc = 72;

iqs = (2/3)*(2/P)*(Te/lamda_m);
ids = (wr.*Lss).*iqs/rs;

vqs = rs.*iqs + wr.*Lss.*ids + wr.*lamda_m;
vs = vqs/sqrt(2);

m_peak = (2*vqs)/vdc;

disp(m_peak)