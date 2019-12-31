#include<stdio.h>
#include<string.h>
#include<stdlib.h>
typedef unsigned long ul;
/**秘密关卡会在某一关之后触发，
 * 根据此程序的反编译结果来看，
 * 每一关的字符串都会被保存起来
 * 在地址0x804c24c存放着当前关卡的编号
 * 根据地址0x8049e10可知，当且仅当到了第7关（也就是第6关之后）
 * 才会顺序执行到0x8049e15
 * sscanf(phase_4输入的字符串,0x804a2f2,&a,&b,str_ptr)
 * 然后对比str_ptr 与 0x804a2fb 是否一致，
 * 如果一致，将顺序执行到0x8049e57
 * 然后它会告诉你你确实找到了秘密关卡，
 * 没有任何秘密关卡参数传入，秘密关卡自己会接收用户输入
 * 
*/
const char *addr_0x804a2fb = "DSecf";
const char *addr_0x804a2f2 = "%d %d %s";
const char *addr_0x804a1f4 = "Wow! You've defused the secret stage!";
const char *addr_0x804a2d2 = "\nBOOM!!!";
const char *addr_0x804a2db = "The bomb has blown up.";
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
struct p6_structVar{
    ul a;
    ul b;
    struct p6_structVar *c;
};

struct p6_structVar addr_0x804c0e4[8] = {
    {3,7,NULL},//node7 0x804c0e4
    {4,6,&addr_0x804c0e4[0]},//node6 0x804c0f0
    {1,5,&addr_0x804c0e4[1]},//node5 0x804c0fc
    {7,4,&addr_0x804c0e4[2]},//node4 0x804c108
    {0,3,&addr_0x804c0e4[3]},//node3 0x804c114
    {9,2,&addr_0x804c0e4[4]},//node2 0x804c120
    {5,1,&addr_0x804c0e4[5]},//node1 0x804c12c
};
struct sp_structVar{
    ul data;
    struct sp_structVar *left;
    struct sp_structVar *right;
};
struct sp_structVar addr_0x804c138[16] = {
    {0x3e9,NULL,NULL},//n48 0x804c138
    {0x2f,NULL,NULL},//n46 0x804c144
    {0x14,NULL,NULL},//n43 0x804c150
    {0x7,NULL,NULL},//n42 0x804c15c
    {0x23,NULL,NULL},//n44 0x804c168
    {0x63,NULL,NULL},//n47 0x804c174
    {0x1,NULL,NULL},//n41 0x804c180
    {0x28,NULL,NULL},//n45 0x804c18c
    {0x6b,&addr_0x804c138[5],&addr_0x804c138[0]},//n34 0x804c198
    {0x6,&addr_0x804c138[6],&addr_0x804c138[3]},//n31 0x804c1a4
    {0x2d,&addr_0x804c138[7],&addr_0x804c138[1]},//n33 0x804c1b0
    {0x16,&addr_0x804c138[2],&addr_0x804c138[4]},//n32 0x804c1bc
    {0x32,&addr_0x804c138[10],&addr_0x804c138[8]},//n22 0x804c1c8
    {0x8,&addr_0x804c138[9],&addr_0x804c138[11]},//n21 0x804c1d4
    {0x24,&addr_0x804c138[13],&addr_0x804c138[12]},//n1 0x804c1e0
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
8 184 DSecf
0123456>
3,5,7,6,1,4,2
20
*/

void explode_bomb()
{
    puts(addr_0x804a2d2);
    puts(addr_0x804a2db);
}

ul string_length_origin(char *str)
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

ul string_length(char *str)
{
    char *ptr;
    long count;                     //sub    $0x10,%esp;
    ptr = str;                      //mov    0x8(%ebp),%eax;mov    %eax,-0x8(%ebp);
    count = (long)0;                //movl   $0x0,-0x4(%ebp);
    while (  ((eax&0xff) & (eax&0xff)) != 0  )
    {
        ptr = ptr + 1;     //addl   $0x1,-0x8(%ebp);
        count = count + 1;              //addl   $0x1,-0x4(%ebp);
        eax = (long)(*ptr);  //mov    -0x8(%ebp),%eax;movzbl (%eax),%eax;
    }
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
    //sub    $0x18,%esp;栈生长24字节
    char *str2;
    long i = 0;//movl   $0x0,-0x10(%ebp);
    while(i < para3)
    {
        if( i - 0 != 0 )
        {
            str2=strtok(NULL,addr_0x804a287);
        }
        else
        {
            str2=strtok(str,addr_0x804a287);
        }
        if(str2 == NULL)
        {
            explode_bomb();
            return 0;
        }
        if( sscanf(str2,addr_0x804a28b,para2+i) > 0)
            i++;
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
            a = func4(para1 - 1) + (func4(para1 - 2) >> 1);
        }
        else
        {
            a = 26;
        }
    }
    else
    {
        a = 3;
    }   
    return a;
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
        struct try2{
            ul low32bit;
            ul high32bit;
        }db_in_int64;
        //unsigned long long uuLong;
    }db_space;
    db_space.db = (double)0x112e8541;
    //uLongForHigh = (( 0xFFFFFFFF00000000&db_space.uuLong) >>32);
    //printf("%ld %ld",db_space.db_in_int64.low32bit, db_space.db_in_int64.high32bit);
    if( sscanf(str,addr_0x804a1c9,&a,&b) == 2)
    {
        if(db_space.db_in_int64.low32bit == a && \
            db_space.db_in_int64.high32bit == b)
            return 1;
    }
    explode_bomb();
    return 0;
}

ul phase_2(char *str)
{
    //esp = esp - 0x38
    ul num[10],m;
    if(read_n_numbers(str,num,9) != 0)
    {
        //for(i=0;i<9;i++)
        //    printf("%ld ",num[i]);//Debug
        if(num[0] - 136 == 0)
        {
            m=1;
            while(m <= 8)
            {
                if(num[m] == (num[m-1]-(m+m) +1))
                {
                    m++;
                }
                else
                {
                    explode_bomb();
                    return 0;
                }
            }
            return 1;
        }
        else
        {
            explode_bomb();
            return 0;
        }
    }
    return 0;
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
    if( pp[3] = sscanf( str , addr_0x804a1c9 ,&pp[1],&pp[0]) != 2)
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
            eax = addr_0x804c200[eax];//从一个数组里选取8个数字
            pp[2] = pp[2] + eax;
        }
        if(pp[2] == 0x3f)//0x3f=63，即要求这个8个数字之和等于63
            return 1;
    }
    explode_bomb();
    return 0;
}

ul phase_6(char *str)
{
    //sub    $0x58,%esp ;esp = esp - 88
    //ebp-0x50,ebp-0x34
    struct p6_structVar *svar_arr[7];
    ul num[7];//esp[2],esp[9]
    //ebp-0x18
    struct p6_structVar *svar_ptr1;//esp[16]
    ul m,n;//esp[17],esp[18]
    struct p6_structVar *svar_ptr2;//esp[19]
    svar_ptr1 = &addr_0x804c0e4[6];//0x804c12c
    if( read_n_numbers(str,num,7) )//0x80497a7
    {
        //n=0;//0x80497b3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp);*(ebp - 16) = 0
        //n++;//0x8049818:addl   $0x1,-0x10(%ebp)
        //n<=6//0x8049820
        //开始遍历输入的7个数字
        for ( n=0 ; n<=6 ; n++)
        {
            //0x80497bc:mov    -0x10(%ebp),%eax	
            //这7个数字都不能小于等于零
            if( num[n] <= 0 )//0x80497c5
            {
                explode_bomb();
                return 0;
            }
            //0x80497c7:mov    -0x10(%ebp),%eax
            //这7个数字都不得大于7
            if( num[n] <= 7 )//0x80497e2
            {
                m = n+1;//0x80497e8
                //查重，7个数字都不允许重复
                while(m <= 6)//0x8049816
                {
                    //80497ed:mov    -0x10(%ebp),%eax
                    if( num[n] != num[m] )
                    {
                        m++;
                    }
                    else
                    {
                        explode_bomb();
                        return 0;
                    }
                }
            }
            else
            {
                explode_bomb();
                return 0;
            }
        }
        //0x8049822:movl   $0x0,-0x10(%ebp)
        //n<=6//0x8049865
        for (n=0 ; n<=6 ; n++)
        {
            svar_ptr2 = svar_ptr1;//0x804982b:mov -0x18(%ebp),%eax;mov %eax,-0xc(%ebp)
            //m = 1;//0x8049831
            //m++;//0x8049843
            //定位到链表的第num[n]个节点
            for(m=1 ; m<num[n] ; m++)//m < num[n]//0x8049851
                svar_ptr2 = svar_ptr2->c;
            svar_arr[n] = svar_ptr2;//0x8049853  //存储当前节点，也就是说这个函数是把用户输入的7个数字当做下标，对原有链表进行了排序，节点地址顺序存储在svar_arr数组里面
        }
        svar_ptr1 = svar_arr[0];//0x8049867
        svar_ptr2 = svar_ptr1;
        //n++;//0x8049892
        //按数组存储的节点顺序，重构这个链表结构
        for (n=1 ; n<=6 ; n++)//addr_8049896
        {
            svar_ptr2->c = svar_arr[n];
            svar_ptr2 = svar_ptr2->c;//0x804988f
        }
        svar_ptr2->c = NULL;//尾节点没有下一个节点地址
        svar_ptr2 = svar_ptr1;
        //n = 0;//addr_80498ac
        //遍历这个链表
        for (n=0 ; n<=5 ; n++)
        {   //要求每个节点的下一个节点的a值要大于等于自身a值
            if(svar_ptr2->a  <=  (svar_ptr2->c)->a )
            {
                svar_ptr2 = svar_ptr2->c;
            }
            else
            {
                explode_bomb();
                return 0;
            }
        }
        return 1;
    }
    return 0;
}

long fun7(struct sp_structVar *sp_ptr,ul t)
{

    if( sp_ptr != NULL )
    {
        if(t >= sp_ptr->data)
        {
            if(t != sp_ptr->data)
            {
                return fun7(sp_ptr->right,t)*2 +1;
            }
            else
            {
                return 0;
            }
        }
        else
        {
            return fun7(sp_ptr->left,t)*2;
        }
    }
    else
    {
        return -1;
    }
    return 0;
}
/**当然，秘密关卡没有形参，
 * 是因为我懒得翻译read_line函数了。
 * 如果非要翻译，会牵一发而动全身，
 * 把整个程序完整翻译。
 * 所以我干脆弄个形参，方便传递字符串
*/
ul secret_phase(char *str)
{
    long t,m;
    char *str2 = str;
    t = atoi(str2);
    if(t <= 0)
    {
        explode_bomb();
        return 0;
    }
    if(t <= 0x3e9)
    {
        m = fun7(&addr_0x804c138[14],t);
        if(m == 2)
        {
            puts(addr_0x804a1f4);
            return 1;
        }
        else
        {
            explode_bomb();
            return 0;
        }
    }
    explode_bomb();
    return 0;
}

void boom_fun7()
{
    long arr[15*3+1],i;
    for(i=0 ; i<15 ; i++)
    {
        arr[i*3] = addr_0x804c138[i].data;
        arr[i*3 +1] = addr_0x804c138[i].data -1;
        arr[i*3 +2] = addr_0x804c138[i].data +1;
    }
    for(i=0 ; i<15*3 ; i++)
        printf("%ld ",arr[i]);
    putchar('\n');
    for(i=0 ; i<15*3 ; i++)
    {
        printf("No.%-6ld:InputNum=%-6ld,fun7_output=%ld\n",i+1,arr[i],fun7(&addr_0x804c138[14],arr[i]));
    }
    return;
}
void kaboom_fun7()
{
    long i;
    for(i=0 ; i<0x3e9 ; i++)
    {
        if(fun7(&addr_0x804c138[14],i) == 2)
            printf("InputNum=%-6ld,fun7_output=%ld\n",i,2);
    }
}

/*
int main(void)
{//phase_6
    char input[]="3,5,7,6,1,4,2";
    if(phase_6(input) == 1)
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

/*
int main(void)
{//phase_4
    if(phase_4("8 184 DSecf") == 1)
    {
        printf("Yes!\n");
    }
    else
    {
        printf("No!\n");
    }
    return 0;
}

/**/
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

/*
int main(void)
{//read_n_numbers
    char input[50]="3,5,7,6,1,4,2";
    long i;
    unsigned long result[50]={0};
    if(read_n_numbers(input,result,7) == 1)
    {
        printf("Yes!\n");
        for(i=0;i<7;i++)
            printf("%ld ",result[i]);
    }
    else
    {
        printf("No!\n");
    }
    return 0;
}


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
