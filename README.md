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

```bash`
make clean
```

## Xem trước PDF trong VS Code (split window)

Mở thư mục gốc `vansing_gradient` trong VS Code và dùng extension **LaTeX Workshop**.
Cấu hình trong `.vscode/settings.json` dùng XeLaTeX, tự build khi lưu file và
đọc PDF từ `output/pdf`, cùng vị trí với `make pdf`.

1. Mở `vanishing-gradient/vanishing_gradient_outline.tex`.
2. Nhấn `⌘⌥B` (macOS) để build lần đầu.
3. Nhấn `⌘⌥V` để mở PDF ở khung bên phải.
4. Chỉnh sửa rồi nhấn `⌘S`: tài liệu tự build và PDF tự cập nhật sau khi build thành công.

Có thể dùng Command Palette (`⌘⇧P`) với các lệnh **LaTeX Workshop: Build LaTeX project**
và **LaTeX Workshop: View LaTeX PDF file**. Trên Windows/Linux, dùng `Ctrl` thay cho `⌘`.

SyncTeX được bật để PDF nhảy tới vị trí con trỏ sau khi build. Nhấn `⌘⌥J`
để đồng bộ vị trí thủ công. Nếu đã đóng khung PDF, nhấn `⌘⌥V` để mở lại.

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
