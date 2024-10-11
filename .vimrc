" Инициализация vim-plug
call plug#begin('~/.vim/plugged')

" Плагины
Plug 'tpope/vim-fugitive'               " Работа с Git
Plug 'preservim/nerdtree'               " Файловый менеджер NERDTree
Plug 'ap/vim-buftabline'                " Работа с табами редактора

call plug#end()

" === Настройки для NERDTree ===
" Открыть NERDTree при запуске Vim, если не передан файл
autocmd vimenter * NERDTree

" Закрытие Vim, если это последнее окно NERDTree
autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree')) | q | endif

" === Настройки для vim-fugitive (Git) ===
" Быстрые команды для работы с Git:
" :Gstatus — показывает статус Git
" :Gcommit — коммит изменений
" :Gpush — пуш изменений
" :Gdiff — сравнение текущего файла с последним коммитом
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gd :Gdiff<CR>

" === Настройки для буферов и табов ===
" Показ буферов в табах
let g:buftabline_numbers = 1

" Переключение между буферами
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>

" === Общие настройки ===
set encoding=utf-8
set number          " Включает отображение номеров строк
set noerrorbells    " Отключает звуковой сигнал
set novisualbell    " Отключает визуальный сигнал
set nobackup        " Отключает создание резервных копий
set noswapfile      " Отключает использование swap файлов
set nowritebackup   " Отключает создание временных файлов при записи
syntax on           " Включает подсветку синтаксиса для всех поддерживаемых языков
filetype plugin indent on  " Включает поддержку плагинов и автодополнения
set smartindent     " Включает автоматическое выравнивание кода
set tabstop=4       " Размер табуляции равен 4 пробелам
set shiftwidth=4    " Размер отступа при автодополнении равен 4 пробелам
set expandtab       " Преобразует табуляцию в пробелы
set hidden          " Позволяет переключаться между буферами без сохранения
set cursorline      " Подсвечивает строку, где находится курсор
set showmode        " Показывает текущий режим в строке состояния
set eol             " Автоматически добавляет конец строки в конец файла
