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
BZh91AY&SY'��> ���\T@ ���������PدlQh!��I�h�H̦�#�<d��f(�G� 9�##&�4!�!�   di��a�"I�d&���h�bCA�@z����zA�昌��d����L� ��F��2��i��ɍ$j~����M�� 1�P�����k�ʹ�N�9�%ע9�����7���<NEw�S�JT�e"��?���^H�( A�ࠃ6X��#���g��+j�R�Ԝ�!�i��d�sQ!Id�TЎ�u�W��x�L�^CF���ٛH��Vr�-XօE�J�J'��L�{"q-LL�5������)P|4t�n����|�y�~dL�����������|'bV��W��R�y�)M�sxȨ+��7����F��D�=�={�7[�(�^ܼ ��W��II1xz\�)��]�+�4�M��H�#m����jE��2��
�� cjkw���Nx��gR7p�#���1�(	�G*�L6�l�Piݯ9�xãh�Z/)�s�u
���(А�n���PƂ���Ṇnoxʾa
i�QA�ʾ��VϘ5�5�׍���׼]ē��CN�B��MDQeg����-�n\#����Cb�][)^�S��;���MΚ��W�
5�m�d�S(�ؖ������+��Wj������D���2������NVf$̶LM$j8r"�4�5j����fH�V\�$پ�<�r�Z���TJ���k���KJ��Ҥr)_*�^�G�)� �H�D�TQ�D�#�Ř�]s%5i�Xy�ζ�b=.E���:�Ɠ�+[ܬ2�a �%Pd�s%$�2̘&�����(�R-��4-ܪ�6�sё� �Ú�2�h�m�&� 뜼��Ն�?3=�n�	
ӏN Ԕ����b�fC���z-��5^�������6���Pg��]��B���0�K�D�k:��l�\��f�k�(�v���T�٤��S�`��V8����\�,ڑ�Gc�F6��Tym�ν�.&��.J�x@aT�
5��D�PgJ
��zÇ#���9%)�K6��T��=�m�/��q0�uL$�Y��LW 4c�X���
K�}r]Y�?��AYA.�'��q4'��7�. db�z�eYݹ&����V�P�#qzț-@d��@��$h5xH"X���H˖�-�EȬ�)[u���η��P @*�*;���.��;�ZF��̶%,R�qq����)�<tA�