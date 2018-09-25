
@extends('layouts.app')

@section('content')
 
<!-- CONTACT SECTION -->
<head>
     <style type="text/css">
          /*---------------------------------------
  Contact section              
-----------------------------------------*/

.contact-info .fa {
  padding-right: 5px;
}

#contact .form-control {
  border: none;
  border-bottom: 2px solid #f0f0f0;
  border-radius: 0px;
  box-shadow: none;
  font-size: 18px;
  margin-top: 10px;
  margin-bottom: 10px;
  -webkit-transition: all ease-in-out 0.4s;
  transition: all ease-in-out 0.4s;
}

#contact .form-control:focus {
  border-bottom-color: #999999;
}

#contact input {
  height: 55px;
}

#contact button#submit {
  background: #2b2b2b;
  border: none;
  border-radius: 50px;
  color: #ffffff;
  height: 50px;
  margin-top: 24px;
}

#contact button#submit:hover {
  background: #7682cc;
  color: #ffffff;
}


     </style>
</head>
<form action="/contact/s" method="post" >
<section id="contact" class="parallax-section">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <!-- SECTION TITLE -->
                    <div class="wow fadeInUp section-title" data-wow-delay="0.2s">
                         <h2>Get in touch</h2>
                       <p> Please don't hesetitate to contact us for any issue, tru our social media acconts or directly by the attached form.</p>
                    </div>
               </div>

               <div class="col-md-7 col-sm-10">
                    <!-- CONTACT FORM HERE -->
                    <div class="wow fadeInUp" data-wow-delay="0.4s">
                        <form id="contact-form" action="#" method="get">
                              <div class="col-md-6 col-sm-6">
                                   <input type="text" class="form-control" name="name" placeholder="Name" required="">
                              </div>
                              <div class="col-md-6 col-sm-6">
                                   <input type=" " class="form-control" name="type" placeholder="Query Type" required="">
                              </div>
                              <div class="col-md-12 col-sm-12">
                                   <textarea class="form-control" rows="5" name="message" placeholder="Message" required=""></textarea>
                              </div>
                              <div class="col-md-offset-8 col-md-4 col-sm-offset-6 col-sm-6">
                                   <button id="submit" type="submit" class="form-control" name="submit">Send Message</button>
                              </div>
                        </form>
                    </div>
               </div>

               <div class="col-md-5 col-sm-8">
                    <!-- CONTACT INFO -->
                    <div class="wow fadeInUp contact-info" data-wow-delay="0.4s">
                         <div class="section-title">
                              <h2>Contact Info</h2>
                              
                         </div>
                         
                         <p><i class="fa fa-map-marker"></i>  182-21 150th Avenue Springfield Gardens 11413 , New York City, USA</p>
                         <p><i class="fa fa-comment"></i> <a href="mailto:info@moviex.net">info@moviex.net</a></p>
                         
                    </div>
               </div>

          </div>
     </div>
</section>
</form>
@endsection