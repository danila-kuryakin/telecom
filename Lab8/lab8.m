clc;
clear all;
close all;

PRS=[1;  1;  1;  1;  1;  1; -1; -1; -1; -1;  1;  1;  1;  1; -1;  1;  1;  1; -1; -1; -1; -1;  1; -1;  1;  1; -1; -1;  1;  1; -1;  1;
          1; -1;  1;  1;  1;  1; -1;  1; -1; -1; -1; -1;  1;  1;  1; -1; -1;  1;  1; -1; -1; -1; -1;  1; -1; -1;  1; -1; -1; -1;  1; -1;
          1; -1;  1;  1;  1; -1;  1; -1;  1;  1;  1;  1; -1; -1;  1; -1; -1;  1; -1;  1;  1;  1; -1; -1;  1;  1;  1; -1; -1; -1; -1; -1;
         -1;  1;  1;  1; -1;  1;  1;  1; -1;  1; -1; -1;  1;  1;  1;  1; -1;  1; -1;  1; -1; -1;  1; -1;  1; -1; -1; -1; -1; -1; -1;  1;
         -1;  1; -1;  1; -1;  1; -1;  1;  1;  1;  1;  1; -1;  1; -1;  1;  1; -1;  1; -1; -1; -1; -1; -1;  1;  1; -1;  1;  1;  1; -1;  1;
          1; -1;  1;  1; -1;  1; -1;  1;  1; -1; -1; -1; -1; -1;  1; -1;  1;  1;  1; -1;  1;  1;  1;  1;  1; -1; -1; -1;  1;  1;  1;  1;
         -1; -1;  1;  1; -1;  1; -1; -1;  1;  1; -1;  1; -1;  1;  1;  1; -1; -1; -1;  1;  1; -1;  1; -1; -1; -1;  1; -1;  1;  1;  1;  1;
          1;  1;  1; -1;  1; -1; -1;  1; -1;  1;  1; -1; -1; -1;  1; -1;  1; -1; -1;  1;  1; -1; -1; -1;  1;  1; -1; -1; -1; -1; -1; -1;
         -1;  1;  1; -1; -1;  1;  1; -1; -1;  1; -1;  1; -1;  1;  1; -1; -1;  1; -1; -1;  1;  1;  1;  1;  1;  1; -1;  1;  1; -1;  1; -1;
         -1;  1; -1; -1;  1; -1; -1;  1;  1; -1;  1;  1;  1;  1;  1;  1; -1; -1;  1; -1;  1;  1; -1;  1; -1;  1; -1; -1; -1; -1;  1; -1;
          1; -1; -1; -1;  1; -1; -1;  1;  1;  1; -1;  1;  1; -1; -1;  1; -1;  1;  1;  1;  1; -1;  1;  1; -1; -1; -1; -1;  1;  1; -1;  1;
         -1;  1; -1;  1; -1; -1;  1;  1;  1; -1; -1;  1; -1; -1; -1; -1;  1;  1; -1; -1; -1;  1; -1; -1; -1; -1;  1; -1; -1; -1; -1; -1;
         -1; -1; -1;  1; -1; -1; -1;  1; -1; -1; -1;  1;  1; -1; -1;  1; -1; -1; -1;  1;  1;  1; -1;  1; -1;  1; -1;  1;  1; -1;  1;  1;
         -1; -1; -1;  1;  1;  1; -1; -1; -1;  1; -1; -1;  1; -1;  1; -1;  1; -1; -1; -1;  1;  1; -1;  1;  1; -1; -1;  1;  1;  1;  1;  1;
         -1; -1;  1;  1;  1;  1; -1; -1; -1;  1; -1;  1;  1; -1;  1;  1;  1; -1; -1;  1; -1;  1; -1; -1;  1; -1; -1; -1; -1; -1;  1; -1;
         -1;  1;  1; -1; -1;  1;  1;  1; -1;  1; -1; -1; -1;  1;  1;  1;  1;  1; -1;  1;  1;  1;  1; -1; -1; -1; -1; -1;  1;  1;  1  ];

 interleaver = [0; 133; 122; 111; 100; 89; 78; 67; 56; 45; 34; 23; 12; 1; 134; 123; 
	112; 101; 90; 79; 68; 57; 46; 35; 24; 13; 2; 135; 124; 113; 102; 91; 
	80; 69; 58; 47; 36; 25; 14; 3; 136; 125; 114; 103; 92; 81; 70; 59; 
	48; 37; 26; 15; 4; 137; 126; 115; 104; 93; 82; 71; 60; 49; 38; 27; 
	16; 5; 138; 127; 116; 105; 94; 83; 72; 61; 50; 39; 28; 17; 6; 139; 
	128; 117; 106; 95; 84; 73; 62; 51; 40; 29; 18; 7; 140; 129; 118; 107; 
	96; 85; 74; 63; 52; 41; 30; 19; 8; 141; 130; 119; 108; 97; 86; 75; 
	64; 53; 42; 31; 20; 9; 142; 131; 120; 109; 98; 87; 76; 65; 54; 43; 
	32; 21; 10; 143; 132; 121; 110; 99; 88; 77; 66; 55; 44; 33; 22; 11];

file=fopen('test.sig', 'r');
IQ_record = fread(file, 'int16');
fclose(file);

if(size(IQ_record,1)>8268)


else
    IQ_record= IQ_record(81:end)';
end

re_part = IQ_record(1:2:end);
im_part = IQ_record(2:2:end);

IQ_record = complex(re_part,im_part);

IQ_record = IQ_record(1:2:end);

IQ = pskdemod(IQ_record,2);

for u=1:1:length(IQ)
     if (IQ(u)==0)
         IQ(u)=-1;
     else IQ(u)=1;
     end;
end;

signal_to_demodulate2=IQ(length(PRS)+1:end);
signal_to_demodulate1=signal_to_demodulate2./[PRS' PRS' PRS' PRS(1:3)'];

% Walsh matrix generation by Hadamard matrix index rearrangement
 % http://www.mathworks.com/help/signal/examples/discrete-walsh-hadamard-transform.html
 N=64;
 hadamardMatrix=hadamard(N);

 HadIdx = 0:N-1;                          % Hadamard index
 M = log2(N)+1;  
 
 binHadIdx = fliplr(dec2bin(HadIdx,M))-'0'; % Bit reversing of the binary index
 binSeqIdx = zeros(N,M-1);                  % Pre-allocate memory
for k = M:-1:2
    % Binary sequency index
    binSeqIdx(:,k) = xor(binHadIdx(:,k),binHadIdx(:,k-1));
end
SeqIdx = binSeqIdx*pow2((M-1:-1:0)');    % Binary to integer sequency index
walshMatrix = hadamardMatrix(SeqIdx+1,:); % 1-based indexing
 %*******************************************************

 signal2=reshape(signal_to_demodulate1,[64 24])';
 
 for j=1:1:size(signal2,1)
 for i=1:1:length(walshMatrix)
     if(walshMatrix(i,:)==signal2(j,:))
         Walsh_row_number(j)=i;
     end
 end
 end
 Walsh_row_number;
 for i=1:1:24
    line(i,1:6)= de2bi( Walsh_row_number(i)-1,6);
    line(i,1:6)=line(i,end:-1:1);
 end;

sig=reshape(line',[1 144]);

for i=1:1:144
    sig2(interleaver(i)+1)=sig(i);
end

tr1=poly2trellis(9,[753 561]);
tblen=9;
decode_packet=vitdec(sig2,tr1,9,'cont','hard');
msg=[0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0 1 0 1 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
[n1,r1] = biterr(decode_packet(tblen+1:end),msg(1:end-tblen))