function cylinder = select_cylinders(cylinder,Ind)

Names = fieldnames(cylinder);
% here >
Names = Names(Names ~= "CylsInSegment");
% < here
n = size(Names,1);
for i = 1:n
    cylinder.(Names{i}) = cylinder.(Names{i})(Ind,:);
end
