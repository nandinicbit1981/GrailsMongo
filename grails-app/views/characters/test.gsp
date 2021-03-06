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
<div class="center background-white row">
    <div class="col-sm-10">
        <form class="form-horizontal">
            <div class="form-group">
                <label for="name">Name:</label>
                ${characters.name}
            </div>
            <div class="form-group">
                <label>Class:</label>
                <div>
                    ${characters.className}
                </div>
            </div>

            <div class="form-group">
                <label>Race:</label>
                <div>
                    ${characters.race}
                </div>
            </div>

            <div class="form-group">
                <div>
                    <label>Strength:</label>
                </div>

                <div class="row">
                    <div class="col-sm-2">
                        Stat:  ${characters.strength_stat}
                    </div>
                    <div class="col-sm-2">
                        Mod : ${characters.strength_mod}
                    </div>
                </div>

            </div>

            <div class="form-group">
                <div>
                    <label>Dexterity:</label>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        Stat:  ${characters.dex_stat}
                    </div>
                    <div class="col-sm-2">
                        Mod:  ${characters.dex_mod}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div>
                    <label>Constitution:</label>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        Stat:  ${characters.con_stat}
                    </div>
                    <div class="col-sm-2">
                        Mod:  ${characters.con_mod}
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div>
                    <label>Intelligence:</label>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        Stat:  ${characters.intl_stat}
                    </div>
                    <div class="col-sm-2">
                        Mod:  ${characters.intl_mod}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div>
                    <label>Wisdom:</label>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        Stat:  ${characters.wsdm_stat}
                    </div>
                    <div class="col-sm-2">
                        Mod:  ${characters.wsdm_mod}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div>
                    <label>Charisma:</label>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        Stat:  ${characters.chr_stat}
                    </div>
                    <div class="col-sm-2">
                        Mod: ${characters.chr_mod}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label>AC:</label>
                ${characters.ac}
            </div>
        </form>
    </div>
</div>
</body>
</html>