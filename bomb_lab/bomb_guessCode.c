#include<stdio.h>
#include<string.h>
#include<stdlib.h>
typedef unsigned long ul;
const char *addr_0x804a287 = ", \t";
const char *addr_0x804a28b = "%d";
const char *addr_0x804a1c9 = "%d %d";
const char *addr_0x804a194 = "C was developed from 1969 to 1973 by Dennis Ritchie.";

const long *addr_0x804a1d0[10] = {
    0x080495e2,0x080495e9,0x080495f0,
    0x080495f7,0x080495fe,0x08049605,
    0x0804960c,0x08049613,0x0804961a
};
const long addr_0x804c200[17] = {
    0x6, 0xe, 0x8, 0xf,
    0x3, 0x2, 0x5, 0xd,
    0x9, 0x1, 0x10, 0x7,
    0x4, 0xc, 0xa, 0xb 
};

unsigned long eax = 0;
unsigned long ebx = 0;
unsigned long ecx = 0;
unsigned long edx = 0;
/**eax扩写是Extended Accumulator Register
*中文翻译是“扩展的累加寄存器”
*主要用途是“用于存储操作数和结果数据”
*其容量大小是32bit 也就是4字节(0.00390625 KiB)
**/
/**KEY found:
C was developed from 1969 to 1973 by Dennis Ritchie.
1090519040 1102130821
136 135 132 127 120 111 100 87 72
131 852
8 184
0123456>
*/

void explode_bomb()
{
    printf("爆炸！\n");
    exit(0);
}

ul string_length(char *str)
{
    char *ptr;
    long count;                     //sub    $0x10,%esp;
    ptr = str;                      //mov    0x8(%ebp),%eax;mov    %eax,-0x8(%ebp);
    count = (long)0;                //movl   $0x0,-0x4(%ebp);
    goto addr_8049b65;                //jmp    8049b65 <string_length+0x1d>;
    addr_8049b5d:ptr = ptr + 1;     //addl   $0x1,-0x8(%ebp);
    count = count + 1;              //addl   $0x1,-0x4(%ebp);
    addr_8049b65:eax = (long)(*ptr);  //mov    -0x8(%ebp),%eax;movzbl (%eax),%eax;
    if( ((eax&0xff) & (eax&0xff)) != 0)goto addr_8049b5d;//test   %al,%al;jne    8049b5d <string_length+0x15>;
    return count;                   //mov    -0x4(%ebp),%eax;leave;ret;
}

ul strings_not_equal(char *str1,char *str2)
{
    ul a,d;
    char *b,*c;
    d=ebx;
    if(string_length(str1) == string_length(str2))
    {
        b = str1;
        c = str2;
        while ( ((*b)&0xFF) != NULL )
        {
            if(((*b)&0xFF) == ((*c)&0xFF))
            {
                b++;
                c++;
            }
            else
            {
                ebx = d;
                return 1;
            }
        }
    }
    else
    {
        ebx = d;
        return 1;
    }
    return 0;
}

ul read_n_numbers(char *str,ul *para2,ul para3)
{
    unsigned long pp[6];   //sub    $0x18,%esp         ;栈生长24字节
    pp[2] = 0;             //movl   $0x0,-0x10(%ebp)	;由此可见，内存(ebp - 16)~(ebp - 12)是一个long型变量，不妨记为a
    while(pp[2] < para3)
    {
        if( pp[2] - 0 != 0 )
        {
            pp[3]=strtok(NULL,addr_0x804a287);
        }
        else
        {
            pp[3]=strtok(str,addr_0x804a287);
        }
        if(pp[3] == NULL)
        {
            explode_bomb();
            return 0;
        }
        eax = pp[2];
        edx = eax*4;
        eax = para2;
        eax = edx + eax;
        if( sscanf(pp[3],addr_0x804a28b,eax) > 0)
            pp[2] = pp[2] + 1;
    }
    return 1;
}

ul func4(long para1)
{
    ul a;
    if( para1 > 0)
    {
        if( para1 != 1 )//!
        {
            eax = func4(para1 - 1) + (func4(para1 - 2) >> 1);
        }
        else
        {
            eax = 26;
        }
    }
    else
    {
        eax = 3;
    }   
    return eax;
}

ul phase_0(char *str)
{
    if( strings_not_equal(str,addr_0x804a194) == 0)
        return 1;
    explode_bomb();
    return 0;
}

ul phase_1(char *str)
{
    ul uLongForHigh,a,b;
    union try
    {
        double db;
        ul uLong;
        //unsigned long long uuLong;
    }db_space;
    db_space.db = (double)0x112e8541;
    //uLongForHigh = (( 0xFFFFFFFF00000000&db_space.uuLong) >>32);
    printf("%ld %ld",db_space.uLong, (&db_space.uLong)[1]);
    if( sscanf(str,addr_0x804a1c9,&a,&b) == 2)
    {
        if(db_space.uLong != a)
            goto addr_0x80494fe;
        if((&db_space.uLong)[1] == b)
            return 1;
    }
    addr_0x80494fe:
    explode_bomb();
    return 0;
}

ul phase_2(char *str)
{
    ul pp[14],i;
    if(read_n_numbers(str,&pp[2],9) != 0)
    {
        for(i=0;i<9;i++)
            printf("%ld ",pp[2+i]);
        if(pp[2] - 136 == 0)
        {
            pp[11]=1;
            while(pp[2] - 8 < 0)
            {
                eax = pp[2 + pp[11]];
                edx = pp[2 + (pp[11]-1)];
                edx = edx - (pp[11] + pp[11]);
                edx++;
                if(eax - edx == 0)
                {
                    pp[11]++;
                }
                else
                {
                    explode_bomb();
                    eax = 0;
                }
            }
            eax = 1;
        }
        else
        {
            explode_bomb();
            eax = 0;
        }
    }
    else
    {
        eax = 0;
    }
    return eax;
}

ul phase_3(char *str)
{
    ul pp[6];//sub    $0x18,%esp ;esp = esp - 24
    if( sscanf(str,addr_0x804a1c9,&pp[1],&pp[0]) > 1 )
    {
        pp[3] = 0;
        eax = pp[1];
        eax = eax - 0x7d;
        if( (unsigned)eax > (unsigned)8 )
        {
            explode_bomb();
            return 0;
        }
        eax = addr_0x804a1d0[eax];
        switch (eax)
        {
            case 0x080495e2:pp[3] += 0x354;//0
            case 0x080495e9:pp[3] += 0x37c;//1
            case 0x080495f0:pp[3] -= 0x354;//2
            case 0x080495f7:pp[3] += 0x354;//3
            case 0x080495fe:pp[3] += 0x37c;//4
            case 0x08049605:pp[3] -= 0x354;//5
            case 0x0804960c:pp[3] += 0x37c;//6
            case 0x08049613:pp[3] -= 0x37c;//7
            case 0x0804961a:pp[3] += 0x354;//8
                break;
            default:
                break;
        }
        eax = pp[1];
        if(eax - 0x83 > 0)
        {
            explode_bomb();
            return 0;
        }
        if(pp[0] == pp[3])
        {
            return 1;
        }
    }
    else
    {
        explode_bomb();
        return 0;
    }
    return 1;
}

ul phase_4(char *str)
{
    ul pp[6];//sub    $0x18,%esp ;esp = esp - 24
    if( sscanf( str , addr_0x804a1c9 ,&pp[1],&pp[0]) != 2)
    {
        explode_bomb();
        return 0;
    }
    if( pp[1] > 7 )
    {
        pp[2] = func4(pp[1]);
        if( pp[0] == pp[2] )
        {
            return 1;
        }
    }
    explode_bomb();
    return 0;
}

ul phase_5(char *str)
{
    ul pp[6];//sub    $0x18,%esp ;esp = esp - 24
    if( string_length(str) == 8 )
    {
        pp[2] = 0;
        for ( pp[3]=0 ; pp[3]<=7 ; pp[3]++)
        {
            eax = (unsigned long)(*(pp[3] + str));
            eax = (signed long)(eax & 0xFF);
            eax = eax & 0xF;
            eax = addr_0x804c200[eax];
            pp[2] = pp[2] + eax;
        }
        if(pp[2] == 0x3f)//63
            return 1;
    }
    explode_bomb();
    return 0;
}

ul phase_6(char *str)
{
    //Doing!!!!!!
}

int main(void)
{//phase_5
    if(phase_5("0123456>") == 1)
    {
        printf("Yes!\n");
    }
    else
    {
        printf("No!\n");
    }
    return 0;
}

/*
int main(void)
{//phase_5
    if(phase_5("0123456>") == 1)
    {
        printf("Yes!\n");
    }
    else
    {
        printf("No!\n");
    }
    return 0;
}
*/

/*
int main(void)
{//phase_1
    if(phase_1("1090519040 1102130821") == 1)
    {
        printf("Yes!\n");
    }
    else
    {
        printf("No!\n");
    }
    return 0;
}
*/

/*
int main(void)
{//phase_2
    char input[50]="136 135 132 127 120 111 100 87 72";
    if(phase_2(input) == 1)
    {
        printf("Yes!\n");
    }
    else
    {
        printf("No!\n");
    }
    return 0;
}
*/

/*
int main(void)
{//read_n_numbers
    char input[50]="1,9,2";
    long i;
    unsigned long result[50]={0};
    if(read_n_numbers(input,result,3) == 1)
    {
        printf("Yes!\n");
        for(i=0;i<3;i++)
            printf("%ld",result[i]);
    }
    else
    {
        printf("No!\n");
    }
    return 0;
}
*/



/**
 * unsigned long long a,b;
    a=b=0;
    b = &a;
    printf("\n%lld\n",sizeof(a));
    printf("\n%lld\n",sizeof(&a));
    printf("\n%x\n",&a);
    printf("Input Num:");
    scanf("%lld",b);//重点
    printf("\nOutput Num:%lld\n",a);
*/
