# get package python module destination
installed_module_path=$(python3 - << EOF
from pathlib import Path
import patch_msg

file = Path(patch_msg.__file__)
dir = file.parent
print(dir)

EOF
)

source_package_path=$(rospack find patch_msg)

patch -r - -b -p0 --forward --follow-symlinks $installed_module_path/msg/_State.py $source_package_path/msg/_State.py.patch
