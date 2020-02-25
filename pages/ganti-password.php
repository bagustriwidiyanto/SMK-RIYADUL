<div class="row">
  <div class="col-md-10 offset-md-1">
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Ganti Password</h3>
        <div class="card-tools">
          <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
            <i class="fas fa-minus"></i></button>
        </div>
      </div>
      <div class="card-body">
      <form action="" method="post">
        <div class="form-group">
          <label for="inputClientCompany">Username</label>
          <input type="text" class='form-control' name="username" required >
        </div>
        <div class="form-group">
          <label for="inputClientCompany">Password Lama</label>
          <input type="password" class='form-control' name="password_lama" required >
        </div>
        <div class="form-group">
          <label for="inputClientCompany">Password Baru</label>
          <input type="password" class='form-control' name="password_baru" required >
        </div>
        <div class="form-group">
          <input type="submit" value="Submit" name='edit' class='form-control'>
        </div>
      </form>
      </div>
    </div>
  </div>
</div>
<?php
if(isset($_POST['edit'])){
    $param =0;
    $query1 = mysqli_query($koneksi,'select * from tbl_user');
    while($data = mysqli_fetch_assoc($query1)){
        if ($_POST['username']==$data['username']&&$_POST['password_lama']==$data['password']) {
            $query=mysqli_query($koneksi, 'update tbl_user set password = "'.$_POST['password_baru'].'" where username="'.$_POST['username'].'"')or die(mysqli_error($koneksi));
            if($query){
                ?> <script>
                location.replace('index.php?url=ganti-password');
                alert('Berhasil Ganti Password !');
                </script><?php
            }else{
                ?> <script> alert('Gagal Ganti Password!')</script><?php
            }
            $param ++;
            break;
        }
    }
    if($param == 0 ){
        echo "<script> alert('Anda salah memasukkan username atau password !'); location.replace('index.php?url=ganti-password')</script>";

    }
}
?>