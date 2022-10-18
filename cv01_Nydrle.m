clear
close all
clc

% 01
a=1:50

% 02
b=1:0.2:10

% 03
A=ones(3)
B=zeros(size(A))
D=eye(size(A))

% 04
M = [A;B;D]

% 05
C=[1 -1 1;
   1 -1 0;
   -1 0 1]

% 06
B1 = inv(C)

% 07
C.*B1 % po prvcích
C*B1 % maticově

% 08
M*C'

% 09
C(:,2) = randn([3 1])

% 10
C(1,:) = [-4.2, 0, 5]

% 11
C1 = C(1,[end-1:end])

% 12
C(C>=0) = 1
C(C<0)=randn(size(C(C<0)))