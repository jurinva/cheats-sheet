## grep in doc/docx files
```bash
find . -name '*.doc' | xargs -I{} antiword {} | grep 'content'
```
