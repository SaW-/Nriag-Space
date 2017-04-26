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
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix web-development all" data-myorder="2">
					<div class="single-work">
						<img src="img/works/1.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" type="button" data-toggle="modal" data-target="#myModal1"><i class="fa fa-search-plus"></i></a>
							<!-- Modal -->
						  <div class="modal fade" id="myModal1" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/1.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix website-customization all" data-myorder="1">
					<div class="single-work">
						<img src="img/works/2.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal2" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/2.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix web-design all" data-myorder="3">
					<div class="single-work">
						<img src="img/works/3.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal3"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal3" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/3.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix website-customization all" data-myorder="5">
					<div class="single-work">
						<img src="img/works/4.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal4"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal4" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/4.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix web-design all" data-myorder="4">
					<div class="single-work">
						<img src="img/works/5.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal5"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal5" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/5.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix web-development all" data-myorder="6">
					<div class="single-work">
						<img src="img/works/6.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal6"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal6" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/6.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix website-customization all" data-myorder="7">
					<div class="single-work">
						<img src="img/works/7.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal7"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal7" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2" data-myorder="8">
							        	<img src="img/works/7.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix web-development all" data-myorder="9">
					<div class="single-work">
						<img src="img/works/8.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal8"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal8" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/8.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix web-design all" data-myorder="8">
					<div class="single-work">
						<img src="img/works/9.jpg" alt="#">
						<div class="overlay">
							<h3>Project Title Here</h3>
							<a href="#" data-toggle="modal" data-target="#myModal9"><i class="fa fa-search-plus"></i></a>
							<div class="modal fade" id="myModal9" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>Project title</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        	<img src="img/works/9.jpg" alt="#">
							        	<ul class="list-inline">
							        		<li>Client: Shaped Theme</li>
							        		<li>Finished Date: November 15, 2015 </li>
							        		<li>Technology: HTML, CSS, JS and Bootstrap 3</li>
							        	</ul>
							          	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur accusantium in, provident officiis labore, iste fugiat quas ratione error accusamus possimus dolor aliquid ipsum hic! Quibusdam recusandae, voluptatem totam fugit ad, est nulla necessitatibus expedita amet molestias dignissimos, praesentium sequi. A reprehenderit, vitae ducimus facere sequi, pariatur repudiandae voluptates earum reiciendis veniam blanditiis. Sapiente quos animi numquam incidunt totam delectus voluptates illum ullam tempora labore, earum perferendis ab cupiditate facere quia eaque error id placeat blanditiis qui amet odio ipsam, unde? Maiores enim minima omnis sequi ipsum vel eum mollitia, sapiente totam deleniti culpa libero temporibus non consequatur qui in.</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!-- end of portfolios -->
 
@endsection
