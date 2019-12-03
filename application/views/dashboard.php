<?php $this->load->view('head'); ?>
<aside class="right-side">
<!-- Main content -->
    <section class="content">
        <div class="row" style="margin-bottom:5px;">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                <center>
                    <h3>SELAMAT DATANG DI SISTEM KARYAWAN EMCORP STUDIO</h3>
                </center>
            </div>
            </div>
        </div>
<!--             
           
             
        </div>

        <!-- Main row -->
        <?php if($this->session->userdata('bagian') == 'hrd' && $this->session->userdata('bagian') == 'direktur'){ ?>
        <div class="row">
            <div class="col-md-12">
            <!--earning graph start-->
            <section class="panel">
            <header class="panel-heading">
            Grafik Dashboard
            </header>
                <div class="panel-body">
                <canvas id="linechart" width="100%" height="200"></canvas>
                </div>
            </section>
            <!--earning graph end-->
            </div>
        </div>
        <?php } ?>
        <!-- row end -->
        </section><!-- /.content -->
        <div class="footer-main">
            Copyright &copy; SISTEM KARYAWAN EMCORP STUDIO, <?php echo date('Y'); ?>
            </div>
    </aside><!-- /.right-side -->
</div><!-- ./wrapper -->

<?php $this->load->view('foot'); ?>