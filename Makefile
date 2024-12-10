# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rlouvrie <rlouvrie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/10 21:03:07 by rlouvrie          #+#    #+#              #
#    Updated: 2024/12/10 21:13:39 by rlouvrie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc

INCLUDES =	-Iinclude

CFLAGS = -Wall -Wextra -Werror

SRCDIR	=	src

OBJDIR	=	obj

SRC = ft_memset.c \
    ft_bzero.c \
    ft_memcpy.c \
    ft_memmove.c \
    ft_memcmp.c \
    ft_strlen.c \
    ft_isalpha.c \
    ft_isdigit.c \
    ft_isalnum.c \
    ft_strjoin.c \
    ft_isascii.c \
    ft_isprint.c \
    ft_toupper.c \
    ft_putchar_fd.c \
    ft_putstr_fd.c \
    ft_tolower.c \
    ft_strdup.c \
    ft_calloc.c \
    ft_strlcpy.c \
    ft_strlcat.c \
	ft_substr.c \
	ft_memchr.c \
	ft_putnbr_fd.c \
	ft_putendl_fd.c \
    ft_split.c \
	ft_strchr.c \
    ft_strtrim.c \
    ft_strmapi.c \
    ft_striteri.c \
    ft_strrchr.c \
    ft_strncmp.c \
	ft_itoa.c \
    ft_strnstr.c \
    ft_atoi.c

OBJS    =   $(SRC:%.c=$(OBJDIR)/%.o)

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $^
	@ranlib $(NAME)
	@echo "Successfully created $(NAME)."

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(OBJDIR)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
