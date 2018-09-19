##
## Makefile for Makefile in /home/pipolm.pk/PSU_2016_my_printf
## 
## Made by Philippe KAM
## Login   <pipolm.pk@epitech.net>
## 
## Started on  Sun Nov 20 13:34:55 2016 Philippe KAM
## Last update Sun Nov 20 16:14:55 2016 Philippe KAM
##

SRC	=	src/my_printf.c		\
		src/flags.c			\
		src/flags_2.c		\
		src/flags_3.c		\
		src/my_strlen.c		\
		src/my_put_nbr.c		\
		src/my_putnbr_base.c	\
		src/my_putchar.c		\
		src/my_putstr.c		\
		src/my_putstr_S.c

OBJ	=	$(SRC:.c=.o)

NAME	=	libmy.a

all:		$(NAME)

$(NAME):	$(OBJ)
		ar rc $(NAME) $(OBJ)

clean:
		rm -f $(OBJ)

fclean:		clean
		rm -f $(NAME)

re:		fclean all

.PHONY:	all clean fclean re
