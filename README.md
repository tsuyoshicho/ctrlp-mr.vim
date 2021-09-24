# README
<!-- image or gif -->


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
        \ + ['mr_mru', 'mr_mrw', 'mr_mrr']
'''
```

```
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
