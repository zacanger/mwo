# 뭐?

Is this thing a file, directory, executable, or what?

--------

## Usage:

`npx mwo [foo]`

You can install it globally, if you really want to, with `npm i -g mwo`.

Note: if you have GNU `which`, rather than use this script you should put this
function in your `.bashrc` or similar:

```bash
mwo() {
  thing=$@
  echo "뭐 $thing? "
  (alias; declare -f) | /usr/bin/env which --tty-only --read-alias --read-functions --show-tilde --show-dot $@
}
export -f mwo
```

## License:

[MIT](./LICENSE.md)
