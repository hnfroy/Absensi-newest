@extends('layout.master2')

@section('content')
<body>
<div class="row">
		<div class="container">
			<h2 class="text-center my-5">Upload Bukti dan Keterangan</h2>
        </div>
</div>
</body>
<div class="content">
    <div class="row justify-content-center ">
        <div class="col-lg-7">
        <div class="card card-info card-outline">
        <div class="card-header"><center>Bukti</center></div>
        <div class="card-body">

				@if(count($errors) > 0)
				<div class="alert alert-danger">
					@foreach ($errors->all() as $error)
					{{ $error }} <br/>
					@endforeach
				</div>
				@endif

				<form action="/upload/proses" method="POST" enctype="multipart/form-data">
					{{ csrf_field() }}

					<div class="form-group">
						<b>Keterangan</b>
						<textarea class="form-control" name="keterangan"></textarea>
					</div>
                    
                    <div class="form-group">
						<b>File Gambar</b><br/>
						<input type="file" name="file">
					</div>
					<center>
					<input type="submit" value="Upload" class="btn btn-primary">
					</center>
				</form>
        </div>
    </div>
    </div>
    </div>
</div>
@endsection