function [stat_value] = glcm_energy_0(window_details)

offset = [0 1];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);

glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));

glcm_asm = glcm_norm .^ 2;

asm_value = sum(sum(glcm_asm));
stat_value = sqrt(asm_value);

end