<title>Dashboard</title>
<div class="row">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-12">
    <div class="row">
      <div class="col-lg-6 col-6">
        <div class="small-box bg-danger">
          <div class="inner">
          <?php $query = mysqli_query($koneksi,'select * from tbl_siswa'); ?>
            <h3><?php echo mysqli_num_rows($query) ?></h3>
            <p>Siswa</p>
          </div>
          <div class="icon">
            <i class="ion ion-person-add"></i>
          </div>
          <a href="index.php?url=tampil-siswa" class="small-box-footer">Detail Siswa <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <div class="col-lg-6 col-6">
        <div class="small-box bg-warning">
          <div class="inner">
          <?php $query = mysqli_query($koneksi,'select * from tbl_bayar where month(tgl_bayar) = "'.date('m').'"')or die(mysqli_error($koneksi)); ?>
            <h3><?php echo mysqli_num_rows($query) ?></h3>
            <p>Pembayaran</p>
          </div>
          <div class="icon">
            <i class="ion ion-person-add"></i>
          </div>
          <a href="index.php?url=tampil-manajemen-pembayaran" class="small-box-footer">Pembayaran <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
    </div>
</div>