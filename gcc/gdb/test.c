int main(int argc, char *argv[])
{
    int i, a, b;

    a = 1;
    b = 2;

    for(i = 0; i < 5; i ++)
    {
        a = a + i;
        b = a * 2;
    }

    return 0;
}