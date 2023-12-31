### AnyKernel custom methods
## dereference23@github.com

check_ksu() {
  if [ -e $AKHOME/KSU_UNLOCK -a -f $AKHOME/ksu.bdf ]; then
    ui_print " " "Flashing KernelSU version...";
    ui_print "This is not secure!";
    bspatch $AKHOME/Image $AKHOME/Image_KSU $AKHOME/ksu.bdf;
    mv -f $AKHOME/Image_KSU $AKHOME/Image;
  fi;
}
