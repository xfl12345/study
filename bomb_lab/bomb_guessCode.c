#include<stdio.h>
#include<string.h>
const char *addr_0x804a287 = ", \t";
const char *addr_0x804a28b = "%d";
unsigned long eax = 0;
unsigned long edx = 0;
/**eax扩写是Extended Accumulator Register
*中文翻译是“扩展的累加寄存器”
*主要用途是“用于存储操作数和结果数据”
*其容量大小是32bit 也就是4字节(0.00390625 KiB)
**/
void explode_bomb()
{
    printf("爆炸！\n");
    exit(0);
}
long string_length(char *str)
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

unsigned long read_n_numbers(char *str,unsigned long *para2,unsigned long para3)
{
    unsigned long kkk[6];   //sub    $0x18,%esp         ;栈生长24字节
    kkk[3] = 0;             //movl   $0x0,-0x10(%ebp)	;由此可见，内存(ebp - 16)~(ebp - 12)是一个long型变量，不妨记为a
    {
        if( kkk[3] - 0 != 0 )
        {
            kkk[2]=strtok(NULL,addr_0x804a287);
        }
        kkk[2]=strtok(str,addr_0x804a287);
        if(kkk[2] == NULL)
            goto addr_8049b29;
        eax = kkk[3];
        edx = eax*4;
        eax = para2;
        eax = edx + eax;
        if( sscanf(kkk[2],addr_0x804a28b,eax) > 0)goto addr_8049b35;
        addr_8049b29:explode_bomb();
                    eax = 0;
                    goto addr_8049b46;
        addr_8049b35:kkk[3] = kkk[3] + 1;
    }while(eax = kkk[3] < para3);
    eax = 1;
    addr_8049b46:
    return eax;
}


int main(void)
{
    char input[50]="1,  9,  2";
    char result[50]={'\0'};
    if(read_n_numbers(input,result,3) == 1)
    {
        printf("Yes!\n");
        printf("%s",result);
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