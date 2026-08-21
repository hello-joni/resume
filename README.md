# resume

Joni Hendrickson's resume, hosted at [jhendrickson.dev](https://jhendrickson.dev).

## Build

Requires Nix. From the repo root:

```
nix run
```

Outputs `build/index.html` and `build/Joni_Hendrickson_resume.pdf`.

## Files

- `resume.md` - resume content
- `style.css` - styling
- `generator.py` - build script
- `docs/` - GitHub Pages content that permanently redirects to https://joni.site
- `flake.nix` - Nix flake defining the build

See `generator.py --help` for options. Read the source files for details.
