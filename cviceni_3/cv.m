clc; clear; format long G;
 uhelid = ['ABC';'BCA';'CAB']
uhel = [25 41 16.325;50 13 21.418;104 5 22.267];
% 
% %pokus
% fprintf('uhel %s = %f° %f'' %f''''\n',uhelid(1,:), uhel(1,:));
% fprintf('uhel %s = %d° %d'' %d''''\n',uhelid(2,:), uhel(2,:));
% fprintf('uhel %4s = %4d° %2d'' %5.2f''''\n\n',uhelid(3,:), uhel(3,:));
% 
% %efektne 1
% fprintf('uhel %4s = %4d° %2d'' %5.2f''''\n',uhelid(1,:), uhel(1,:));
% fprintf('uhel %4s = %4d° %2d'' %5.2f''''\n',uhelid(2,:), uhel(2,:));
% fprintf('uhel %4s = %4d° %2d'' %5.2f''''\n\n',uhelid(3,:), uhel(3,:));
% 
% %efektne 2
fprintf('uhel %4s = %4d° %.2d'' %5.2f''''\n',uhelid(1,:), uhel(1,:));
fprintf('uhel %4s = %4d° %.2d'' %5.2f''''\n',uhelid(2,:), uhel(2,:));
fprintf('uhel %4s = %4d° %.2d'' %5.2f''''\n\n',uhelid(3,:), uhel(3,:));
% 
% %výpis do promìné
% text = sprintf('uhel %4s = %4d° %.2d'' %5.2f''''\n\n',uhelid(3,:), uhel(3,:));

%jednoduche nacteni jednoduchy konsistentni text
load mereni.txt

%hezci vypis
fid = fopen('vypis.txt','w');
fprintf(fid,'%6.0f %6.2f %6.2f\n',mereni');

fclose(fid);
type vypis.txt