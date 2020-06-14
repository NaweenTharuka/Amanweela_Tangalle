<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- sidebar -->
    <div class="ui sidebar inverted vertical menu sidebar-menu" id="sidebar">
      <div class="item">
        <div class="header">General</div>
        <div class="menu">
          <a class="item">
            <div>
              <i class="icon tachometer alternate"></i>
              Dashboard
            </div>
          </a>
        </div>
      </div>
      <div class="item">
        <div class="header">
          Administration
        </div>
        <div class="menu">
          <a class="item">
            <div><i class="cogs icon"></i>Settings</div>
          </a>
          <a class="item">
            <div><i class="users icon"></i>Team</div>
          </a>
        </div>
      </div>

      <a href="#" class="item">
        <div>
          <i class="icon chart line"></i>
          Charts
        </div>
      </a>

      <a class="item">
        <div>
          <i class="icon lightbulb"></i>
          Apps
        </div>
      </a>
      <div class="item">
        <div class="header">Other</div>
        <div class="menu">
          <a href="#" class="item">
            <div>
              <i class="icon envelope"></i>
              Messages
            </div>
          </a>

          <a href="#" class="item">
            <div>
              <i class="icon calendar alternate"></i>
              Calendar
            </div>
          </a>
        </div>
      </div>
    </div>

    <!-- sidebar -->
    <!-- top nav -->

    <nav class="ui top fixed inverted menu">
      <div class="left menu">
        <a href="#" class="sidebar-menu-toggler item" data-target="#sidebar">
          <i class="sidebar icon"></i>
        </a>
        <a href="#" class="header item">
          Semantic UI
        </a>
      </div>

      <div class="right menu">
        <a href="#" class="item">
          <i class="bell icon"></i>
        </a>
        <div class="ui dropdown item">
          <i class="user cirlce icon"></i>
          <div class="menu">
            <a href="#" class="item">
              <i class="info circle icon"></i> Profile</a
            >
            <a href="#" class="item">
              <i class="wrench icon"></i>
              Settings</a
            >
            <a href="admin_logout.jsp" class="item">
              <i class="sign-out icon"></i>
              Logout
            </a>
          </div>
        </div>
      </div>
    </nav>

    <!-- top nav -->
</body>
</html>