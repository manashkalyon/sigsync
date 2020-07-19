function [dstream,zstream] = forgen(Fs,T,dat)

 % --------Syntax---------
% % [dstream,zstream] = forgen(Fs,T,dat)
 % --------Descrip--------
% % Generates a T second Nx2 X-Y table of zeros, for sampling rate Fs
% % and concatenates it AFTER the end of the original datastream.
 % -----------------------
% % Transposes a signal leftward 


if istable(dat) == 1
    dat = table2array(dat);
end





Numzeros = Fs*T;
yz = zeros(floor(Numzeros),1);




dat(:,1) = dat(:,1) - T;

datx = dat(:,1);
xstream = datx(end)+1/Fs:1/Fs:(T+datx(end));



null_sig = [xstream' yz];

% Outputs %
dstream = dat;
zstream = null_sig;
end
