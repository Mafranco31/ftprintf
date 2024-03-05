# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mafranco <mafranco@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/27 13:06:34 by mafranco          #+#    #+#              #
#    Updated: 2024/03/05 11:58:48 by mafranco         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

LIB = inc/ft_printf.h

SRC	=	src/ft_printf.c src/ft_pfptr.c src/ft_pfchar.c src/ft_pfint.c

CC	=	cc

CFLAGS	=	-Werror -Wall -Wextra -I.

RM	=	rm -f

OBJ = $(SRC:.c=.o)

all:	$(NAME)

%.o: %.c $(LIB)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME):: $(OBJ) $(LIB)
	@ar rcs $(NAME) $(OBJ)

clean:
	@$(RM) *.o

fclean: clean
	@$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re
