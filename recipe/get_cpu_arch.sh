get_cpu_arch() {
  local CPU_ARCH
  if [[ "$1" == "linux-64" ]]; then
    CPU_ARCH="x86_64"
  elif [[ "$1" == "linux-ppc64le" ]]; then
    CPU_ARCH="powerpc64le"
  elif [[ "$1" == "linux-aarch64" ]]; then
    CPU_ARCH="aarch64"
  elif [[ "$1" == "linux-s390x" ]]; then
    CPU_ARCH="s390x"
  elif [[ "$1" == "linux-armv7l" ]]; then
    CPU_ARCH="armv7l"
  else
    echo "Unknown architecture"
    exit 1
  fi
  echo $CPU_ARCH
}

export CBUILD="$(get_cpu_arch $target_platform)-${ctng_vendor}-linux-gnueabihf"
export CHOST="$(get_cpu_arch $ctng_target_platform)-${ctng_vendor}-linux-gnueabihf"
