<!-- Title Field -->
<div class="col-sm-12">
    {!! Form::label('title', 'Title:') !!}
    <p>{{ $post->title }}</p>
</div>

<!-- Description Field -->
<div class="col-sm-12">
    {!! Form::label('description', 'Description:') !!}
    <p>{{ $post->description }}</p>
</div>

<!-- Publish At Field -->
<div class="col-sm-12">
    {!! Form::label('publish_at', 'Publish At:') !!}
    <p>{{ $post->publish_at }}</p>
</div>

<!-- Author Id Field -->
<div class="col-sm-12">
    {!! Form::label('author_id', 'Author Id:') !!}
    <p>{{ $post->author_id }}</p>
</div>

<!-- Created At Field -->
<div class="col-sm-12">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{{ $post->created_at }}</p>
</div>

<!-- Updated At Field -->
<div class="col-sm-12">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{{ $post->updated_at }}</p>
</div>

