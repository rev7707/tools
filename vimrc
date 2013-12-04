set nocompatible " 오리지날 VI와 호환하지 않음
set autoindent  " 자동 들여쓰기
set cindent " C 프로그래밍용 자동 들여쓰기
set smartindent " 스마트한 들여쓰기
set tabstop=4 "  탭을 4칸으로
set shiftwidth=4 " 자동 들여쓰기 4칸
set expandtab " 탭을 공백으로 변환한다. 만일 Makefile 등에서 탭이 필요한 경우에는 :se noet
set wrap
set nowrapscan " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup " 백업 파일을 안만듬
set visualbell " 키를 잘못눌렀을 때 화면 프레시
set number " 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8 " 파일저장인코딩
set tenc=utf-8      " 터미널 인코딩
set expandtab " 탭대신 스페이스
set hlsearch " 검색어 강조, set hls 도 가능
set ignorecase " 검색시 대소문자 무시, set ic 도 가능
set lbr
set incsearch "  키워드 입력시 점진적 검색
set colorcolumn=80 " 80컬럼에 붉은 줄을 표시한다.
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000 "  vi 편집기록 기억갯수 .viminfo에 기록
set ruler " 화면 우측 하단에 현재 커서의 위치(줄,칸)를 보여준다.
set ls=2 " 항상 status 라인을 표시하도록 함.
set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
set laststatus=2
set wmnu " Tab 자동 완성시 가능한 목록을 보여줌.

"match ErrorMsg '	'
map ,<TAB> :%s/	/    /g<CR> " 콤마(,)와 <TAB>을 순서대로 누르면 탭을 스페이스로 변경.
autocmd BufWritePre * mark a " 편집하던 위치 북마크.
autocmd BufWritePre * :%s/\s\+$//e " trailing whitespace 자동 제거.
autocmd BufWritePre * $put _ | $;?\(^\s*$\)\@!?+1,$d " 파일의 끝부분 빈줄 자동 제거.
autocmd BufWritePre * 0put _ | 0,0;/\(^\s*$\)\@!/-1d " 파일의 앞부분 빈줄 자동 제거.
autocmd BufWritePre * 'a " 편집하던 위치로 이동.

syntax on "  구문강조 사용
filetype indent on "  파일 종류에 따른 구문강조
set background=dark " 하이라이팅 lihgt / dark
colorscheme desert  "  vi 색상 테마 설정

" Vundle Setting
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"My Bundles here:
Bundle 'DoxygenToolkit.vim'


set csprg=/usr/bin/cscope
"==========================CSCOPE
    set csto=0
    set cst
    set nocsverb

    if filereadable("./cscope.out")
       cs add cscope.out
    else
       cs add /usr/src/linux/cscope.out
    endif
    set csverb
"==========================
