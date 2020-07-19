function [dstream,zstream] = gen(Fs,T,dat)

 % --------Syntax---------
% % [dstream,zstream] = gen(Fs,T,dat)
 % --------Descrip--------
% % Generates a T second Nx2 X-Y table of zeros, for sampling rate Fs
% % and concatenates it BEFORE the beginning of the original datastream.
 % -----------------------
% % Results in the addition of T seconds to a signal in the correct 
% % sampling rate.



if istable(dat) == 1
    dat = table2array(dat);
end
Numzeros = Fs*T;

yz = zeros(floor(Numzeros),1);

xstream = 1/Fs:1/Fs:T;
    

null_sig = [xstream' yz];

dat(:,1) = dat(:,1) + T;
dstream = dat;
zstream = null_sig;
end
