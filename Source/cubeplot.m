function handle = cubeplot(a,b,c,X)
if ~(isvector(a) & isvector(b) & isvector(c))  
    error('Input must be a vector')
end
cla
    
my_vertices = [0 0 0; b; a+b; a; c; b+c; a+b+c; a+c];
my_faces = [1 2 3 4; 2 6 7 3; 4 3 7 8; 1 5 8 4; 1 2 6 5; 5 6 7 8];
view(-37.5,30)
hold on;
grid on;
handle = patch('Vertices', my_vertices, 'Faces', my_faces, 'FaceColor', 'w', 'FaceAlpha',0.3, 'LineWidth',2.5, 'Marker', 'o', 'MarkerSize', 10);
if X==1
    Points=[a'/2+b'/2 a'/2+b'/2+c'];
    plot3(Points(1,:),Points(2,:),Points(3,:),'Marker','o','MarkerSize', 10,'LineWidth',2.5, 'LineStyle', 'none');
    hold off;
end
if X==2
    Points=[(a'+b'+c')/2];
    plot3(Points(1,:),Points(2,:),Points(3,:),'Marker','o','MarkerSize', 10,'LineWidth',2.5, 'LineStyle', 'none');
    hold off;
end
if X==3
    Points=1/2*[a'+b',a'+c',b'+c',b'+c'+2*a',b'+2*c'+a',2*b'+c'+a'];
    plot3(Points(1,:),Points(2,:),Points(3,:),'Marker','o','MarkerSize', 10,'LineWidth',2.5, 'LineStyle', 'none');
    hold off;
end
if X==0
    hold off;
end
end