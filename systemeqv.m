% Относительно примера - b = мю (первая переменная), c = дельта (Вторая
% переменная), x = u

%Для меня a = фактор b, b = фактор c
function u=systemeqv(b,c);
multip_var = 1;
for i = 1:c
    multip_var = multip_var * randn;
end

%датчик логнормального распределения
u=-b * log(multip_var);
return;