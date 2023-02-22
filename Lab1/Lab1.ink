//Ștefan Nistor, Corețchi Mihai FAF-211

VAR motivation = 0
VAR hero = "Jack"

-> Start
=== Start ===
Once upon a time, in a far-off kingdom, there lived a tailor named {hero}. He was renowned for his skill with a needle and thread.
-> Meeting

=== Meeting ===
One day, a wealthy customer came to {hero}'s shop and asked him to make a beautiful dress for his daughter. {hero} was thrilled to receive such a prestigious commission and asked for more details.To this the customer said:
-The dress should be made out of gold and have diamond stitchings all around it.

{hero} thought for a moment and said:
* -This request is too expensive and I dont have the money for it.
-> End
* -I will do everything in my power to meet your expectations.
-> Dress

=== Dress ===
{hero} worked day and night, pouring all his skill and creativity into the dress. Finally, it was finished, and he proudly showed it to the customer. The customer was impressed with the dress, but he noticed a small mistake in the stitching.
*Ignore the mistake and be a Chad.
-> Refund2

*Try to fix the mistake.
    -> Mistake

=== Mistake ===
The customer demanded that {hero} fix the mistake before he would pay for the dress. {hero} knew that it would take him hours to undo the stitching and redo it, but he didn't want to lose the commission. He reluctantly agreed to fix the mistake.
~motivation+=10
-> Payment

=== Payment ===
After hours of work, {hero} finally fixed the mistake and the customer was pleased. He paid {hero} a handsome sum for the dress and left. {hero} felt exhausted but satisfied with his work.
* If {hero} decides to take a break
    
    -> End2
* If {hero} decides to start a new project
    {hero} feels reinvigorated after completing the commission and decides to start a new project.
    -> NewProject
~motivation+=30

=== NewProject ===
{hero} gets a new commission to make a suit for a wealthy businessman. He's excited to try something new.
-> Suit

=== Suit ===
{hero} gets to work on the suit, but he finds that he's having trouble with a particularly tricky part of the design.
* If {hero} figures it out
    {hero} takes a break and comes back to the suit with a fresh mind. He's able to figure out the problem and finish the suit.
~motivation+=40
    -> Payment2
* If {hero} can't figure it out
    {hero} gets more and more frustrated as he tries to figure out the problem. Eventually, he decides to give up and return the commission.
    -> Refund
* If {hero} is feeling confident
    {hero} is super confident and tries to broad his horizons in the world of stitching.
    -> New_Technique
* If {hero} is lost
    {hero} is transported to the past to clear his mind
    ->NewProject
    

=== Refund ===
The businessman is disappointed that {hero} wasn't able to complete the suit, but he understands that not every project works out. {hero} returns the money and feels ashamed that he wasn't able to complete the project.
-> End
=== Refund2 ===
The businessman is disappointed that {hero} wasn't able to complete the dress, but he understands that not every project works out. {hero} returns the money and feels ashamed that he wasn't able to complete the project.
-> End

=== Payment2 ===
After completing the suit, {hero} delivers it to the businessman. The businessman is pleased with the result and pays {hero} handsomely.
-> End
=== New_Technique ===
Feeling confident in his skills, {hero} decides to experiment with a new stitching technique he had recently learned. He starts a new project for a princess.
*If {hero} wants to be fancy
    {hero} decides he wants to create a new gown for the princess
-> Gown
*If {hero} is feeling classy.
    {hero} decides to craft a new tuxedo for the prince.
-> Tuxedo

=== Gown ===
As {hero} works on the gown, he tries out the new stitching technique. At first, he's pleased with how it's turning out, but as he continues, he realizes that the technique isn't working as well as he had hoped.

*If {hero} abandons the technique
{hero} decides that he needs to stick with the techniques he knows best and abandons the new technique. He finishes the gown using his usual techniques.
~motivation+=10
-> Payment3
*If {hero} persists with the technique
{hero} is determined to make the new technique work, so he spends long hours practicing and refining it. Finally, he's able to make it work for the gown.
~motivation+=30
-> Payment3
=== Payment3 ===
After completing the gown, {hero} presents it to the princess. She's overjoyed with how it turned out and pays {hero} generously.
-> End
=== Tuxedo ===
When {hero} presented the tuxedo to the prince, his royal highness decided to make {hero} his daughter's husband. At these words {hero} was overjoyed.
*If Jake decides to wear a black suit at the wedding
-> End3
*If Jake decides to wear a white suit at the wedding
-> End3
=== End ===
{ motivation == 50:
    {hero} is happy in the end. {hero}'s total motivation level is {motivation}% .
    - else:
    {hero} was sad and he died of chronic depression.
    }
 -> END  
    
== End2 ==
{hero} took a break so he is now labeled as a couch potato.
-> END
== End3 ==
They organised a big wedding and lived hapilly everafter.


-> END