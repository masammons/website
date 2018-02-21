---
layout: default
title: Sammons Lab
categories:
 - home
---

<!--<div class="bigspacer"></div>-->

<div class="row">
	<div class="col-md-12">
<!--		<object class="pull-left biglogo" data="/images/nuc.svg" type="image/svg+xml"></object> -->
<!--
        <div class="bigtitle">
        Sammons Lab
        </div>
-->
		<div>
			<img class="img-responsive center " src="/images/nuc.png">
		</div>
	</div>				
</div>

<!--<div class="bigspacer"></div>-->

<div class="row">
	<div class="col-md-12">
		<div class="smallhead">
			We study the interplay between chromatin and transcription factors. Chromatin structure influences the interaction of transcription factors with DNA, a regulatory mechanism with implications in almost every developmental process and disease state. The activity of sequence-specific transcription factors also directly informs local and long-range chromatin structure.
			The lab uses the p53 family of transcription factors as a model to study different facets of the interaction between chromatin structure and transcription factor biology. We use classical genetic and molecular techniques along with genome and systems-wide approaches to study how chromatin and p53 family members interact with and influence each other.   
		</div>
	</div>				
</div>

<div class="hugespacer"></div>

<div class="row">
	<div class="col-md-4">
		<div class="head">
			<a class="off" href="/blog/">Posts</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox">
			{% for post in site.categories.blog limit:3 %}
			
				{% for member in site.categories.team %}
					{% if member.title == post.author %}
						{% assign author = member %}
					{% endif %}
				{% endfor %}		
				
				<div class="note">
					<i class="fa fa-comment fa-fw"></i>
					<a class="off" href="{{ post.url }}">
					{{ post.title }}
					</a>
				</div>
				<div class="smallspacer"></div>
				<div class="smallnote">
					Posted
					{{ post.date | date: "%-d %b %Y" }}
					{% if author %}
					by <a class="off" href="{{ author.url }}">{{ author.handle }}</a>
					{% endif %}						
				</div>
				<div class="spacer"></div>	
				<div class="spacer"></div>				
			{% endfor %}
		</div>
		<div class="bigspacer"></div>		
	</div>
	<div class="col-md-4">
		<div class="head">
			<a class="off" href="/papers/">
				Papers
			</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox">		
			{% for paper in site.categories.papers limit:3 %}
				<div class="note">
					<i class="fa fa-file-text fa-fw"></i>
					<a class="off" href="{{ paper.url }}">
					{{ paper.title }}
					</a>
				</div>
				<div class="smallspacer"></div>
				<div class="smallnote">
					Posted
					{{ paper.date | date: "%-d %b %Y" }}
				</div>
				<div class="spacer"></div>	
				<div class="spacer"></div>				
			{% endfor %}
		</div>
		<div class="bigspacer"></div>		
	</div>
	<div class="col-md-4">
		<div class="head">
			<a class="off" href="/news/">News</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox">
			{% for post in site.categories.news limit:3 %}
			
				{% for member in site.categories.team %}
					{% if member.title == post.author %}
						{% assign author = member %}
					{% endif %}
				{% endfor %}		
				
				<div class="note">
					<i class="fa fa-rss fa-fw"></i>
					<a class="off" href="{{ post.url }}">
					{{ post.title }}
					</a>
				</div>
				<div class="smallspacer"></div>
				<div class="smallnote">
					Posted
					{{ post.date | date: "%-d %b %Y" }}
					{% if author %}
					by <a class="off" href="{{ author.url }}">{{ author.handle }}</a>
					{% endif %}						
				</div>
				<div class="spacer"></div>	
				<div class="spacer"></div>				
			{% endfor %}
		</div>
		<div class="bigspacer"></div>		
	</div>
<!--	
    <div class="col-md-4">
		<div class="head">		
			<a class="off" href="/projects/">News</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox pad-left">
			{% for project in site.data.projects limit:3 %}
				<div class="note">
					<i class="fa fa-edit fa-fw"></i>
					<a class="off" href="{{ project.url }}">
					{{ project.title }} - {{ project.description }}
					</a>
				</div>
				<div class="smallspacer"></div>
				<div class="smallnote">
					Updated
					<a class="off" href="{{ project.commits.first.url }}">
					{{ project.commits.first.date | date: "%-d %b %Y" }}
					</a>
					by
					<a class="off" href="{{ project.commits.first.author_url }}">				
					{{ project.commits.first.author_login }}
					</a>
				</div>
				<div class="spacer"></div>	
				<div class="spacer"></div>				
			{% endfor %}
		</div>
		<div class="bigspacer"></div>		
	</div>

</div>

<div class="bigspacer"></div>

<!--
<div class="head">		
	Misc
</div>
<div class="spacer"></div>
<ul class="list-inline">
	{% for page in site.categories.misc %}
	<li class="footernav">
		&gt; <a class="off" href="{{ page.url }}">{{ page.title }}</a>
	</li>
	{% endfor %}
	<li class="footernav">
		&gt; <a class="off" href="/talks/">Talks</a>
	</li>

</ul>
