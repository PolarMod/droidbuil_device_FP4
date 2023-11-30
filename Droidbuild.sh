setup_target FP4

target_FP4() {
  LOCAL_PATH=$(dirname $BASH_SOURCE)
  include $BASEDIR/droidbuild/build_vars.sh
  TARGET_NEEDS_RESYNC=true
  TARGET_LOCAL_MANIFESTS+=$LOCAL_PATH/manifests/FP4.xml
  TARGET_ARCH_BITNESS=64
  TARGET_CODENAME="FP4"
  TARGET_FULLNAME="Fairphone 4"
  TARGET_BUILDTYPE="userdebug"
  TARGET_SIGNED_BUILD=true
  TARGET_HOSTS_CAT=3
  TARGET_SUPPORTS_GMSCOMPAT=1
  target_build-device
}

droidbuild_module() {
  # Dummy
  echo 1 >/dev/null
}
