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
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand text-white" href="${request.contextPath}" >
                <span class="text-white h4">Dungeons & Dragons</span>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="${request.contextPath}/characters/" >
                        <span class="text-white">all</span>
                    </a>

                </li>
                <li>
                    <a href="${request.contextPath}/characters/createForm">
                        <span class="text-white">create</span>
                    </a>
                    %{--<a href="/characters/create"><span class="text-white">Create</span></a>--}%
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>