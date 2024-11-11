/text   find text
    n next, N previous
    /string up to down
    ?string down to up
    /st...g
    /st*g

1,9s/$/\\n\\/g
// line 1-9 substitute $ => \n global

:%s/\\/\\\\/g
// : command % home to end