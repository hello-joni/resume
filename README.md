# resume

Joni Hendrickson's resume, hosted at [jhendrickson.dev](https://jhendrickson.dev).

## Build

Requires Nix. From the repo root:

```
nix run
```

Outputs `build/resume.html` and `build/Jonathan_Hendrickson_resume.pdf`.

For a release build into `docs/`:

```
nix run -- --release
```

## Files

- `resume.md` - resume content
- `style.css` - styling
- `generator.py` - build script
- `dictionary.txt` - custom spell-check words
- `flake.nix` - Nix flake defining the build

See `generator.py --help` for options. Read the source files for details.
