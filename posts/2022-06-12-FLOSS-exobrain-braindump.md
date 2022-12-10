---
layout: post
title: FLOSS Exobrains Braindump
strand: rat
---

I set myself the constraint of using of Free/Libre and open source (FLOSS) software tools for the task of creating an exobrain. 

Here are some of the tool's I've considered and in some case am using to do this. First Why  did I impose this constraint? I regard it as as an essential feature of a exobrain that it can be private, secure and will always accessible to me in an open an interoperable format into the future. This way you can own the data in your exobrain and still have access to it if the company that makes the product/service that you are using goes out of business. I have philosophical and ethical problems with proprietary software (see: [GNU philosophy](https://www.gnu.org/philosophy/)) & consider a right to privacy to be of fundamental political importance (see: [Privacy is Power](https://openlibrary.org/works/OL24353841W/Privacy_is_Power).
I've added a password manager as an essential component of a modern exobrain and some notes on private communications.


## meta (apps / platforms / tools) 

These are tools which facilitate building an exobrain on your own private cloud so you can access it anywhere and retain data ownership.

- **[Nextcloud](https://nextcloud.com/)** is the first (meta)application to mention. is is a self-hosted google drive / drop box / one drive etc. replacement. It has many features and extensions that could potential fulfil all your exobrain app categories for notes, calandar & tasks. The key feature for me is calendar and contacts (this can include calendar based tasks for those who use their email's todo list)
	- Nextcloud features (too many to mention so some highlights, there are also extensions with [apps](https://apps.nextcloud.com/)
		- Nextcloud Deck for Kanban - style task boards
		- Calendar/contacts sync and management via webDAV with web interfaces
		- Integration with A choice of 2 collaborative document editors Collabra (libreoffice) and onlyoffice
		- dedicated Mobile apps for tasks, recipes and other things.
	- How to Host nextcloud
		- To self-host nextcloud I recommend setting up a [TrueNAS](box https://www.truenas.com/) on which to host a nexcloud instance. It has a simple interface to do this and is built of the highly robust ZFS file system which provides the advanced user with what I regard as the best available guarantees or data integrity and security available in any storage solution, especially for secure encrypted off-site backups.
			- _Advanced note_, encrypted ZFS raw snapshots should be pulled from your NAS by a remote backup system which never sees the encryption key and by a user with only the permissions necessary to do this sync over ssh. Your NAS should not be able to access the remote system over ssh only the other way around and limited to only running the sync command by configuring restrictions in authorized_keys (consult [Jim Salter ARS technica blog](https://arstechnica.com/gadgets/2021/06/a-quick-start-guide-to-openzfs-native-encryption/) for advanced ZFS tips)
		- Advanced mode - roll your own Linux host, there are many ways to do this.
		- Many virtual private server providers offer '1-click' deployments of Nextcloud e.g. Linode however you are still entrusting your data to a 3rd party if you take this approach
	- Nextcloud alternatives:
		- **[Cryptpad](https://cryptpad.fr/)** - very good lacks the extensibility of Nextcloud, **has a paid hosting option** Security and encryption model are baked into the design unlike Nextcloud which it is easier to insecurely misconfigure
		- File sync only **[syncthing](https://syncthing.net/)*
- _NOT FULLY OPEN_ [tailscale](https://tailscale.com/) VPN This tool makes it very simple to keep your home servers on closed VPN whilst easily being able to access them from anywhere. The service for which there is a free (financially) tier handles the key exchange but once established all traffic is peer to peer over a wireguard based mesh network. There is a self-hostable but less featurefull key exchange server for the uber-paranoid with some extra computer networking skills. (Note that this is distinct from using a VPN to obscure the point of origin of your web traffic for this I currently recommend [Mullvad VPN](https://mullvad.net/en/) for a number of reasons including that you can pay anonymously with monero)
        

- **Notes Apps**
	- **[logseq](https://logseq.com/)** - My Current Favourite. Somewhat similar to obsidian
	- emacs org mode & org roam (emacs is ostensibly a text editor but it's more of a lifestyle)
	- [Carnet](https://apps.nextcloud.com/apps/carnet) a google keep-like Nextcloud note app 
	- **[Joplin](https://joplinapp.org/)** - markdown based notes app (web/desktop/mobile), cloud hosted option or many other could sync options including nextcloud, quick grab browser plugins
	- [tiddlywiki](https://tiddlywiki.com/index.html) A non-linear personal notebook in the form of a WIKI, local or hostable
	- [minder](https://github.com/phase1geo/minder/) for fans of mind mapping
	- [Dendron](https://www.dendron.so/) for VScode/([VScodium](https://itsfoss.com/vscodium/)) aficionados
	- [Zotero](https://www.zotero.org/) Ideal for academics who need a reference manager, supports notes and PDF annotations tags etc.  has many integrations including with logseq. This make a good supplement to a notes system for managing source materials that you reference in your notes. It also has a built in feed reader which facilitates the import of new articles ets. into your library. For biosciences people this pairs nicely with the feature in [PubMed](https://pubmed.ncbi.nlm.nih.gov/) that lets you turn any search into an RSS feed (just click the create rss button under the search box). There is a web version with a nice sharing feature.
- **Task management**
	- [super-productivity](https://super-productivity.com/) - sleek task and time management with web, desktop & mobile apps. Syncs via popular cloud storage options and webDAV
	- [Nextcloud deck](https://apps.nextcloud.com/apps/deck) - kanban like task management within Nexcloud
	- [Nextcloud Tasks](https://apps.nextcloud.com/apps/tasks)
	- [planner](https://flathub.org/apps/details/com.github.alainm23.planner) - has todoist integration and sync, alternatively CalDAV based sync (desktop only)
	- todo.txt format editors e.g. [go-for-it](https://github.com/mank319/Go-For-It) & [sleek](https://github.com/ransome1/sleek) for those who like text files but also pretty guis. sync is just file sync.
	- [WeekToDo](https://weektodo.me/) a task manager/planner which may integrate well with the weekly review strategy (desktop & webapp only)
- **Calendar**
	- KOrganiser - a desktop calendar client which can sync with remote calendars, excellent views and highly customisable (alternatively [kalendar](https://apps.kde.org/kalendar/) for a slightly simpler interface)
	- [Nextcloud Calendar](https://apps.nextcloud.com/apps/calendar)
	- [lightning calendar](https://www.thunderbird.net/en-US/calendar/) for thunderbird mail interfaces with a calDAV calendar 
	- (NON-FREE proton and tutanota calandars for privacy)
- Password / private key management
	- **[bitwarden](https://bitwarden.com/)** 
		- cloud based password manager with a self-hostable option, very featureful
	- **[keepass](https://keepass.info/)**
	- _NOT FULLY OPEN_ but get some **[Yubikeys](https://www.yubico.com/)** to use as your Second factor in multi factor authentication, this is better than TOTP codes. (avoid SMS 2FA if at all possible, number spoofing is an issue)
- (Specially for data science types) 
	- If you need a collaborative environment for analysis/development with reproducible containerised computation in Python/R (with jupyter/Rstudio) and dataset sharing, gitlab integrations and git-lfs then [Renku](https://renkulab.io/) is for you 


## Private comms
- **email**
	- self-hosting email is nightmarish if you want it to be actually reliable for communications it is unlikely to be a good idea for you unless you have a very specific threat model.
		- This said what are the **best Non-free options**?
			- [ProtonMail](https://proton.me/) - mostly interoperable with standard PGP email encryption
			- [tutanota](https://tutanota.com/) - different approach to mail encryption, better metadata protection
		- Use these in-conjunction with an email aliasing service such as [simplelogin](https://simplelogin.io/) (now owned by proton) This also has integrations with bitwarden so that you can generate a random email alias as well as a random password when signing up for services. (This reduces your risk when account info is lost in data breaches as your email no longer identifies you for things like credential stuffing attacks)
- Secure Messaging apps
	- [Signal](https://www.signal.org/) - perhaps the most popular alternative, does have a single central server infrastructure
	- Element (and other matrix protocol apps) - operates a federated server model, **encryption is not required by the protocol**
		- [Element](https://element.io/) - somewhat discord like in it's community and group features
		- Coming soon to the matrix protocol is [RocketChat](https://rocket.chat/) and excellent mature slack alternative
	- [Session](https://getsession.org/) - a Signal fork with no need to phone number, blockchain based global unique identifiers
	- [Briar](https://briarproject.org/) XMPP protocol based with local mesh network options over wifi/bluetooth when cellular networks are unavailable - good for disasters when infrastructure might be down
- Side note on Phone security
	- Phone security is particularly challenging right now, there are no truely good options which do not entail significant functionality compromise. Hardware wise nothing ideal exists, what would be desirable is a phone with hardware dip switches which physically disconnect the wi-fi/bluetooth, cellular modem, camera & microphone as well as having a removable battery, an eSIM and a re-lockable boot-loader. Many phones running a mainline linux kernel still lack or have buggy basic functionality though android app emulation options are improving with the waydroid project.
		- [calyxOS](https://calyxos.org/) is among my prefered de-googled android options, but limited to specific hardware mainly google pixel phones
		- [Lineage OS](https://lineageos.org/) is less hardcore and will permit you to have a minimum viable google services option and work if you don't have a locked boot-loader, available on many more handsets
	- [silent-link](https://silent.link/) will permit you to acquire an anonymous phone number which can be used with your calyxOS phone with an eSIM This number is **data only or SMS and inbound voice only, NO OUTBOUND CALLS** It should be used in conjunction with a VOIP service for all actual calls. It can be paid for anonymously with monero.
		- note use a roaming phone not one from your own country this dramatically reduced the data available about you to the telecoms providers.
		- Your phone's IMEI is still a unique identifier so you can be de-anonymised by cross referencing it with your location data from other sources. It is often illegal to change this number but swapping between a few different eSIMs can get you part way of the way there as this changes your IMEI with each eSIM.
	- Desktop PCs are if anything worse in some regards than phones but less of a liability with respect to location data and at least with better alternative software options which match or exceed the capabilities of the main commercial options. Use a well regarded Linux Distro encrypt your data and update regularly, macOS and windows are privacy nightmares.
	
