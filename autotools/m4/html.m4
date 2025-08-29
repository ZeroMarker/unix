divert(-1)
This `divert' discards this text. Note that I had to quote the `divert'
in the comment so it wouldn't get undiverted.

# In a true comment, I'm free to use words such as divert and other builtin
# m4 macros' names without consequence.

# This starts the count at ONE as the incr is a preincrement.
define(`H2_COUNT', 0)

# The H2_COUNT macro is redefined every time the H2 macro is used.
define(`H2',
        `define(`H2_COUNT', incr(H2_COUNT))<h2>H2_COUNT. $1</h2>')

divert(0)dnl Diversion to 0 means back to normal. dnl macro removes this line.
H2(First Section)
H2(Second Section)
H2(Conclusion)

