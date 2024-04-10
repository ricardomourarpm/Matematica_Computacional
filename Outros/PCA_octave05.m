#Criar dados
X = [2 3 1;3 4 2;4 5 1;5 6 2;5 7 1;2 1 2;3 2 3;4 2 3;4 3 1;6 4 1;7 6 1];
c = [  1;  1;  2;  3;  3;  1;  1;  3;  2;  1;  3]; 
#identificar os vetores a quem atribuímos a classe 1 ou a classe 2
c1 = X(find(c==1),:)
c2 = X(find(c==2),:)
c3 = X(find(c==3),:)
#criar o gráfico que associa os vetores à sua classe
figure;

p1 = plot3(c1(:,1), c1(:,2), c1(:,3), "ro", "markersize",10, "linewidth", 3); hold on;
p2 = plot3(c2(:,1), c2(:,2), c2(:,3), "go", "markersize",10, "linewidth", 3); hold on;
p3 = plot3(c3(:,1), c3(:,2), c3(:,3),"bo", "markersize",10, "linewidth", 3);


xlim([0 8])
ylim([0 8])
zlim([0 8])

#Repare-se que as duas classes podem ser separadas numa dimensão

mu = mean(X)
Xm = (X - mu)
%(X - mu)./std(X) se não estivessem 
C = cov(Xm)
[V,D] = eig(C)

#O último valor próprio é o valor próprio principal, ou seja, a primeira
# componente principal

# dispor descendente
[D, i] = sort(diag(D), 'descend');
V = V(:,i);


# A primeira componente (linha vermelha) é responsável por 85% da variância total
cumsum(D) / sum(D)



% project on pc1 and PC2
figure;
z = Xm*V(:,[1,2])
% and reconstruct it
p = z




y1 = p(find(c==1),:)
y2 = p(find(c==2),:)
y3 = p(find(c==3),:)

p1 = plot(y1(:,1),y1(:,2),"ro", "markersize", 10, "linewidth", 3); hold on;
p2 = plot(y2(:,1), y2(:,2),"go", "markersize", 10, "linewidth", 3); hold on;
p3 = plot(y3(:,1), y3(:,2),"bo", "markersize", 10, "linewidth", 3); 


% project on pc2 and pc3
figure;
z = Xm*V(:,[2,3])
% and reconstruct it
p = z;



y1 = p(find(c==1),:)
y2 = p(find(c==2),:)
y3 = p(find(c==3),:)

p1 = plot(y1(:,1),y1(:,2),"ro", "markersize", 10, "linewidth", 3); hold on;
p2 = plot(y2(:,1), y2(:,2),"go", "markersize", 10, "linewidth", 3); hold on;
p3 = plot(y3(:,1), y3(:,2),"bo", "markersize", 10, "linewidth", 3); 


