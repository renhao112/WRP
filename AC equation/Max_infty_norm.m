function result = Max_infty_norm(vec1,vec2)
%the max l2 norn of the soultion
result = -1;
for i = 1:size(vec1,2)
    temp = norm(vec1(:,i)-vec2(:,i),Inf);
    if temp >result
        result = temp;
    end
end
end

