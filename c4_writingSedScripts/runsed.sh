#! /bin/sh

for x
do
    echo "Editing $x: \c"
    if test "$x" = sedscr
    then
        echo "not editing sedscript!"
    elif test -s $x
    then
        sed -f sedscr $x > /tmp/$x$$

        if test -s /tmp/$x$$
        then
            if cmp -s $x /tmp/$x$$
            then
                echo "File not changed: \c"
            else
                mv $x $x.bak # save original
                cp /tmp/$x$$ $x
            fi
            echo "Done"
        else
            echo "Sed produced an empty file\c"
            echo " - check your sedscript."
        fi
        rm -f /tmp/$x$$
    else
        echo "Original file is empty."
    fi
done

echo "All done."
