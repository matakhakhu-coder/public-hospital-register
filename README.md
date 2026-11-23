# Public Hospital Services Register

A dated, source-cited register of what South African public hospital departments actually offer.
Every field is unconfirmed until verified, with who confirmed it, how, and when.

Independent project by Zone2Freelancers. Not an official channel of any health department.

## Layout

- `data/hospitals/`  one JSON file per hospital (the source of truth)
- `STATUS.md`        confirmed vs unconfirmed fields
- `TODO.md`          what to confirm next, and exactly how
- `log/`             one dated note per working session
- `site/`            static public progress page (reads the data)
- `sync-site.ps1`    copies data and logs into `site/data/` for the page

## Workflow

1. Confirm a field in person or by phone.
2. Edit the hospital JSON: set value, status "confirmed", source, confirmedOn.
3. Tick it off in TODO.md and add a line to today's file in `log/`.
4. Run `.\sync-site.ps1`, commit, push. The public page updates.

## Field status values

- `unconfirmed`   nothing verified yet
- `found-online`  seen in a published source, not yet verified on the ground
- `confirmed`     verified by a person, with source and date
