% ������������ ������� - a = �� (������ ����������), b = ������ (������
% ����������), x = u

%��� ���� a = ������ b, b = ������ c
function u=systemeqv(a,b);
multip_var = 1;
for i = 1:b
    multip_var = multip_var * randn;
end

%������ �������������� �������������
u=-a * log(multip_var);
return;