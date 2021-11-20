@extends('layout.master2')

@section('content')
    <head>
    <script src="{{ asset('Js/jam.js') }}"></script>
    <style>
        #watch {
            color: rgb(252, 150, 65);
            position: absolute;
            z-index: 1;
            height: 40px;
            width: 700px;
            overflow: show;
            margin: auto;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            font-size: 10vw;
            -webkit-text-stroke: 3px rgb(210, 65, 36);
            text-shadow: 4px 4px 10px rgba(210, 65, 36, 0.4),
                4px 4px 20px rgba(210, 45, 26, 0.4),
                4px 4px 30px rgba(210, 25, 16, 0.4),
                4px 4px 40px rgba(210, 15, 06, 0.4);
        }
    </style>

    </head>

    <body class="hold-transition sidebar-mini" onload="realtimeClock()">
    <div class="row">
		<div class="container">
			<h2 class="text-center my-4">Absensi</h2>
        </div>
    </div>
    </body>
    <div class="content">
        <div class="row justify-content-center">
                    <div class="card card-info card-outline">
                        <div class="card-header"><center>Presensi Masuk</center></div>
                        <div class="card-body">
                            <form action="{{route('simpan.masuk')}}" method="post">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <center>
                                        <label id="clock" style="font-size: 100px; color: #0A77DE;
                                                    text-shadow: 4px 4px 10px #36D6FE,
                                                    4px 4px 20px #36D6FE,
                                                    4px 4px 30px#36D6FE,
                                                    4px 4px 40px #36D6FE;"> -->
                                        </label>
                                    </center>
                                </div>
                                <center>
                                    <div class="form-group">
                                        <a>
                                    <button type="submit" class="btn btn-primary" >Masuk</button>
                                        </a>
                                </div>
                                    <div class="form-group">
                                        <a class="btn btn-primary" href="{{url('upload')}}">Tidak Masuk</a>
                                    </div>
                                </center>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
@endsection