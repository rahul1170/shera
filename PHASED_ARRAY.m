clc
clear all
% AMPLITUDE OF THE ARRIVING SIGNAL
A=2;
% ANGLE OF ARRIVAL OF THE SIGNAL
theta=30;
% FREQUENCY OF ARRIVING SIGNAL
f=9*10^9;
% VELOCITY OF LIGHT
c=3*10^8;
% WAVELENGTH OF SIGNAL
lemda=c./f;
% SEPERATION BETWEEN TWO ELEMENTS
d=lemda./2;
% SIX ELEMENTS ARRAY
i=1:6;
% PHASE SHIFT BETWEEN ELEMENTS
phi=cos(theta).*d.*i.*360./lemda;
% INSTANT OF TIME
t=1;
% OUTPUT OF THE SIX ANTENNA ELEMENTS
x = sin(2.*pi.*f.*t + phi);
INPUT=x';
p=pi/6;
OUTPUT=theta;
[V W] = BackPropAlgo_RAHUL(INPUT,OUTPUT);

theta=55;
phi=cos(theta).*d.*i.*360./lemda
x = sin(2.*pi.*f.*t + phi);
INPUT=x';
OUTPUT=55;
%CALCULATING THE OUTPUT FROM REAL DATA

Norm_Input = INPUT / max(abs(INPUT(:)));
Output_of_InputLayer = Norm_Input;
Input_of_HiddenLayer = V' * Output_of_InputLayer;
Output_of_HiddenLayer = 1./(1+exp(-Input_of_HiddenLayer));
Input_of_OutputLayer = W'*Output_of_HiddenLayer;
Output_of_OutputLayer = 1./(1+exp(-Input_of_OutputLayer));
Output=Output_of_OutputLayer*max(abs(OUTPUT(:)))