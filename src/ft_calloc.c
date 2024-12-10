/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlouvrie <rlouvrie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/05 14:43:01 by rlouvrie          #+#    #+#             */
/*   Updated: 2024/12/10 20:56:11 by rlouvrie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	*ft_calloc(size_t count, size_t size)
{
	void	*ptr;
	size_t	res;

	res = count * size;
	if (count != 0 && res / count != size)
		return (NULL);
	ptr = malloc(res);
	if (ptr == NULL)
		return (NULL);
	ft_bzero(ptr, res);
	return ((void *)ptr);
}
