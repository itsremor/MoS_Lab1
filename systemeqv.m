% Относительно примера - a = мю (первая переменная), b = дельта (Вторая
% переменная), x = u

%Для меня a = фактор b, b = фактор c
function u=systemeqv(a,b);
multip_var = 1;
for i = 1:b
    multip_var = multip_var * randn;
end

%датчик логнормального распределения
u=-a * log(multip_var);
return;