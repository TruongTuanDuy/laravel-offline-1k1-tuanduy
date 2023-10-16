@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;
    
    $formInputAttr = config('zvn.template.form_input');
    $formLabelAttr = config('zvn.template.form_label');
    
    $elements = [
        [
            'label' => Form::label('email_bcc', ' ', $formLabelAttr),
            'element' => Form::textarea('email_bcc', $item['email_bcc']['email_bcc'] ?? '', $formInputAttr),
        ],
        [
            'element' => Form::submit('Save', ['class' => 'btn btn-success']),
            'type' => 'btn-submit',
        ],
    ];
@endphp


<div class="x_panel">
    <div class="x_content">
        @include('admin.templates.x_title', ['title' => 'BCC'])
        {{ Form::open([
            'method' => 'POST',
            'url' => route("$controllerName/save"),
            'accept-charset' => 'UTF-8',
            'enctype' => 'multipart/form-data',
            'class' => 'form-horizontal form-label-left',
            'files' => true,
            'id' => 'main-form',
        ]) }}
        <input type="hidden" name="task" value="email_bcc">

        {!! FormTemplate::show($elements) !!}
        {{ Form::close() }}
    </div>
</div>
