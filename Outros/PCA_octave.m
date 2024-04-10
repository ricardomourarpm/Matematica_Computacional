#Criar dados
X = [2 3;3 4;4 5;5 6;5 7;2 1;3 2;4 2;4 3;6 4;7 6];
c = [  1;  1;  1;  1;  1;  2;  2;  2;  2;  2;  2]; 
#identificar os vetores a quem atribuímos a classe 1 ou a classe 2
c1 = X(find(c==1),:)
c2 = X(find(c==2),:)
#criar o gráfico que associa os vetores à sua classe
figure;

p1 = plot(c1(:,1), c1(:,2), "ro", "markersize",10, "linewidth", 3); hold on;
p2 = plot(c2(:,1), c2(:,2), "go", "markersize",10, "linewidth", 3);

xlim([0 8])
ylim([0 8])

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

# desenhar os vetores próprios, ou seja, os novos eixos onde a média é a origem
# e os eixos são as componentes principais ortogonais
scale = 5
pc1 = line([mu(1) - scale * V(1,1) mu(1) + scale * V(1,1)], [mu(2) - scale * V(2,1) mu(2) + scale * V(2,1)]);
pc2 = line([mu(1) - scale * V(1,2) mu(1) + scale * V(1,2)], [mu(2) - scale * V(2,2) mu(2) + scale * V(2,2)]);

set(pc1, 'color', [1 0 0], "linestyle", "-")
set(pc2, 'color', [0 1 0], "linestyle", "-")

# A primeira componente (vermelho) é responsável por 85% da variância total
cumsum(D) / sum(D)

% project on pc1
z = Xm*V(:,1)
% and reconstruct it
p = z*V(:,1)'
p = bsxfun(@plus, p, mu)

% delete old plots
delete(p1);delete(p2);

y1 = p(find(c==1),:)
y2 = p(find(c==2),:)

p1 = plot(y1(:,1),y1(:,2),"ro", "markersize", 10, "linewidth", 3);
p2 = plot(y2(:,1), y2(:,2),"go", "markersize", 10, "linewidth", 3); 



% project on pc2
z = Xm*V(:,2)
% and reconstruct it
p = z*V(:,2)'
p = bsxfun(@plus, p, mu)

% delete old plots
delete(p1);delete(p2);

y1 = p(find(c==1),:)
y2 = p(find(c==2),:)

p1 = plot(y1(:,1),y1(:,2),"ro", "markersize", 10, "linewidth", 3);
p2 = plot(y2(:,1), y2(:,2),"go", "markersize", 10, "linewidth", 3); 
