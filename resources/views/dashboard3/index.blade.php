@extends('layout.master2')

@section('content')
    <body>
    <div class="row">
		<div class="container">
			<h2 class="text-center my-4">Info Kehadiran</h2>
        </div>
    </div>
    </body>
            <!-- Main content -->
            <div class="content" style="padding-left:23rem;">
                    <div class="col-6 text-center">
                    <div class="row justify-content-center">
                    <div class="col-12">
                    <table class="table table-bordered" style="background-color: #fff;">
                        <tr>
                            <th>Jam Masuk</th>
                        </tr>
                        @foreach ($presensi as $presensi)
                        <form action="{{route('dashboard5.store')}}" method="POST">
                        @csrf
                        <input type="hidden" name="jammasuk" value="{{$presensi->jammasuk }}">
                        <input type="hidden" name="jamkeluar" value="{{$presensi->jamkeluar }}">
                        <tr>
                            <td>{{$presensi->jammasuk }}</td>
                        </tr>
                        <tr>
                            <th>Jam Selesai </th>
                        </tr>
                        <tr>
                            <td>{{ $presensi->jamkeluar }}</td>
                        </tr>
                        <tr>
                            <td>
                            <center>
                                <button class="btn btn-primary" type="submit">Confirm</button>
                            </center>
                            </td>
                        </tr>
                        </form>
                        @endforeach
                        
                    </table>
                    </div>
                    </div>
                </div>
            </div>
            <!-- /.content -->
        </div>
    
@endsection