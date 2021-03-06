
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
<div class="row center">
    <div class="col-sm-10 background-white" style="padding: 50px;">
        <div class="page-header">

            <h1>Dungeons & Dragons</h1>

        </div>
        <div>
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="name" class="form-control" id="name">
                </div>
                <div class="form-group">
                    <label>Class:</label>
                    <div>
                        <select class="selectpicker" id="classSelect" value="{{class}}">
                            <optgroup label="select">
                                <option>Fighter</option>
                                <option>Cleric</option>
                                <option>Wizard</option>
                                <option>Thief</option>
                            </optgroup>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Race:</label>
                    <div>
                        <select class="selectpicker" id="raceSelect">
                            <optgroup label="select">
                                <option>Human</option>
                                <option>Dwarf</option>
                                <option>Elf</option>
                                <option>Half-elf</option>
                            </optgroup>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Strength:</label>
                    <div class="row">

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="strength_stat">
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control"  disabled="disabled" id="strength_mod">
                        </div>
                        <div class="col-sm-3">
                            <button id="strength_roll" class="form-control btn btn-info">roll</button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label>Dexterity:</label>
                    <div class="row">

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="dex_stat">
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" disabled="disabled" id="dex_mod">
                        </div>
                        <div class="col-sm-3">
                            <button id="dex_roll" class="form-control btn btn-info">roll</button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label>Constitution:</label>
                    <div class="row">
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="con_stat">
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" disabled="disabled" id="con_mod">
                        </div>
                        <div class="col-sm-3">
                            <button id="con_roll" class="form-control btn btn-info">roll</button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label>Intelligence:</label>
                    <div class="row">

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="intl_stat">
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" disabled="disabled" id="intl_mod">
                        </div>
                        <div class="col-sm-3">
                            <button id="intl_roll" class="form-control btn btn-info">roll</button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label>Wisdom:</label>
                    <div class="row">

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="wsdm_stat">
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" disabled="disabled" id="wsdm_mod">
                        </div>
                        <div class="col-sm-3">
                            <button id="wsdm_roll" class="form-control btn btn-info">roll</button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label>Charisma:</label>
                    <div class="row">
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="charisma_stat">
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" disabled="disabled" id="charisma_mod">
                        </div>
                        <div class="col-sm-3">
                            <button id="charisma_roll" class="form-control btn btn-info">roll</button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label>AC:</label>
                    <div class="row">
                        <div class="col-sm-5">
                            <input type="text" disabled="disabled" class="form-control" id="ac">
                        </div>

                    </div>
                </div>
                <button type="button" class="btn btn-default" id="submitBtn">Submit</button>
            </form>
        </div>


    </div>
</div>
</body>
</html>