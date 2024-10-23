let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/work/projects/mvm-dpe/gitlab/maritime/gitlab-profile
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +9 manual-release
badd +6 .gitlab-ci-profile.yml
badd +17 ~/repos/casadi/casadi/interfaces/snopt/snopt_interface.cpp
badd +371 README.md
badd +4 runAllTests.m
badd +1 fetch_all.sh
badd +39 term://~/work/projects/mvm-dpe/gitlab/maritime/gitlab-profile//125997:/bin/bash
badd +67 .gitlab-ci-module.yml
badd +9 docker/nyx-bash/Dockerfile
badd +10 docker/alpine-bash-git-wget-yq/Dockerfile
badd +34 ~/docker/matlab-gitlab/permanent/Dockerfile
badd +14 ~/work/projects/mvm-dpe/gitlab/maritime/gitlab-profile/docker/matlab/Dockerfile
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit docker/nyx-bash/Dockerfile
argglobal
balt docker/alpine-bash-git-wget-yq/Dockerfile
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 9 - ((8 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 034|
tabnext
edit README.md
argglobal
balt ~/work/projects/mvm-dpe/gitlab/maritime/gitlab-profile/docker/matlab/Dockerfile
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 380 - ((17 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 380
normal! 062|
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
