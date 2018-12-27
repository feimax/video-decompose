function [ O ] = rot270( I )
%ROT270 此处显示有关此函数的摘要
%   此处显示详细说明
O = rot90(rot90(rot90(I)));

end

