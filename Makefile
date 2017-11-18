# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpierre <cpierre@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/02/15 11:23:02 by cpierre           #+#    #+#              #
#    Updated: 2017/11/18 16:28:50 by cpierre          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

VERSION = $(shell cat ./version)

git:
		$(eval VERSION=$(shell echo $$(($(VERSION)+1))))
		$(shell echo $$(($(VERSION))) > ./version)
		@echo "cleaning libft..."
		@bash lftclean.sh
		@echo "    Successfully cleaned libft\nPushing to git repository..."
		git add *
		@read -p "Commit message:" msg; \
		git commit -m "LibftV4 - Build $(BUILD) - $$msg"
		git push
		@echo "Succesfully pushed LibftV4 to git repository"
