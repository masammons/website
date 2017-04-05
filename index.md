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
			Our research integrates mechanistic models of biological processes with population-genetic models to understand the forces shaping genome architecture. We generate high-throughput genomic datasets and use computational models to study how patterns of gene expressions evolve and how various factors influence the dynamics of protein synthesis. 
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
			{% for post in site.categories.blog limit:6 %}
			
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
			{% for paper in site.categories.papers limit:5 %}
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
			{% for post in site.categories.news limit:6 %}
			
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
			{% for project in site.data.projects limit:8 %}
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
