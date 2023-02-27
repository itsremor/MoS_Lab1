%Случайная величина, распределённая по закону распределения Эрланга

%Два фактора передаются в функцию
function u=systemeqv(b,c);
multip_var = 1;
for i = 1:c
    multip_var = multip_var * randn;
end

%датчик логнормального распределения
u=-b * log(multip_var);
return;
