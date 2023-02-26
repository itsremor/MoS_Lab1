%���������� �������� - 2 (������ �� ������� ������)
%��� ������� b (4;7) � c (2;7)
clear all;
nf=2;
minf=[4 2];
maxf=[7 7];
%������������ �������� �������������� ����� ������������
%��� ����� ��������������
fracfact('a b ab' );
N=2^nf;
fracplan=ans
fictfact=ones(N,1);
X=[fictfact ans]'
fraceks=zeros(N,nf);
for i=1:nf,
    for j=1:N,
fraceks(j,i)=minf(i)+(fracplan(j,i)+1)*(maxf(i)-minf(i))/2;
end;
end;
fraceks
%����������� ������������ ������������
%������� �������������� ��������� � ������ ����������
d_sigma=0.02;
alpha=0.05;
%����������� t-������������
tkr_alpha=norminv(1-alpha/2);
%����������� ���������� ����� ���������

NE=round(1+2*tkr_alpha^2/d_sigma^2)
%���� �� ������������ ������������� ��������������� �����
for j=1:N,
    a=fraceks(j,1); 
    b=fraceks(j,2);
    %���� �������������� ���������
    for k=1:NE,
        %�������� ���������������� �������
        u(k)=systemeqv(a,b);
    end;
    %������ ���������� (�������) �� ������� ����������
        mx=mean(u);
        DX=std(u)^2;
    Y(j)=DX;
end;
%����������� ������������� ���������
C=X*X';
b_=inv(C)*X*Y'
%������������ ����������� ������� ������� �� ���������
%�������� ��������
%0.1 - ������ ����
A=minf(1):0.1:maxf(1);
B=minf(2):0.1:maxf(2);
[k N1]=size(A);
[k N2]=size(B);
for i=1:N1,
    for j=1:N2,
        an(i)=2*(A(i)-minf(1))/(maxf(1)-minf(1))-1;
        bn(j)=2*(B(j)-minf(2))/(maxf(2)-minf(2))-1;
        %����������������� ����������� �������
    Yc(j,i)=b_(1)+an(i)*b_(2)+bn(j)*b_(3)+an(i)*bn(j)*b_(4);
end;
end;
for i=1:N1,
    for j=1:N2,
        %�������� ����������� �������
            Yo(j,i)=A(i)^2 * B(j);
end;
end;
% �������������� ������������ � ���������� ������� 
[x,y]=meshgrid(A,B);
figure;
subplot(1,2,1),plot3(x,y,Yc),
xlabel('fact a'),
ylabel('fact b'),
zlabel('Yc'),
title('System output'),
grid on,
subplot(1,2,2),plot3(x,y,Yo),
xlabel('fact a'),
ylabel('fact b'),
zlabel('Yo'),
title('System output'),
grid on;