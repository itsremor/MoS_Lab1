% ������������ ������� - b = �� (������ ����������), c = ������ (������
% ����������), x = u

%��� ���� a = ������ b, b = ������ c
function u=systemeqv(b,c);
multip_var = 1;
for i = 1:c
    multip_var = multip_var * randn;
end

%������ �������������� �������������
u=-b * log(multip_var);
return;