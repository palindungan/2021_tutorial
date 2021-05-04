<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', 'Title:') !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', 'Description:') !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

<!-- Publish At Field -->
<div class="form-group col-sm-6">
    {!! Form::label('publish_at', 'Publish At:') !!}
    {!! Form::text('publish_at', null, ['class' => 'form-control','id'=>'publish_at']) !!}
</div>

@push('page_scripts')
    <script type="text/javascript">
        $('#publish_at').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            useCurrent: true,
            sideBySide: true
        })
    </script>
@endpush

<!-- Author Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('author_id', 'Author Id:') !!}
    {!! Form::select('author_id', $userItems, null, ['class' => 'form-control custom-select']) !!}
</div>
