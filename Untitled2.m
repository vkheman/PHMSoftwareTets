On = csvread('K:\\CALCE\\Collaborate\\Azarian\\Alstom\\FFD\\DOE (One at a Time) (Extended)\\DOEOneAtATimeExtendedLogConsolidated.csv',1,0);
One = csvread('K:\\CALCE\\Collaborate\\Azarian\\Alstom\\FFD\\DOE (One at a Time) (Extended)\\DOEOneAtATimeExtendedConsolidatedLog-Default.csv',0,0);
Two = csvread('K:\\CALCE\\Collaborate\\Azarian\\Alstom\\FFD\\DOE (One at a Time) (Extended)\\DOEOneAtATimeExtendedConsolidatedLog-0.001.csv',0,0);
Three = csvread('K:\\CALCE\\Collaborate\\Azarian\\Alstom\\FFD\\DOE (One at a Time) (Extended)\\DOEOneAtATimeExtendedConsolidatedLog-0.05.csv',0,0);
Four = csvread('K:\\CALCE\\Collaborate\\Azarian\\Alstom\\FFD\\DOE (One at a Time) (Extended)\\DOEOneAtATimeExtendedConsolidatedLog-0.005.csv',0,0);

ptpp = On(:,186);
ptpp1 = One(2:end,185);
ptpp2 = Two(2:end,185);
ptpp3 = Three(2:end,185);
ptpp4 = Four(2:end,186);

ntpp = One(1:end,191);
PTSP = One(1:end,196);
NTSP = One(1:end,201);
PRPP = One(1:end,206);
NRPP = One(1:end,211);
PRSP = One(1:end,216);
NRSP = One(1:end,221);
SECPTPP	= One(1:end,226);
SECPTSP	= One(1:end,227);
SECPRPP	= One(1:end,228);
SECPRSP = One(1:end,229);






resp1=[];
resp1 = ptpp1(1:16,1);
for i = 1:182 
    resp1=[resp1 ptpp1((i*16)+1:(i*16)+16,:)];
end

% resp1=[ptpp(1:16) resp1];
resp11=resp1';

resp2 = ntpp(1:16,1);
for i = 1:182 
    resp2=[resp2 ntpp((i*16)+1:(i*16)+16,:)];
end
resp2=resp2';

resp3 = PTSP(1:16,1);
for i = 1:182 
    resp3=[resp3 PTSP((i*16)+1:(i*16)+16,:)];
end
resp3=resp3';

resp4 = NTSP(1:16,1);
for i = 1:182 
    resp4=[resp4 NTSP((i*16)+1:(i*16)+16,:)];
end
resp4=resp4';

resp5 = PRPP(1:16,1);
for i = 1:182 
    resp5=[resp5 PRPP((i*16)+1:(i*16)+16,:)];
end
resp5=resp5';

resp6 = NRPP(1:16,1);
for i = 1:182 
    resp6=[resp6 NRPP((i*16)+1:(i*16)+16,:)];
end
resp6=resp6';

resp7 = PRSP(1:16,1);
for i = 1:182 
    resp7=[resp7 PRSP((i*16)+1:(i*16)+16,:)];
end
resp7=resp7';

resp8 = NRSP(1:16,1);
for i = 1:182 
    resp8=[resp8 NRSP((i*16)+1:(i*16)+16,:)];
end
resp8=resp8';

resp9 = SECPTPP(1:16,1);
for i = 1:182 
    resp9=[resp9 SECPTPP((i*16)+1:(i*16)+16,:)];
end
resp9=resp9';

resp10 = SECPTSP(1:16,1);
for i = 1:182 
    resp10=[resp10 SECPTSP((i*16)+1:(i*16)+16,:)];
end
resp10=resp10';

resp11 = SECPRPP(1:16,1);
for i = 1:182 
    resp11=[resp11 SECPRPP((i*16)+1:(i*16)+16,:)];
end
resp11=resp11';

resp12 = SECPRSP(1:16,1);
for i = 1:182 
    resp12=[resp12 SECPRSP((i*16)+1:(i*16)+16,:)];
end
resp12=resp12';

fileID = fopen('K:\\CALCE\\Collaborate\\Azarian\\Alstom\\FFD\\DOE (One at a Time) (Extended)\\LabelsC.csv');
label=textscan(fileID,'%s');
fclose(fileID);

labels={};
for i = 1:16
    labels(i,:)=(strsplit(label{1}{i},','));
end    
labelss=[];
labelss=reshape((labels),[1,2928])';
xax = [1:1:2928]';
hold on;
for i = 0:182
    figure
    %% BEFORE
%     plot(xax((i*16)+1:(i*16)+16)),ptpp1(((i*16)+1:(i*16)+16));
%     hold on;
%     plot(xax((i*16)+1:(i*16)+16)),ptpp2(((i*16)+1:(i*16)+16));
%     plot(xax((i*16)+1:(i*16)+16)),ptpp3(((i*16)+1:(i*16)+16));
%     plot(xax((i*16)+1:(i*16)+16)),ptpp4(((i*16)+1:(i*16)+16));

    %% after
    plot(xax((i*16)+1:(i*16)+16),ptpp1((i*16)+1:(i*16)+16));
    hold on;
    plot(xax((i*16)+1:(i*16)+16),ptpp2((i*16)+1:(i*16)+16));
    plot(xax((i*16)+1:(i*16)+16),ptpp3((i*16)+1:(i*16)+16));
    plot(xax((i*16)+1:(i*16)+16),ptpp4((i*16)+1:(i*16)+16));
    plot(xax((i*16)+1:(i*16)+16),ptpp((i*16)+1:(i*16)+16));

    legend('ptpp1','ptpp2','ptpp3','ptpp4','ptpp')
    set(gca,'xtick',[1:16],'xticklabel',labelss((i*16)+1:(i*16)+16))
%     hold off;
end
hold off;
