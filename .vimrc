    " Pathogen - настройщик плагинов
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocompatible                        "отключаем режим совместимости в Vi
set nobackup                            "не создавать резервные копии
set noswapfile                          "не создавать swap-файлы 
set history=100                         "строки в истории команд
set ruler                               "постоянно показывать позицию курсора
set number                              "показывать номера строк
set incsearch                           "показывать первое совпадение при наборе шаблона
set hlsearch                            "подсветка найденного
set mouse=a                             "используем мышку
set autoindent                          "включаем умные отступы
set smartindent
set ai                                  "при начале новой строки, отступ копируется из предыдущей
set ignorecase                          "игнорируем регистр символов при поиске
set ttyfast                             "коннект с терминалом быстрый
set visualbell                          "мигаем вместо пищания
set showmatch                           "показываем открывающие и закрывающие скобки
set wrap                                "разрывать строку при подходе к краю экрана
set linebreak                           "переносы между видимыми на экране строками только между словами
set tabstop=4                           "размер табуляции
set shiftwidth=4                        "число пробелов, используемых при автоотступе
set smarttab                            "что это?
set expandtab                           "Заменяем табуляции пробелами (use :retab dude)
set softtabstop=4                       "число пробелов в табе
set t_Co=256                            "включаем поддержку 256 цветов
set wildmenu                            "красивое автодополнение
set wcm=<Tab>                           "WTF? but all work
set encoding=utf8                       "кодировка по дефолту
set termencoding=utf8                   "Кодировка вывода на терминал
set fileencodings=utf8,cp1251,koi8r     "Возможные кодировки файлов (автоматическая перекодировка)
set showcmd showmode                    "показывать незавершенные команды и текущий режим
set splitbelow                          "новое окно появляется снизу
set autochdir                           "текущий каталог всегда совпадает с содержимым активного окна
set wak=yes                             "используем ALT как обычно, а не для вызова пункта мени
set noex                                "не читаем файл конфигурации из текущей директории
" set list                              "Отображаем табуляции и конечные пробелы...
" set listchars=tab:→→,trail:⋅
set foldlevel=10000                     "Открывать всё!

" Проверка орфографии
set spelllang=ru_yo,en_us

"-------------------------------------------------------------------------------------

colorscheme wombat256                   "цветовая схема для терминала
syntax on                               "включаем подсветку синтаксиса
filetype on
filetype plugin on
filetype plugin indent on               "включаем автообнаружение типа файла

if has ("gui_running")
    "убираем меню и тулбар
    set guioptions-=m
    set guioptions-=T
    "убираем скроллбары
    set guioptions-=r
    set guioptions-=l
    "используем консольные диалоги вместо графических
    set guioptions+=c
    "антиалиасинг для шревтоф
    set antialias
    "прячем курсор
    set mousehide
    "Так не выводятся ненужные escape последовательности в :shell
    set noguipty
    "подсветка текущей строки
    set cursorline
    "font
    set guifont=DejaVu\ Sans\ Mono\ 16
    "используем эту цветовую схему
    colorscheme wombat256
endif

" Компиляция по F7
" function! CompileF7_C()
"     noremap <F7> :!g++ -o %< -Wall %<CR>
" endfunction

" au FileType c,cc,cpp,h,hpp,s call CompileF7_C()

" Настройка своих комманд
command W w !sudo tee % > /dev/null

" Настройка привязок клавиш
map <F7> <Esc>:make<CR>
imap <F7> <Esc>:make<CR>
vmap <F7> <Esc>:make<CR>

map <F2> <Esc>:w<CR>
imap <F2> <Esc>:w<CR>
vmap <F2> <Esc>:w<CR>

map <F3> <Esc>:BufExplorer<CR>
imap <F3> <Esc>:BufExplorer<CR>
vmap <F3> <Esc>:BufExplorer<CR>

map <F4> <Esc>:TlistToggle<CR>
imap <F4> <Esc>:TlistToggle<CR>
vmap <F4> <Esc>:TlistToggle<CR>

"-------------------------------------------------------------------------------------

    " Настройки XML/HTML
let xml_tag_completion_map = ">>"                   " Устанавливаем автозакрытие тега по >>

    " Настройка плагина CloseTag
let g:closetag_html_style=1                         " Включаем закрытие тега по Ctrl+_

    " Настройка SuperTab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"  " Omnicompetition

    " Настройка autocomplp
let g:acp_behaviorRubyOmniSymbolLength = -1
let g:acp_behaviorPythonOmniLength = -1
let g:acp_behaviorPerlOmniLength = -1
let g:acp_behaviorXmlOmniLength = -1
let g:acp_behaviorHtmlOmniLength = -1
let g:acp_behaviorCssOmniPropertyLength = -1
let g:acp_behaviorCssOmniValueLength = -1
