function [ imgs ] = turnFilesToPics( ~ )

fid = fopen('ml14fall_train.dat');
i = 1;
while 1
    i
    line = fgetl(fid);  % �C��Ū�i�@�� (�@�Ӧr)
    if ~ischar(line), break, end    % if�w�gŪ������ɮ�, ���X�j��
    cat = sscanf(line, '%s', 1);  % Ū�i�C��}�Y����������
    imgs(i).label = cat;
    imgs(i).image = turnToPic(line(length(cat)+1:length(line)));    % ��������ҥH�~��data��ifunction�ন��
    i = i+1;
end
fclose(fid);

end

