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
			<h2 class="text-center my-4">Validasi Kehadiran</h2>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p><center>{{ $message }}</center></p>
        </div>
    @else ($message = Session::get('warning'))
        <div class="alert alert-warning">
            <p><center>{{ $message }}</center></p>
        </div>
    @endif
    </body>
    <div class="content" style="padding-left:23rem;">
        <div class="col-6 text-center">
        <div class="row justify-content-center">
            <div class="col-12">
                <table class="table table-bordered" style="background-color: #fff;">
                    
                    @foreach ($presensi as $presensi)
                    <tr>
                        <th>Jam Masuk</th>
                        <th>Jam Keluar</th>
                    </tr>
                    <tr>
                        <td>{{ $presensi->jammasuk }}
                        </td>
                        <td>{{ $presensi->jamkeluar }}
                        </td>
                        
                    </tr>
                    @endforeach
                    
                </table>
                </div><tr>
                            <form method="POST" action="{{ route('logout') }}">
                            @csrf
                            <a class="nav-link"  :href="route('logout')"
                                        onclick="event.preventDefault();
                                        this.closest('form').submit();">
                                        <button class="btn btn-primary">
                                 <span>{{ __('Log Out') }}</span></button>
                            </a>
                            </form>
                        </tr>
                
            </div>
        </div>
    </div>
@endsection