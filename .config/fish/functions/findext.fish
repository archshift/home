function findext
    find . -maxdepth 1 | grep "\.$argv" | sed 's/^\.\///g'
end
