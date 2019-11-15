---
layout: default
title: Sammons Lab
categories:
 - home
---

<!--<div class="bigspacer"></div>-->



<!--<div class="bigspacer"></div>-->

<div class="row">
	<div class="col-md-12">
		<div class="smallhead">
			<p> 
			
We study the interplay between chromatin and transcription factors. Chromatin structure influences the interaction of transcription factors with DNA, a regulatory mechanism with implications in almost every developmental process and disease state. The activity of sequence-specific transcription factors also directly informs local and long-range chromatin structure.
</p>
<p>
			The lab uses the p53 family of transcription factors as a model to study different facets of the interaction between chromatin structure, transcription factor biology, and cell fate decisions. We use classical genetic and molecular techniques along with genome and systems-wide approaches to study how chromatin and p53 family members interact with and influence each other.  
</p> 
		</div>
	</div>				
</div>
<img class="img-responsive center" src="/images/team/team_photo_2019_small.jpg">
<div class="bigspacer"></div>
<div class="bigspacer"></div>

<div class="row">
	<div class="col-md-12">
		<div class="head">
			<a class="off" href="/news/">Recent News</a>
		</div>
		<div class="spacer"></div>
	</div>
</div>

<div class="row">
	{% for post in site.categories.news limit:4 %}

	{% for member in site.categories.team %}
		{% if member.title == post.author %}
			{% assign author = member %}
		{% endif %}
	{% endfor %}

	<div class="col-md-3 reduced-gutter">
		<div class="pad-left">
			<div class="note">
				<i class="fa fa-comment-o fa-fw"></i>
				<a class="off" href="{{ post.url }}">
				{{ post.title }}
				</a>
			</div>
			<div class="smallspacer"></div>
			<div class="smallnote">
				Posted
				{{ post.date | date: "%-d %b %Y" }}
        {% if post.author %}
        by <a class="off" href="
          {% for member in site.categories.team %}
            {% if member.title == post.author %}
              {{ member.url }}
            {% endif %}
          {% endfor %}
        ">
        {{ post.author }}
        </a>
        {% endif %}
        {% if post.authors %}
        by
        <a class="off" href="
          {% for member in site.categories.team %}
            {% if member.title == post.authors.first %}
              {{ member.url }}
            {% endif %}
          {% endfor %}
        ">
        {{ post.authors.first }}
        </a>
        and
        <a class="off" href="
          {% for member in site.categories.team %}
            {% if member.title == post.authors.last %}
              {{ member.url }}
            {% endif %}
          {% endfor %}
        ">
        {{ post.authors.last }}
        </a>
        {% endif %}
			</div>
			<div class="bigspacer"></div>
		</div>
	</div>
	{% endfor %}
</div>

<div class="spacer"></div>

<div class="row">
	<div class="col-md-12">
		<div class="head">
			<a class="off" href="/papers/">Recent Papers</a>
		</div>
		<div class="spacer"></div>
	</div>
</div>

<div class="row">
	{% for paper in site.categories.papers limit:4 %}
	<div class="col-md-3 reduced-gutter">
		<div class="pad-left">
			<div class="note">
				<i class="fa fa-file-text-o fa-fw"></i>
				<a class="off" href="{{ paper.url }}">
				{{ paper.title }}
				</a>
			</div>
			<div class="smallspacer"></div>
			<div class="smallnote">
				Posted
				{{ paper.date | date: "%-d %b %Y" }}
			</div>
			<div class="bigspacer"></div>
		</div>
	</div>
	{% endfor %}
</div>

<div class="spacer"></div>




