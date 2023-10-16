@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;
    
    // $formInputAttr = config('zvn.template.form_input_tags');
    $formInputAttr = config('zvn.template.form_input');
    $formLabelAttr = config('zvn.template.form_label');
    
    $elements = [
        [
            'label' => Form::label('facebook', 'Facebook', $formLabelAttr),
            'element' => Form::text('facebook', $item['facebook'] ?? '', $formInputAttr),
        ],
        [
            'label' => Form::label('youtube', 'Youtube', $formLabelAttr),
            'element' => Form::text('youtube', $item['youtube'] ?? '', $formInputAttr),
        ],
        [
            'label' => Form::label('google', 'Google', $formLabelAttr),
            'element' => Form::text('google', $item['google'] ?? '', $formInputAttr),
        ],
        [
            'element' => Form::submit('Save', ['class' => 'btn btn-success']),
            'type' => 'btn-submit',
        ],
    ];
@endphp

<div class="x_panel">
    <div class="x_content">
        {{ Form::open([
            'method' => 'POST',
            'url' => route("$controllerName/save"),
            'accept-charset' => 'UTF-8',
            'enctype' => 'multipart/form-data',
            'class' => 'form-horizontal form-label-left',
            'files' => true,
            'id' => 'main-form',
        ]) }}
        <input type="hidden" name="task" value="social">

        {!! FormTemplate::show($elements) !!}
        {{ Form::close() }}
    </div>
</div>
