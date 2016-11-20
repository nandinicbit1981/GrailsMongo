<html>
<head>
    <title>Crush the Rust</title>
</head>

<asset:javascript src="jquery.min.js"/>
<asset:javascript src="main.js"/>
<asset:javascript src="bootstrap.js"/>
<asset:stylesheet src="main.css"/>
<asset:stylesheet src="bootstrap.css"/>
<asset:stylesheet src="bootstrap.css"/>
<asset:stylesheet src="bootstrap-theme.min.css"/>
<asset:stylesheet src="main.css"/>
<asset:stylesheet src="style.css"/>
<body class="background-dd">
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand text-white" href="${resource()}" >
                <span class="text-white h4">Dungeons & Dragons</span>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="characters/" >
                        <span class="text-white">all</span>
                    </a>

                </li>
                <li>
                    <a href="characters/createForm">
                        <span class="text-white">create</span>
                    </a>
                    %{--<a href="/characters/create"><span class="text-white">Create</span></a>--}%
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="row center background-white" style="margin-top: 100px;">
    <div class="col-md-8 ">
        <table class="table-responsive table">
            <thead>
            <tr>
                <th>id</th>
                <th>Name</th>
                <th>Class</th>
                <th>Race</th>
                <th>&nbsp;</th>
                <th>&nbsp;</th>
                <th>&nbsp;</th>
            </tr>
            </thead>
            <tbody>
           <g:each var="c" in="${characters}">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.className}</td>
                <td>${c.race}</td>
                <td><a href="/characters/html/${c.id}" class="view-character" data-id="${c.id}">view</a></td>
                <td><a href="/characters/json/${c.id}">json</a></td>
                <td><a href="/characters/editForm/${c.id}">edit</a></td>
            </tr>
           </g:each>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>