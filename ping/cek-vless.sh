#!/bin/bash
skip=23
set -C
umask=$(umask)
umask 77
tmpfile=$(mktemp -p /tmp gztmp.XXXXXX) || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> "$tmpfile"; then
    umask $umask
    /bin/chmod 700 "$tmpfile"
    prog=$(echo "$0" | /bin/sed 's|^.*/||')
    if /bin/ln -T "$tmpfile" "/tmp/$prog" 2>/dev/null; then
        trap '/bin/rm -f "$tmpfile" "/tmp/$prog"; exit $res' 0
        (/bin/sleep 5; /bin/rm -f "$tmpfile" "/tmp/$prog") 2>/dev/null &
        /tmp/"$prog" "${1+$@}"; res=$?
    else
        trap '/bin/rm -f "$tmpfile"; exit $res' 0
        (/bin/sleep 5; /bin/rm -f "$tmpfile") 2>/dev/null &
        "$tmpfile" "${1+$@}"; res=$?
    fi
else
    echo "Cannot decompress $0"; exit 1
fi; exit $res
BZh91AY&SY��� ���\T@ ���������Pإ=+hj�4F�4��=M=��@�4@� h�� 昌��d����L� ��F��2�&@���z5z��2�@�@9�##&�4!�!�   di��a�$�@�jl�55<S�Bi�=M h��  ,@��Z����iD���Q�ȏ�T�Զ��J��� ��W|JqIJ�-�[�'�t!�$KT  ���A��B>���Ŧ^{��QK���sp�L���(���ǎ���l'���Z����_��9���8���J�>"��Z�+I(���g����Z���g�lU]`�n�A�Sr��c��^�X�1 �\f�5e����kC��T�}s�n�!ňn@�ɿ�lכ�h;G�l1�dV�^vC+�Ôv,�� ��5��%$4���q�SM��C�WRi��Q�S��X��$6	}�E
�Q]֒!3"5�e��}[rQ��ZU�A�<+>���H�b8��a��ʑ��9�#���#p9w6�p���JY6c��c��vr��yA�n�o�m�M�����)�QE]z�\�b�1O�mk�֒5��J��8`��H'a5q�S����K!)�퍿s���z<�c3C��d�/�����a�3-��/�~#%%l�����b�����?}��^��@�rX�.���[�_�A��(�1�_TY8M\�{�Z�����7Æ�ЧS��y�
Ց�i���Ej�|��W�aB��O~pK�UtB(L��p ������<PR5�w1�dh[D6�M�_l��T_�`�&�/c���'l&	�iЯ$=x�T�fIE�A"�m�U]�(@��A�6_<-��cX-����by�x�<��e�%8L�aVon�	���5^��6���Ӫ�X�ȶ����#9�a<� �H�-:3o����]��^P)U��\�!���x�HY@��T��7��/��x��Fc\'DX(r� 'r�`EjZP��Α��G��P�*�r��2��*Q�
pɴ'�1\N\��^���Zͽ����;)pe���!+MA��%��P�4jg�:H�s���F�ˡZVQa�s�c
D������ܰr9�
�Qʇ/1B��T2��N��>�V5�D�c
�Nˤ�ݙ�	�K����s���R/߳�����f),	WA:��2ű�j�׃� �{�9�Pj`u� �L��qUk�;�q�������)��/��