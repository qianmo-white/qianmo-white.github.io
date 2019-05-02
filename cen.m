%求形心坐标 x0
for i = data(:,1)
    switch i
        case i < 1200
        case i < 1345 && i >= 1200
        case i < 1600 && i >= 1345
        case i < 1750 && i >= 1600
        case i < 2362 && i >= 1750
        otherwise
    end     
end

%求形心坐标y0
for i = data(:,1)
    switch i
        case i < 1200
        case i < 1345 && i >= 1200
        case i < 1600 && i >= 1345
        case i < 1750 && i >= 1600
        case i < 2362 && i >= 1750
        otherwise
    end     
end