# README
<!-- image or gif -->
![ctrlp-mr example animation](https://user-images.githubusercontent.com/96727/134691769-8386412b-8ce4-401a-82ac-303990a20058.gif)

## Overview

This plugin are mr.vim mru/mrw/mrr selector in CtrlP.

## Requirement

Install [lambdalisue/mr.vim](https://github.com/lambdalisue/mr.vim)

## Usage

for [dein.vim](https://github.com/Shougo/dein.vim) toml wrote as below:

```toml
[[plugins]]
repo = 'tsuyoshicho/ctrlp-mr.vim'
depends = ['ctrlp.vim']
hook_add = '''
  let g:ctrlp_extensions = get(g:, 'ctrlp_extensions', [])
        \ + ['mr/mru', 'mr/mrw', 'mr/mrr']
'''
```

```text
:CtrlPMRMru
:CtrlPMRMrw
:CtrlPMRMrr
```

## Features

Support mru/mrw/mrr list

## Reference

## Author

[Tsuyoshi CHO (@tsuyoshicho)](https://github.com/tsuyoshicho)

## Licence

[MIT License](LICENSE)

<!-- template from https://qiita.com/Kotabrog/items/fb328b72ac94137897af -->
