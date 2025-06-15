# The 'Hacky but Handy' Nextcloud AIO Backup Script Adventure

Hey folks, Sammy Lord here, diving deep into the land of bash scripts, cron jobs, and that eternal quest for automation elegance—or in my case, the beautifully chaotic cousin: functional hackery.

So, what's cooking? Let me introduce you to my Nextcloud AIO backup script. Yes, it’s a little scrappy, a tad makeshift, but it gets the job done with all the charm of a duct-taped spaceship. 🚀

### The Magic Behind the Madness

Every month, like clockwork—or should I say, like *cronwork*—this script swings into action:

```bash
0 0 * * * /path/to/your/backup-nextcloud.sh &
```

This line? It’s the unsung hero, it runs the script that is checking daily if it’s time to shine (a.k.a. if 31 days have passed). If yes, it triggers a Nextcloud AIO backup. If not, it shrugs, sips its virtual coffee, and waits till tomorrow.

### But Why So Hacky?

I hear you. "Sammy, isn’t there a simpler way?" Oh, how I wish. But sometimes, the simplest solutions are born from a mix of desperation, caffeine, and the unwavering belief that *"if it works, it’s not stupid."*

Could it be prettier? Sure. Could it involve fewer existential checks? Absolutely. But it’s like that odd Ikea shelf you assembled backward—it’s standing, it’s holding books, and you’re weirdly proud of it.

### Final Thoughts

So here’s to the scripts that chug along faithfully in the background, the cron jobs that never sleep, and the charmingly hacky solutions that keep our digital lives ticking.

Stay scrappy, stay savvy, and may your backups always run when you forget they exist.

– Sammy Lord
