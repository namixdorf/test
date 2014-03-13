
function initialize() {
  var feed = new google.feeds.Feed("http://feeds.inc.com/home/updates");
  feed.load(function(result) {
    if (!result.error) {
      var container = document.getElementById("feed");
			if(container) {
      	for (var i = 0; i < result.feed.entries.length; i++) {
        	var entry = result.feed.entries[i];
		      var parsed_content = $.parseHTML(entry.content),
		          image = parsed_content[0],
		          title = entry.title,
		          snippet = entry.contentSnippet;
		      var div = document.createElement("div");
		      div.className = "rss_item";
		      h3 = document.createElement("h3");
		      h3.appendChild(document.createTextNode(entry.title));
		      p = document.createElement("p");
		      p.appendChild(document.createTextNode(entry.contentSnippet));
					a = document.createElement("a");
					a.setAttribute('href', entry.link);
					a.setAttribute('target', "_blank");
					a.innerHTML = "(Read more)";

		      container.appendChild(div);
		      div.appendChild(image);
		      div.appendChild(h3);
       		div.appendChild(p);
					p.appendChild(document.createTextNode(" "));
					p.appendChild(a);
				}
      }
    }
    var images =$('.rss_item img');
    for ( var i = 0; i < images.length; i++) {
      images[i].removeAttribute('style');
      images[i].removeAttribute('align');
      images[i].className = "rss_image";;
    }
  });
}
google.setOnLoadCallback(initialize);

google.load("feeds", "1");

var content = '"<img src="http://www.inc.com/uploaded_files/image/100x100/desk-in-field-1940x900_28914.jpg" align="left" style="margin-right:10px" alt=""><br><p>For these founders, launching a company was about a lot more than just becoming their own bosses.</p><p dir="ltr">An employee gets fired, goes on to launch a successful business, and never looks back. Or, an inheritance brings a big financial windfall.</p><p dir="ltr">People start businesses for all kinds of reasons. But I wanted to find some of the more unusual stories. Read on to find tales of founders who were driven to success by a whole lot more than the typical "I need to put food on the table" scenario.</p><p dir="ltr">1. Overcoming anxiety<br> Mary Apple started New York-based <a href="http://PrettyPushers.com">PrettyPushers</a>, which makes labor gowns and other clothes for women during pregnancy, after suffering from an anxiety disorder. "By the age of 24, I was staying in my house for days at a time, afraid of social engagements and even daily errands," she told me. Eventually, she had her own child and realized, for the sake of the baby, she needed to start venturing out. The new company would force her to do that. Now PrettyPushers is thriving with seven employees and $300,000 in annual sales. The lesson: Some founders are motivated not just to rack up sales, but to resolve a personal crisis.</p><p dir="ltr">2. Honoring a loved one by proving your salt<br> Some companies start because the founder wants to prove something. For <a href="http://MKPSoftware.com">MKP Software</a>, there was a deeper motivation. The financial services company, based in Connecticut, is named after the founders son, Michael Kearns, who died of cancer in 2009. His father, Tim, told me he is driven by the memory of his son and a striving to prove to him he can make it. "The honor is in trying to work as hard as my son did in everything he did," he told me. So far, the company has about 50 customers but has developed <a href="http://apps.shopify.com/shoplink-qb">a popular app</a> for exporting Shopify data.</p><p dir="ltr">3. Make a living on your own terms<br> Lia Grimanis started the Toronto-based <a href="http://UpWithWomen.com">Up With Women</a>, which helps homeless women get started in business, after she became homeless herself as a teenager. "I went from living on a dollar a day in the shelter to making around $50,000 my first year in business," she says. "Most of [the women] feel they couldnt rely on a job to give them security, and their homelessness was their proof. They chose self-employment so they could be the best mother to their children and secure their future on their terms."</p><p dir="ltr">4. Beating a debilitating illness<br> Cheryl Laughlin was riding a mountain bike with her boyfriend a few years ago on a mountain bike path when she was bit by a tick. After being diagnosed with Lyme disease, her employer caught wind of the illness and fired her a week later. She suffered from mental lapses, forgetting common names and getting lost in well-known areas. Eventually, she started writing, learned AutoCAD, and became inspired to start a custom jewelry company called <a href="http://bitsoflovestyle.com">Bits of Love</a>. "I had to prove I wasnt damaged goods and that Lyme disease didnt define me," she told me. "That layoff proved to be the craziest push to something even more wonderful than I could have imagined."</p><p dir="ltr">5. You cant sleep otherwise<br> What drives a founder to build a company even beyond reason? For Prashant Singh, it was the fact that he couldnt sleep at night thinking about his idea. The company, <a href="http://thesignals.net">Signals</a>, makes an app that tracks your smartphone usage and estimates how much free time you have. Its attracted major-league fans like <a href="http://scobleizer.com">Robert Scoble</a>. "I used to find it hard to picture myself getting old and becoming like my boss and wondering at the age of 60 if I should have given it a shot when I was 30," he says. By putting the idea into action about a year ago, he found relief. Now, he sleeps just fine.</p><img width="1" height="1" src="http://inc.com.feedsportal.com/c/34760/f/640480/s/2fdc1ada/sc/1/mf.gif" border="0"><br><div><table border="0"><tr><td valign="middle"><a href="http://share.feedsportal.com/share/twitter/?u=http%3A%2F%2Fwww.inc.com%2Fjohn-brandon%2F5-real-founder-stories-what-really-motivated-you.html&amp;t=Why+I+Started+a+Business%3A+5+Unusual+Founder+Stories"><img src="http://res3.feedsportal.com/social/twitter.png" border="0"></a> <a href="http://share.feedsportal.com/share/facebook/?u=http%3A%2F%2Fwww.inc.com%2Fjohn-brandon%2F5-real-founder-stories-what-really-motivated-you.html&amp;t=Why+I+Started+a+Business%3A+5+Unusual+Founder+Stories"><img src="http://res3.feedsportal.com/social/facebook.png" border="0"></a> <a href="http://share.feedsportal.com/share/linkedin/?u=http%3A%2F%2Fwww.inc.com%2Fjohn-brandon%2F5-real-founder-stories-what-really-motivated-you.html&amp;t=Why+I+Started+a+Business%3A+5+Unusual+Founder+Stories"><img src="http://res3.feedsportal.com/social/linkedin.png" border="0"></a> <a href="http://share.feedsportal.com/share/gplus/?u=http%3A%2F%2Fwww.inc.com%2Fjohn-brandon%2F5-real-founder-stories-what-really-motivated-you.html&amp;t=Why+I+Started+a+Business%3A+5+Unusual+Founder+Stories"><img src="http://res3.feedsportal.com/social/googleplus.png" border="0"></a> <a href="http://share.feedsportal.com/share/email/?u=http%3A%2F%2Fwww.inc.com%2Fjohn-brandon%2F5-real-founder-stories-what-really-motivated-you.html&amp;t=Why+I+Started+a+Business%3A+5+Unusual+Founder+Stories"><img src="http://res3.feedsportal.com/social/email.png" border="0"></a></td><td valign="middle"></td></tr></table></div><br><br><a href="http://da.feedsportal.com/r/173607736197/u/49/f/640480/c/34760/s/2fdc1ada/kg/391/a2.htm"><img src="http://da.feedsportal.com/r/173607736197/u/49/f/640480/c/34760/s/2fdc1ada/kg/391/a2.img" border="0"></a><img width="1" height="1" src="http://pi.feedsportal.com/r/173607736197/u/49/f/640480/c/34760/s/2fdc1ada/kg/391/a2t.img" border="0"><img src="http://feeds.feedburner.com/~r/home/updates/~4/ueRrr0HLC9g" height="1" width="1">"'
