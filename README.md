# ft_printf

ft_printf is the second project of 42 cursus. The goal is to create our proper printf function.

## Description

Our printf should behave like the printf from libc (see man). Here we learn about variadic function.

## Installation

```bash
git clone https://github.com/Mafranco31/ftprintf.git ft_printf && cd ft_printf && make
```

now you can add the ft_printf.h header in your files and use ft_printf function !

## Use

To use ft_printf, you have to insert in variable you string first :
```c
ft_printf("My string to print\n");
```

if you want to print variable, you have to put this sign in the string where you want to print it :
- ‰c for a simple character  
- ‰s for a string  
- ‰p for a pointer  
- ‰d a decimal number  
- %i an integer in base 10  
- ‰u an unsigned decimal number  
- ‰x a number in hexadecimal lowercase format  
- ‰X a number in hexadecimal uppercase format  
- ‰‰ a percent sign  

and then you put your variable after the string in the function like this :
```c
ft_printf("My string to print: ‰s\n", "my string");
```
