# cl-boozer
A script in Common Lisp to spec out booze in terms of dollars per ml of pure alcohol

Boozer.lisp is standard CL, and boozer-ecl.lisp is simplified and altered a bit too work on CL REPL for Android. Otherwise they are the same. 

## Why?

My friends and I were sitting around half corked after the Raptors soundly kicked some Warriors butt, and got to wondering what was the cheapest booze we had. Ends up, simply guessing is harder than you'd expect. Is it cheaper to get drunk on a 3/4 litre bottle of whisky or a fridge full of tall boys of strong Polish beer? How about that enticing bottle of fine Ontario cab-sauv?

In the spirit of competition, this is how I decided to find out.

This turned out kinda neat and vaguely interesting, so maybe I'll turn this into something a little more polished and feature-ful. Feel free to push some code my way if you like the idea. I plan on adding an abv/abw conversion / comparison as well, but first I have to plan out a better UI so it doesn't start to feel like a game of 20 questions. 

## What?

Right now, all it does is ask you for the size of the bottle, the price of the bottle, how much alcohol (in abv) is in the bottle, and what the bottle return is. Of course, "bottle" includes cans, tetra packs, bar glasses, pitchers, etc. 

Where I'm from, beer and small containers are 10c while wine and other larger format bottles are 20c. If your area doesn't do bottle/can returns, then you can just put in a 0 for now.

## License

It's public domain. I mean, its only practical (?) use would be to help you get drunk for the cheapest price possible. So drink a toast for me if you find this at all useful.

## And....?

Oh yea... ends up, Canadian Sherry (Aspera) is by far the cheapest swill we had, at a whopping 6 cents per ml of alcohol. Wanna get smashed, that's how you do it! They're all priced similarly here, but ymmv.

```
Enter bottle size in mL: 750
Enter price in dollars: 9.20
Enter abv: 20
Enter bottle return in cents: 20
That's $0.060 per mL of pure alcohol.
```

Experimenting with different values, I compared the price of a 6 pack of No Name beer, which by definition should be among the cheapest of the beers. Here's the result:

```
Enter bottle size in mL: 341
Enter price in dollars: 1.74
Enter abv: 5
Enter bottle return in cents: 10
That's $0.096 per mL of pure alcohol.
```

Here is the result for a can of Tatra (one of my favourites):

```
Enter bottle size in mL: 500
Enter price in dollars: 2.15
Enter abv: 5.5
Enter bottle return in cents: 10
That's $0.075 per mL of pure alcohol.
```

In Canada, we often assume Euro products are more expensive than our more local items. Looks like that's not always the case! Although a good lot of the different drinks I compared were often higher than $0.10/ml of pure alcohol, so the No Name brand beer is still cheaper than most if that's your goal.

# PLEASE DRINK RESPONSIBLY

