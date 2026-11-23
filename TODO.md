# TODO

Each item says what to do and where the answer goes. When done, set the field to "confirmed" in the hospital JSON, add source and date, tick it here, and log it in `log/`.

## Louis Trichardt Memorial, Optometry (in person)

- [ ] Service days and hours. Photograph the notice board or ask at the window. Goes in `fields.days` and `fields.hours`.
- [ ] Is a referral letter from a primary clinic required? Goes in `fields.referral`.
- [ ] Which UPFS fee category applies, and what proof of income or grant status is accepted. Goes in `fields.feeTier`.
- [ ] Full list of documents to bring (ID, referral, proof of income, anything else). Goes in `fields.documents`.
- [ ] Can a patient fit new lenses into their own frames? Goes in `fields.ownFrames`.
- [ ] Hospital phone number and street address, confirmed on site. Goes in the top-level `phone` and `address`.
- [ ] Note who you asked (role, not name) and the date, for every answer. Goes in `source`.

## Next departments (after optometry works as a pattern)

- [ ] Dental and Oral Health
- [ ] Pharmacy
- [ ] Radiology

## Build steps

- [ ] Step 2: push to GitHub (see PLAN.md)
- [ ] Step 3: deploy the `site/` folder on Vercel (see PLAN.md)
