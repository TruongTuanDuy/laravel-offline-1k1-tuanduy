// import Tagify from '@yaireo/tagify'
// import './styles.scss' // imports tagify SCSS file from within

$(document).ready(function () {
    let $btnSearch = $("button#btn-search");
    let $btnClearSearch = $("button#btn-clear-search");

    let $inputFilterField = $("input[name  = filter_field]");
    let $inputSearchField = $("input[name  = search_field]");
    let $inputSearchValue = $("input[name  = search_value]");
    let $selectChangeAttr = $("select[name = select_change_attr]");
    let $selectChangeCategory = $("select[name = select_change_category]");

    // The DOM element you wish to replace with Tagify
    let inputFacebook = document.querySelector('input[name=facebook]');
    let inputYoutube = document.querySelector('input[name=youtube]');
    let inputGoogle = document.querySelector('input[name=google]');
    let inputBcc = document.querySelector('textarea[name=email_bcc]');
    // initialize Tagify on the above input node reference
    new Tagify(inputFacebook);
    new Tagify(inputYoutube);
    new Tagify(inputGoogle);
    new Tagify(inputBcc);

    $("a.select-field-category").click(function (e) {
        e.preventDefault();

        let field = $(this).data("field");
        let fieldName = $(this).data('value');
        $("button.btn-active-field-category").html(
            fieldName + ' <span class="caret"></span>'
        );
        $inputFilterField.val(fieldName);

        var pathname = window.location.pathname;
        let params = ["filter_status"];
        let searchParams = new URLSearchParams(window.location.search); // ?filter_status=active

        let link = "";
        $.each(params, function (key, param) {
            // filter_status
            if (searchParams.has(param)) {
                link += param + "=" + searchParams.get(param) + "&"; // filter_status=active
            }
        });

        let filter_field = $inputFilterField.val();
        window.location.href =
            pathname +
            "?" +
            link +
            "filter_category=" +
            filter_field;
    });

    $("a.select-field").click(function (e) {
        e.preventDefault();

        let field = $(this).data("field");
        let fieldName = $(this).html();
        $("button.btn-active-field").html(
            fieldName + ' <span class="caret"></span>'
        );
        $inputSearchField.val(field);
    });

    $btnSearch.click(function () {
        var pathname = window.location.pathname;
        let params = ["filter_status", "filter_category"];
        let searchParams = new URLSearchParams(window.location.search); // ?filter_status=active

        let link = "";
        $.each(params, function (key, param) {
            // filter_status
            if (searchParams.has(param)) {
                link += param + "=" + searchParams.get(param) + "&"; // filter_status=active
            }
        });

        let search_field = $inputSearchField.val();
        let search_value = $inputSearchValue.val();

        if (search_value.replace(/\s/g, "") == "") {
            alert("Nhập vào giá trị cần tìm !!");
        } else {
            window.location.href =
                pathname +
                "?" +
                link +
                "search_field=" +
                search_field +
                "&search_value=" +
                search_value;
        }
    });

    $btnClearSearch.click(function () {
        var pathname = window.location.pathname;
        let searchParams = new URLSearchParams(window.location.search);

        params = ["filter_status", "filter_category"];

        let link = "";
        $.each(params, function (key, param) {
            if (searchParams.has(param)) {
                link += param + "=" + searchParams.get(param) + "&";
            }
        });

        window.location.href = pathname + "?" + link.slice(0, -1);
    });

    $(".btn-delete").on("click", function () {
        if (!confirm("Bạn có chắc muốn xóa phần tử?")) return false;
    });

    $(".status-ajax").on("click", function () {
        let url = $(this).data("url");
        let btn = $(this);
        let currentClass = btn.data("class");
        $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function (response) {
                btn.removeClass(currentClass);
                btn.addClass(response.statusObj.class);
                btn.html(response.statusObj.name);
                btn.data("url", response.link);
                btn.data("class", response.statusObj.class);
                btn.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            },
        });
    });

    $(".is-home-ajax").on("click", function () {
        let url = $(this).data("url");
        let btn = $(this);
        let currentClass = btn.data("class");
        $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function (response) {
                btn.removeClass(currentClass);
                btn.addClass(response.isHomeObj.class);
                btn.html(response.isHomeObj.name);
                btn.data("url", response.link);
                btn.data("class", response.isHomeObj.class);
                btn.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            },
        });
    });

    $selectChangeAttr.on("change", function () {
        let ele = $(this);
        let selectValue = $(this).val();
        let url = $(this).data("url");
        url = url.replace("value_new", selectValue);
        $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function (response) {
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            },
        });
    });

    $selectChangeCategory.on("change", function () {
        let ele = $(this);
        let selectValue = $(this).val();
        let url = $(this).data("url");
        url = url.replace("value_new", selectValue);
        $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function (response) {
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            },
        });
    });

    // var route_prefix = "/laravel-filemanager";
    // $('#lfm').filemanager('image', { prefix: route_prefix });

    $('#lfm').filemanager('image');

    // $('.tags').tagsInput({
    //     // 'autocomplete_url': url_to_autocomplete_api,
    //     // 'autocomplete': { option: value, option: value },
    //     // 'height': '100px',
    //     // 'width': '300px',
    //     // 'interactive': true,
    //     // 'defaultText': 'add a tag',
    //     // 'onAddTag': callback_function,
    //     // 'onRemoveTag': callback_function,
    //     // 'onChange': callback_function,
    //     // 'delimiter': [',', ';'],   // Or a string with a single delimiter. Ex: ';'
    //     // 'removeWithBackspace': true,
    //     // 'minChars': 0,
    //     // 'maxChars': 0, // if not provided there is no limit
    //     // 'placeholderColor': '#666666'
    // });


});
