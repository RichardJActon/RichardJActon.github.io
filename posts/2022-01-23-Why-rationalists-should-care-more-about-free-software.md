---
layout: post
title: Why rationalists should care (more) about free software
strand: rat
---

*cross-posted to [lesswrong](https://www.lesswrong.com/posts/SoqQ3ShW2xmdpjeZ7/why-rationalists-should-care-more-about-free-software)*

# Why rationalists should care (more) about free software

*especially if you want to upload your brain*

> In the limit condition freedom of compute is freedom of thought.

As we offload more of our cognition to our computational devices we expose a new threat surface for attacks on our ability to think free of malign or otherwise misaligned influence. 
The parties who control the computational systems to which you have outsourced your cognition have a vector by which to influence your thinking.
This may be a problem for you if their interests are not aligned with your own as they can use this power to manipulate you in service of their goals and against your own. 

The fundamental operations of our brains remain difficult to reliably and effectively interfere with primarily because of our ignorance of how to achieve this. This, however, may change as understanding of our wetware increases and subtle direct **manipulations of our brain** chemistry can be employed to influence our behaviour. A highly granular version of this approach is likely still quite far off but it **generally feels more viscerally scary than influencing us via our technology**. Surfing the web without ad-block already feels uncomfortably close to the [futurama gag about ads in your dreams](https://youtu.be/hlCrcMeVZHs). Increasing though this is amounting to the same thing. Indeed our technology is already doing this to us, albeit fairly crudely for now, by exploiting our reward circuits and many other subtle systematic flaws in the human psyche. 

> __What is "free" software?__
> Free as in liberty no as in gratuity, as in speech not beer, politically and not necessarily financially.
> The free software foundation defines free software as adhering to the [four essential freedoms](https://www.gnu.org/philosophy/free-sw.html) which I paraphrase here:
> 
> 0. The freedom to run the code however you wish
> 1. The freedom to examine its source code so that you can understand and modify it for your own purposes
> 2. The freedom to distribute the source code as is
> 3. The freedom to distribute modified versions of the source code
> 
> Note that code which is 'source available' only really gets you freedom 1, depending on how the code is licenced and built this may not get you any of the others including freedom 0. Much ink has been spilt over the use of the term 'open source' as not going far enough as a result.
> Free software is often referred to by the acronyms FOSS & FLOSS (Free/Libre and open source software)

The occasionally controversial but ever prescient [Richard Stallman](https://en.wikipedia.org/wiki/Richard_Stallman) (AKA RMS, AKA [saint IGNUcius](https://stallman.org/saint.html)) has been banging on about the problems of proprietary software for nearly forty years at this point. Having essentially predicted the abuses of today's software giants because he got a bad printer diver in the early 1980s.

The problem that Stallman saw with 'proprietary' software, i.e. software which does not meet the criteria of the four essential freedoms, is one of game theoretic incentives. **Making software free serves as a pre-commitment mechanism by the software authors to not abuse the users of their software**. 
This works by **empowering users to exercise a credible threat of forking the project** and cutting devs abusing their position out of the project and any associated revenue streams. Revenue from free software projects can take a number of forms e.g. premium-hosting, donations/pay-what-it's-worth schemes, & service/support agreements, though how to successfully monetise free software remains a hard problem.

**As the maker of a piece of propriety software, you are not subject to this kind of check on your power** and it is often in your interest to increase lock-in to your product from your users to make it hard for them to leave for a competitor, should they become dissatisfied. The lack of transparency on how proprietary software works can also hide a multitude of sins such as bad security practices and provides scope for extensive surveillance of the users whilst maintaining deniability. Thus **free software can serve as a solution to an alignment problem between makers and users of the software**.

The speculative fiction of [Cory Doctorow](https://craphound.com/bio/) and [Greg Egan](https://www.gregegan.net/) in '[permutation city](https://www.gregegan.net/PERMUTATION/Permutation.html)', along with the speculative (non-fiction?) of [Robin Hanson](https://www.overcomingbias.com/) in '[Age of em](https://en.wikipedia.org/wiki/The_Age_of_Em)' has painted pictures of numerous diverse dystopian futures in which software is used to curtail individual liberties, as well as to gas-light, [frame control](https://www.lesswrong.com/posts/bQ6zpf6buWgP939ov/frame-control), and otherwise manipulate or abuse people and other conscious entities.

Concerns over these potential abuses have been gaining increasing popular attention in recent years though the emphasis has been placed on [Shoshana Zuboff](https://shoshanazuboff.com/book/shoshana/)'s concept of [surveilance capitalism](https://en.wikipedia.org/wiki/Surveillance_capitalism) rather than framing the problem, as I suspect Stallman would, as having its root causes in non-free software. In particular, the popularity of the Netflix documentary '[The Social Dilema](https://www.thesocialdilemma.com/)' made in collaboration with [Tristan Harris](https://www.tristanharris.com/) & [Aza Raskin](https://aza.wtf/)'s [Centre for human technology](https://www.humanetech.com/) has increased public awareness of the problems, solutions, however, remain relatively unspecified.

Computing is becoming ever more ubiquitous, connected and is [beginning to be embedded in our bodies](https://www.xenothesis.com/20_cyberpunk_special/), though mostly still as medical devices for now. Whose phone numbers do you know, what about addresses or how to travel there? How's your mental arithmetic? **how good is your recall of your chat history with all your friends - would you notice it if was subtly edited in retrospect?** Do you have a voice assistant? When was the last time you left your house without your phone? **The more of our cognition takes place external to our brains the more vulnerable we are to the technological capture of our thought processes by misaligned entities**. **If we do not take measures to ensure the alignment of software makers interests with those of software users we invite dystopias galore**.

Over the years there have been many explicit efforts by technology companies to lock general-purpose computing devices to vendor-approved applications (e.g. many game consoles & iPhones). This is often in the name of copyright protection and increasingly in recent years in the name of providing better security. **'Better security' of course begs the question, against what threat model?** It's better security against malicious 3rd parties but what if I'm worried about what the 1st parties are doing? It comes down to the question of **who holds the keys to the locks**. I know I'd want to be the one deciding who's signing keys I trust to go in the future-[TPM](https://en.wikipedia.org/wiki/Trusted_Platform_Module)-analog of the computer system emulating my brain and given their track records it's probably not Google, Apple, Amazon, Facebook *I'm sorry Meta - rolls eyes*, or Microsoft. (The basic competencies, understanding, and good widely adopted low friction systems needed for individuals to be good stewards of their own private keys is a problem in the locked bootloader space as well as the cryptocurrency space.) **It is worth noting that at this point in time it is almost impossible and extremely impractical to get a completely free software computer [down to the firmware level](https://libreboot.org/faq.html).**

**I think a strong case could be made that a 'freedom of compute' should be enshrined in future constitutional settlements on par with freedom of speech as a protection of fundamental freedoms, in service to preserving freedom of thought**. FOSS development has been [discussed in the EA community](https://forum.effectivealtruism.org/posts/rfpKuHt8CoBtjykyK/how-impactful-is-free-and-open-source-software-development) as a potentially valuable intervention. Developers seem to be overrepresented in the rationalist community so maybe this is a bit of a touchy subject for any of us working on proprietary code. I'm of the opinion that we as a community should advocate for free software and that there is a certain synergy between the free software movement's goals and those of the rationality community, I'd be interested to hear contrary opinions. 

**Well-aligned software has the potential to massively improve our lives both at the individual and societal levels**, [look at what Taiwan is doing with open software in digital governance](https://www.youtube.com/playlist?list=PLNEfwKn4eF0Viixb5Np6YDrWFw17PvH9z). Making use of some of the same behavioural modification tricks currently used to sell us crap we don't need and immiserate us as a side effect so that we can be sold the cure can be turned to good. Helping us to establish good habits, to break bad ones and beat [akrasia](https://www.lesswrong.com/tag/akrasia). To collaborate and communicate more deeply and effectively, instead of more shallowly and ineffectually. To be understood not misunderstood, seen for who we are and not through the funhouse mirror of beautification filters. To build a [fun](https://www.lesswrong.com/tag/fun-theory) world together, not a depressing and solipsistic one.

__Disclosure: I am an associate member of the FSF, and pay them an annual membership fee & the link on '[beginning to be embedded in our bodies](https://www.xenothesis.com/20_cyberpunk_special/)' is a shamelessly self-promotional link to an episode of my podcast were my co-host and I discuss embedded tech and its implications at length__


