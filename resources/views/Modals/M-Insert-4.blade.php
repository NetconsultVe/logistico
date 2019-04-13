<div id="M-Insert-5" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" id="ModalWidth">
        <div class="modal-content">
            <div class="modal-header">
                <i align="right">{{ $_ENV['APP_NAME'] }}</i>
            </div>
            <div class="modal-body">
                @yield('content-M5')
            </div>
            <div class="modal-footer">
                @yield('footer-M5')
            </div>
        </div>
    </div>
</div>