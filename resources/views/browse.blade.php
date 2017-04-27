@extends('layouts.app')

@section('content')
	<section class="works text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>My latest Works</h2>
					<ul class="list-inline">
						<li class="filter active" data-filter=".all">All</li>
						<li class="filter" data-filter=".web-development">Web Development</li>
						<li class="filter" data-filter=".web-design">Web Design</li>
						<li class="filter" data-filter=".website-customization">Website Customisation</li>
					</ul>
				</div>
				 @foreach($sattalite as $k => $v)
					<div class="col-md-4 col-sm-6 mix web-development all" data-myorder="2">
						<div class="single-work">
							<img src="img/works/1.jpg" alt="{{ URL::to('browse/'.$v->id) }}">
							<div class="overlay">
								<h3>{{$v->title}}</h3>
								<a href="{{ URL::to('browse/'.$v->id) }}" type="button" ><i class="fa fa-search-plus"></i></a>
							</div>
						</div>
					</div>
				 @endforeach
			</div>
		</div>
	</section><!-- end of portfolios -->
 
@endsection
