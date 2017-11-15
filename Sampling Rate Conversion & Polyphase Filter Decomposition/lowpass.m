function Hd = lowpass
%LOWPASS Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.3 and DSP System Toolbox 9.5.
% Generated on: 06-Oct-2017 11:51:13

% Equiripple Lowpass filter designed using the FIRPM function.

% All frequency values are normalized to 1.

N     = 25;      % Order
Fpass = 0.4594;  % Passband Frequency
Fstop = 0.5513;  % Stopband Frequency
Wpass = 1;       % Passband Weight
Wstop = 0.1;     % Stopband Weight
dens  = 30;      % Density Factor

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, [0 Fpass Fstop 1], [1 1 0 0], [Wpass Wstop], {dens});
Hd = dfilt.dffir(b);

% [EOF]
