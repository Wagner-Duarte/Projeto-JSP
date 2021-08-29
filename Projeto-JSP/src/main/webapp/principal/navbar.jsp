<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <nav class="navbar header-navbar pcoded-header">
              <div class="navbar-wrapper">
                  <div class="navbar-logo">
                      <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                          <i class="ti-menu"></i>
                      </a>
                      <div class="mobile-search waves-effect waves-light">
                          <div class="header-search">
                              
                          </div>
                      </div>
                     
                          <img class="img-fluid" src="<%= request.getContextPath() %>/assets/images/jsp.png" width="40px" height="40px" alt="Theme-Logo" />
                      </a>
                      
                  </div>
                
                  <div class="navbar-container container-fluid">
                      <ul class="nav-left">
                          <li>
                              <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                          </li>
                          <li class="header-search">
                              <div class="main-search morphsearch-search">
                                  <div class="input-group">
                                      
                                      <input type="text" class="form-control">
                                      
                                  </div>
                              </div>
                          </li>
                          <li>
                              
                          </li>
                      </ul>
                      <ul class="nav-right">
                          <li class="header-notification">
                              <a href="#!" class="waves-effect waves-light">
                                  
                                  <span class="badge bg-c-red"></span>
                              </a>
                           
                          </li>
                          <li class="user-profile header-notification">
                              <a href="#!" class="waves-effect waves-light">
                                  <img src="<%= request.getContextPath() %>/assets/images/avatar-blank.jpg" class="img-radius" alt="User-Profile-Image">
                                  <span><%= request.getSession().getAttribute("usuario") %></span>
                                  <i class="ti-angle-down"></i>
                              </a>
                              <ul class="show-notification profile-notification">
                    
                                  <li class="waves-effect waves-light">
                                      <a href="<%=request.getContextPath() %>/ServletLogin?acao=logout">
                                          <i class="ti-layout-sidebar-left"></i> Logout
                                      </a>
                                  </li>
                              </ul>
                          </li>
                      </ul>
                  </div>
              </div>
          </nav>