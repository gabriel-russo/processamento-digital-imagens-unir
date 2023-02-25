function s = subim(f, m, n, rx, cy)
    %SUBIM Extracts a  subimage,  s, from  a  given image,  f.
    % The  subimage is  of  size m-by-n, and  the  coordinates of  its  top,
    % left corner are  (rx, cy) .

    s = zeros(m,  n);
    for r = 1:m
        for c = 1:n
            s(r, c) = f(r + rx - 1, c + cy - 1);
        end
    end

end
