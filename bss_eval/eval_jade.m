% ���·��
addpath('bss_eval')
% Դ�ź�
s1=wavread('data\s1.wav');
s2=wavread('data\s2.wav');
orig=[s1,s2]';

% �����ź�
se=wavread('data\jade_s1_est.wav');
se=se';

% �ֽ�
[s_target,e_interf,e_artif]=bss_decomp_gain(se,1,orig);

% ����sdr/sir/sar
[SDR,SIR,SAR]=bss_crit(s_target,e_interf,e_artif)