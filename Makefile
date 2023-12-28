NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra
INCLUDE = ft_printf.h
FOLDER = func/
OBJFOLDER = obj/
SRCS = \
		ft_printf.c \
		ft_putchar.c \
		ft_puthex.c \
		ft_putnbr.c \
		ft_putptr.c \
		ft_putstr.c \
		ft_putunbr.c \
		main.c \

SOURCE = $(addprefix $(FOLDER), $(SRCS))
OBJSOURCE = $(addprefix $(OBJFOLDER), $(notdir $(SOURCE:.c=.o)))

$(NAME): 
	$(CC) $(CFLAGS) -c $(INCLUDE) $(SOURCE)
	@mv *.o obj/
	@ar rc $(NAME) $(OBJ_SOURCE)
	@ranlib $(NAME)

all: $(NAME)

clean:
	rm -rf $(OBJSOURCE)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re