% MultiPath.m
% 多径的影响

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function MultiPath=MultiPath(fdm,t,par)

% IEEE 802.16m Evaluation Methodlogy Document. P51. Table 20

% 1s=10^3 ms
% 1s=10^6 us
% 1s=10^9 ns
Delays = [0,0.040,0.040,0.045,0.050,0.06]; % unit:us，取了里面的6条径
% power(10,Power/10); % Power unit:dB
Powers = [1,power(10,-2.23),power(10,-2.56),power(10,-2.31),power(10,-2.59),power(10,-2.74)];
Path=0;
T=t*1e-3;
for i=1:6
% % fc=900MHz，载频
%        Path=Path+rayleigh(fdm,T+Delays(i))*Powers(i)*exp(-j*2*pi*0.9e9*Delays(i)*1e-6);
% fc=2.5GHz，载频
       Path=Path+rayleigh(fdm,T+Delays(i))*Powers(i)*exp(-j*2*pi* par.fc *Delays(i)*1e-6);
end
MultiPath=abs(Path); % watt







%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------