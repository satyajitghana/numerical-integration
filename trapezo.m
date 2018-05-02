for i=1:1:12
    f(i) = trapezoid(@(x) 1./(1+x.^2), i, 0, 1);
%f1(i) = simp38(@(x) 1./(1+x.^2), i*3, 0, 1)
end
j = 1;
for i =3:3:12
    f1(j) = simp38(@(x) 1./(1+x.^2), i*3, 0, 1)
    j = j + 1;
end

I = int(sym(@(x) 1./(1+x.^2)), 0, 1)
I2 = integral(@(x) 1./(1+x.^2), 0, 1)
I1 = quad(@(x) 1./(1+x.^2), 0, 1)
plot(1:1:12, I-f, 'LineWidth', 1.2);
hold on;
plot(3:3:12, I-f1, 'LineWidth', 1.2);
title('$ $ Error vs Number of Intervals', 'Interpreter', 'latex');