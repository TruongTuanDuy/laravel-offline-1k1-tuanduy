@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;
    
    // dd($item);
    
    $formInputAttr = config('zvn.template.form_input');
    $formCKEditorAttr = config('zvn.template.form_ckeditor');
    $formLabelAttr = config('zvn.template.form_label');
    
    $logo = $item['logo'] ?? '';
    $logoElement = sprintf(
        '
        <div class="input-group">
            <span class="input-group-btn">
                <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                <i class="fa fa-picture-o"></i> Choose
                </a>
            </span>
            <input id="thumbnail" class="form-control" type="text" name="logo" value="%s">
        </div>
        <img id="holder" src="%s" style="margin-top:15px;max-height:100px;">
    ',
        $logo,
        asset($logo),
    );
    
    $elements = [
        [
            'label' => Form::label('logo', 'Logo', $formLabelAttr),
            'element' => $logoElement,
        ],
        [
            'label' => Form::label('hotline', 'Hotline', $formLabelAttr),
            'element' => Form::text('hotline', $item['hotline'] ?? '', $formInputAttr),
        ],
        [
            'label' => Form::label('working_time', 'Working time', $formLabelAttr),
            'element' => Form::text('working_time', $item['working_time'] ?? '', $formInputAttr),
        ],
        [
            'label' => Form::label('copyright', 'Copyright', $formLabelAttr),
            'element' => Form::text('copyright', $item['copyright'] ?? '', $formInputAttr),
        ],
        [
            'label' => Form::label('address', 'Address', $formLabelAttr),
            'element' => Form::text('address', $item['address'] ?? '', $formInputAttr),
        ],
        [
            'label' => Form::label('introduce', 'Introduce', $formLabelAttr),
            'element' => Form::textarea('introduce', $item['introduce'] ?? '', $formCKEditorAttr),
        ],
        [
            'label' => Form::label('map', 'Google map', $formLabelAttr),
            'element' => Form::textarea('map', $item['map'] ?? '', $formInputAttr),
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
        <input type="hidden" name="task" value="general">
        {!! FormTemplate::show($elements) !!}
        {{ Form::close() }}
    </div>
</div>
