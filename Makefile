# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpierre <cpierre@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/02/15 11:23:02 by cpierre           #+#    #+#              #
#    Updated: 2017/11/18 18:03:01 by cpierre          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

VERSION = $(shell cat ./version)

CMT_READ_MSG = $(shell echo "\\033[34mCommit message:\\033[1m\\033[36m")

git:
		$(eval VERSION=$(shell echo $$(($(VERSION)+1))))
		$(shell echo $$(($(VERSION))) > ./version)
		@echo "\\033[34mcleaning libft...\\033[0m"
		@bash lftclean.sh
		@echo $(CMT_READ_MSG)
		@echo "\\033[92mSuccessfully cleaned libft\\033[0m\n\n\\033[34mPushing to git repository...\\033[0m"
		@git add *
		@read -p "$(CMT_READ_MSG)" msg; \
		echo "\\033[0m"; \
		git commit -m "LibftV4 - Build $(BUILD) - $$msg"
		@git push
		@echo "\\033[92mSuccesfully pushed LibftV4 to git repository\\033[0m"
