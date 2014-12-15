[sharp]!/bin/bash

clear; 
echo ""; 
echo "\033[1m _ ___ ___ ___ _____ \033[0m"; 
echo "\033[1m | | |_ | _ ) _|_ | _ __ __ __ _ \033[0m"; 
echo "\033[1m | |__ | || _ \ | | | / |||_ / |/ |_ |) \033[0m"; 
echo "\033[1m |||/| || _| ||_|\ |_| \ \033[0m"; 
echo "\033[1m jgigault @ http://student.42.fr18 \033[0m"; 
echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mFichier auteur :\033[0m" 
cat -e auteur;

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mNorme :\033[0m"; 
norminette *.c | sed -n "/Error/p" | awk 'END {if (NR == 0) print "\033[0;32mOK\033[m"; else print "\033[31m",$0,"\033[0m";}';

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mFonctions interdites (stdio.h, printf) :\033[0m"; 
cat *.[ch] | grep "stdio.h" | awk 'END {if (NR == 0) print "stdio.h : \033[0;32mOK\033[m"; else print "\033[31m",$0,"\033[0m";}'; 
cat *.[ch] | grep "printf" | awk 'END {if (NR == 0) print "printf : \033[0;32mOK\033[m"; else print "\033[31m",$0,"\033[0m";}';

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mFonctions obligatoires :\033[0m"; 
OBL=""; 
if [ ! -f ft_memset.c ]; then echo "ft_memset.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_bzero.c ]; then echo "ft_bzero.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_memcpy.c ]; then echo "ft_memcpy.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_memccpy.c ]; then echo "ft_memccpy.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_memmove.c ]; then echo "ft_memmove.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_memchr.c ]; then echo "ft_memchr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_memcmp.c ]; then echo "ft_memcmp.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strlen.c ]; then echo "ft_strlen.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strdup.c ]; then echo "ft_strdup.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strcpy.c ]; then echo "ft_strcpy.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strncpy.c ]; then echo "ft_strncpy.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strcat.c ]; then echo "ft_strcat.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strncat.c ]; then echo "ft_strncat.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strlcat.c ]; then echo "ft_strlcat.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strchr.c ]; then echo "ft_strchr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strrchr.c ]; then echo "ft_strrchr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strstr.c ]; then echo "ft_strstr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strnstr.c ]; then echo "ft_strnstr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strcmp.c ]; then echo "ft_strcmp.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strncmp.c ]; then echo "ft_strncmp.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_atoi.c ]; then echo "ft_atoi.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_isalpha.c ]; then echo "ft_isalpha.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_isdigit.c ]; then echo "ft_isdigit.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_isalnum.c ]; then echo "ft_isalnum.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_isascii.c ]; then echo "ft_isascii.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_isprint.c ]; then echo "ft_isprint.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_toupper.c ]; then echo "ft_toupper.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_tolower.c ]; then echo "ft_tolower.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_memalloc.c ]; then echo "ft_memalloc.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_memdel.c ]; then echo "ft_memdel.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strnew.c ]; then echo "ft_strnew.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strdel.c ]; then echo "ft_strdel.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strclr.c ]; then echo "ft_strclr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_striter.c ]; then echo "ft_striter.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_striteri.c ]; then echo "ft_striteri.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strmap.c ]; then echo "ft_strmap.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strmapi.c ]; then echo "ft_strmapi.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strequ.c ]; then echo "ft_strequ.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strnequ.c ]; then echo "ft_strnequ.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strsub.c ]; then echo "ft_strsub.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strjoin.c ]; then echo "ft_strjoin.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strtrim.c ]; then echo "ft_strtrim.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_strsplit.c ]; then echo "ft_strsplit.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_itoa.c ]; then echo "ft_itoa.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putchar.c ]; then echo "ft_putchar.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putchar_fd.c ]; then echo "ft_putchar_fd.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putstr.c ]; then echo "ft_putstr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putstr_fd.c ]; then echo "ft_putstr_fd.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putendl.c ]; then echo "ft_putendl.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putendl_fd.c ]; then echo "ft_putendl_fd.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putnbr.c ]; then echo "ft_putnbr.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ ! -f ft_putnbr_fd.c ]; then echo "ft_putnbr_fd.c : \033[31mABSENT\033[0m"; OBL=KO; fi; 
if [ "$OBL" == "" ]; then 
echo "\033[0;32mOK\033[m"; fi;

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mBonus :\033[0m"; 
if [ -f ft_lstadd.c ]; 
then echo "ft_lstadd.c : \033[0;32mOK\033[m"; 
else echo "ft_lstadd.c : \033[31mNON\033[0m"; fi; 
if [ -f ft_lstnew.c ]; 
then echo "ft_lstnew.c : \033[0;32mOK\033[m"; 
else echo "ft_lstnew.c : \033[31mNON\033[0m"; fi; 
if [ -f ft_lstdel.c ]; 
then echo "ft_lstdel.c : \033[0;32mOK\033[m"; 
else echo "ft_lstdel.c : \033[31mNON\033[0m"; fi; 
if [ -f ft_lstdelone.c ]; 
then echo "ft_lstdelone.c : \033[0;32mOK\033[m"; 
else echo "ft_lstdelone.c : \033[31mNON\033[0m"; fi; 
if [ -f ft_lstiter.c ]; 
then echo "ft_lstiter.c : \033[0;32mOK\033[m"; 
else echo "ft_lstiter.c : \033[31mNON\033[0m"; fi; 
if [ -f ft_lstmap.c ]; 
then echo "ft_lstmap.c : \033[0;32mOK\033[m"; 
else echo "ft_lstmap.c : \033[31mNON\033[0m"; fi;

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mFichiers supplementaires :\033[0m"; 
ls | sed "/.[oa]$/d" | sed "/ft_atoi.c/d" | sed "/ft_isalnum.c/d" | sed "/ft_memset.c/d" | sed "/ft_bzero.c/d" | sed "/ft_memcpy.c/d" | sed "/ft_memccpy.c/d" | sed "/ft_memmove.c/d" | sed "/ft_memchr.c/d" | sed "/ft_memcmp.c/d" | sed "/ft_strlen.c/d" | sed "/ft_strdup.c/d" | sed "/ft_strcpy.c/d" | sed "/ft_strncpy.c/d" | sed "/ft_strcat.c/d" | sed "/ft_strncat.c/d" | sed "/ft_strlcat.c/d" | sed "/ft_strchr.c/d" | sed "/ft_strrchr.c/d" | sed "/ft_strstr.c/d" | sed "/ft_strnstr.c/d" | sed "/ft_strcmp.c/d" | sed "/ft_strncmp.c/d" | sed "/ft_atoi.c/d" | sed "/ft_isalpha.c/d" | sed "/ft_isdigit.c/d" | sed "/ft_isalnum.c/d" | sed "/ft_isascii.c/d" | sed "/ft_isprint.c/d" | sed "/ft_toupper.c/d" | sed "/ft_tolower.c/d" | sed "/ft_memalloc.c/d" | sed "/ft_putnbr_fd.c/d" | sed "/ft_putendl_fd.c/d" | sed "/ft_putstr_fd.c/d" | sed "/ft_putchar_fd.c/d" | sed "/ft_putnbr.c/d" | sed "/ft_putendl.c/d" | sed "/ft_putstr.c/d" | sed "/ft_putchar.c/d" | sed "/ft_itoa.c/d" | sed "/ft_strsplit.c/d" | sed "/ft_strtrim.c/d" | sed "/ft_strjoin.c/d" | sed "/ft_strsub.c/d" | sed "/ft_strnequ.c/d" | sed "/ft_strequ.c/d" | sed "/ft_strmapi.c/d" | sed "/ft_strmap.c/d" | sed "/ft_striteri.c/d" | sed "/ft_striter.c/d" | sed "/ft_strclr.c/d" | sed "/ft_strdel.c/d" | sed "/ft_strnew.c/d" | sed "/ft_memdel.c/d" | sed "/libft.h/d" | sed "/libft.sh/d" | sed "/ft_lstadd.c/d" | sed "/ft_lstdel.c/d" | sed "/ft_lstnew.c/d" | sed "/ft_lstdelone.c/d" | sed "/ft_lstiter.c/d" | sed "/ft_lstmap.c/d" | sed "/Makefile/d" | sed "/m1/d" | sed "/m2/d" | sed "/m3/d" | sed "/m4/d" | sed "/libft.a/d" | sed "/auteur/d";

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mmake :\033[0m"; 
make > /dev/null; 
echo "\033[0;32m make OK\033[m"; 

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mmake re :\033[0m"; 
make re > /dev/null; 
echo "\033[0;32m make re OK\033[m"; 

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mmake clean :\033[0m"; 
make clean > /dev/null; 
echo "\033[0;32m make clean OK\033[m"; 

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mmake fclean :\033[0m"; 
make fclean > /dev/null; 
echo "\033[0;32m make fclean OK\033[m"; 

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mmake re :\033[0m"; 
make re > /dev/null; 
echo "\033[0;32m make re OK\033[m"; 

if [ ! -f libft.a ]; 
then 
echo "\033[31ERREUR : libft.a n'a pas ete cree, le script s'arrete la.\033[0m";
else
echo "\033[31CORRECT : libft.a a ete cree, lancement des tests.\033[0m";

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mtest1 :\033[0m"; 
if [ -f main123/main1.c ]; 
then 
gcc main123/main1.c libft.a -I /.. -o test1; 
./test1; 
else 
echo "\033[31mmain1.c est introuvable\033[0m"; 
fi;

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mtest2 :\033[0m"; 
if [ -f main123/main2.c ]; 
then 
gcc main123/main2.c libft.a -I /.. -o test2; 
./test2; 
else 
echo "\033[31main2.c est introuvable\033[0m"; 
fi;

echo ""; 
echo "\033[1m------------------------------------------------\033[0m"; 
echo "\033[1mtest3 :\033[0m"; 
if [ -f main123/main3.c ]; 
then 
gcc main123/main3.c libft.a -I /.. -o test3; 
./test3; 
else 
echo "\033[31mmain3.c est introuvable\033[0m"; 
fi;

fi;

echo ""; 
echo "\033[1m------------------------------------------------\033[0m";
