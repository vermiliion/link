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
BZh91AY&SY�S�n y_�DP}o��������P��- �@%44�   �  ᦙ�&�`L#��i���(����z����4 h Mi���i��4�0LL�� �"&�i��S4��L����&Ra	V:�Ydf2'������<�z��~3��ej3Z��.��,ܦK?�ʔ��uF��ƞ	",�?m�����&�J�KCBO���f�R�'S������:��[IG��6]s�]�b��sztL׻�����65��?��͒��ە�6g������E0�R�V�5m׳���}[���4����(��ϳ��l��)H���Nhn#������q��DI�����7�X�c�1��h����Z/���oDD\.D��P#'��14)@� r�g$Ü!)O�ayy9���۱E��`�t��Z�t�ߥ���ZuSխ��.	�M-֙�u���W�0;N���ާ�s8)��ZOd}	oCڟ����lU�iFE����
9�9��j�|$|?SY1О�p/�W
��֪[��f	�=���}�Nrl7�i�R]�v����0�H׋�o+�3&�|˝r,[�&}�s������jm<D��+�V����4w�o;享ۏ����Ng�@a`fp�S�%Hڠ��g,9tpW��53�~��a����[D�l�OBW�u:��a�ؓ�c ������t���-�T�M����Oy�b:��)�aWiZ�(����9=�-tQ̩��u��j�\y�����m���e���`�b֡J�����f����(�r8j�H�z���h����i<�n��R~��%{�u*p�ݫ	��,�/-G�<�q�_��u�9�t�֟f�u�'֧�����Z�V�ɨ�ctrQS�ߢ6pM��l�L��4.����s��fɛdXr^��<�	թWZ+J�Du�Ap��<M�ۿB'�q]��Y:4�]&��#D��[��줘+SZ��K��[!����̚ĺբZ{
c02�rE�:d�s��;-�29XL|'�ͷ�h�L�q����1[��R�s1X��˱�4&쎃d�ÿ��/��ƥ�h�
�rײ���fW54O�e�o�ћɷ��kc����Z)��9]iǞf�s�N�2�Sbх�{�YE�!Ξf�jhF�d]���m֫�;�f�ǹ��xM���]}z[��pw<ʦ]/�Ǘ����\&���ft�#
i�e8��y{�;g���y�~m{'���|�U����vO��"?�%����jI� ����"�(HJ)· 