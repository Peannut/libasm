# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zoukaddo <zoukaddo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/10 19:26:42 by zoukaddo          #+#    #+#              #
#    Updated: 2023/05/10 19:26:47 by zoukaddo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			section	.text
			global	_ft_strlen

; delete RAX

_ft_strlen:
			xor		rax, rax			; i = 0
			jmp		compare
increment:
			inc		rax					; i++
compare:
			cmp		BYTE [rdi + rax], 0	; str[i] == 0
			jne		increment
done:
			ret							; return i