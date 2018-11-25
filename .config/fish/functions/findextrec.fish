function findextrec
    find . | grep "\.$argv" | sed 's/^\.\///g'
end
