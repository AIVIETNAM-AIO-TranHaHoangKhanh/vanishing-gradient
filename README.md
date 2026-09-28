# Vanishing Gradient - LaTeX project

Project chứa bản outline về Vanishing Gradient. Tài liệu dùng tiếng Việt
Unicode nên phải được biên dịch bằng XeLaTeX; không dùng `pdflatex`.

## Build tài liệu chính

Yêu cầu: TeX Live có `latexmk` và `xelatex`.

```bash
make pdf
```

PDF được tạo tại:

```text
output/pdf/vanishing_gradient_outline.pdf
```

Xoá các file trung gian do LaTeX sinh ra:

```bash
make clean
```

## Cấu trúc

```text
.
├── vanishing-gradient/
│   ├── assets/
│   │   └── aio2026_logo.pdf      # Logo dùng bởi tài liệu
│   └── vanishing_gradient_outline.tex
├── output/pdf/                   # PDF build (không commit vào Git)
├── Makefile
└── README.md
```

Các file tạm của LaTeX, `.DS_Store`, thư mục `output/`, `build/` và `tmp/`
đã được loại khỏi Git bằng `.gitignore`.
