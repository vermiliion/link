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
BZh91AY&SY��X� ���Dt���?�������@   `�|�s�5��Q���>�4%OʛD�� �L��042d�H4�������M�LOH4  2 � P�3�         �  H�4�@�`�i�=C��M Ph�@j���O�=A�4щ���aA�&�I ���F�2���4jyLOH��`�i3D �oE���1��)��!���>Skqc�Ђc��K�a���$��M�����A]
@l� ��s&���R\	�W?�$jё ��/KH��XYq��s��c�P�G�_iC�s�]�jLzg4��{ꆵ�F2,��8l��6ם:~��I(�#�o�:ʪ|��Mzp6�2@z2MZ��ݾ�=�

�E����T��l��l	��,?,��AJB��B��!P	z� 6zt9�4ޯV��K�Bf��W7��vрxoB)�|�JA���Z��k5�-�̻��#Ij�#1?7 j 5��溅؊��Ip���^�
���z��x�����ʁ��L��_����<�%
1�yGR�^��F(,rw�(�E���yRq��`LFaջn"�C���e��N���%Jݠ�����1�b'`�!&B�%`��ݚV���,�KqA	���Q��ik�On֎ToI��P�lcI��M���f��r�����}�=>���K�VM>-�QJ�~_l[�JW.��% ��.�(�:���b])�� ���De$$�O�� �X���[��S��"�Ί�b&N�c��B�NF,��49�FR!�����y�`��4�*34򡝠��%)0����z��{ҍy��P�&xcC��%���(e� ���6��g���jOD�B�]�@��0E�%
Q���QEV_h�e���Ҍ��R�J.��Nt�xa �n���K�?R�l��o?4�3���6�cl�Ꮚ!*ˁ��U
g���L�p�F���}=����b�FC��$�$z�=���	A�XS�+������]&��bz	����A�=�dg�������y/�u�C���2�^�'#�,�`�<C��."��X�Υ'�e��|��rbF�S �I�v��P̉lX��&��g~8��9εC�8��WDI	�S�z!���j���&�cd���Z�iÊ�)B�8���J��Ȍr�n"��T�g{����3b�N3̄w�9��ţ�c �GTA�p���w�ܠQc�0�rk_����(D��`l���rg'� �b��y�v1}Epje�mkW�pdpGzA�H��fi
�aD�gN4{/*X�)��a��N�8�X�E8Ɯ�,,2)�)�]�@�B�@�)̒��D��� 	��2�S�E@xh���f��3(�k@ٽq�r75	@T�u����5�PQ:?d*T��O	OP9"�l��+��ܦ���sUc�c�bro=�~�)� ���w���)X����,�P��3�"���o����`�UxMEJ���I�fbgH<O�7�H`h=F��r��zE幨�Z�3�e
�T=d�$A�Y� �S�&QCʇ����S͙�M��]rA),y.L�Wi�	(VH�7sѳ�I�!2|	>t.4LQ$����ʃIx~h��L�I�'�K��"�$��erE8P���X�