# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpierre <cpierre@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/02/15 11:23:02 by cpierre           #+#    #+#              #
#    Updated: 2017/11/18 16:24:23 by cpierre          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

VERSION = $(shell cat ./version)

git:
		$(eval VERSION=$(shell echo $$(($(VERSION)+1))))
		$(shell echo $$(($(VERSION))) > ./version)
		@echo "cleaning libft...\c"
		@bash lftclean.sh
		@echo "    Success\nPushing to git repository..."
		git add *
		git commit -m "LibftV4 - Build $(BUILD) - $(shell bash -c 'read -p "Commit message: " pwd; echo $$pwd')"
		git push
		@echo "Succesfully pushed LibftV4 to git repository"
