<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\RssModel;
use App\Helpers\Feed;
use Illuminate\Support\Facades\DB;

use function PHPUnit\Framework\isEmpty;

class RssController extends Controller
{
    private $pathViewController = 'news.pages.rss.';  // slider
    private $controllerName     = 'rss';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        view()->share('title', 'Tin tức tổng hợp');
        $rssModel   = new RssModel();
        $rssTime = time();
        // $request->session()->flush();
        // $request->session()->forget('rss_time');
        dd($request->session()->get('rss_time'));

        if ((DB::table('rss_article'))->count() == 0) {
            dd('0');
            $itemsRss   = $rssModel->listItems(null, ['task'   => 'news-list-items']);
            $dataRss = Feed::read($itemsRss);
            $itemsRss   = $rssModel->saveRss($dataRss, ['task'   => 'add-rss']);
        } elseif ($request->session()->has('rss_time')) {
            dd($request->session()->get('rss_time'));
            if (($request->session()->get('rss_time') + 3600 < $rssTime)) {
                dd('1.1.1');
                $itemsRss   = $rssModel->listItems(null, ['task'   => 'news-list-items']);
                $dataRss = Feed::read($itemsRss);
                $itemsRss   = $rssModel->saveRss($dataRss, ['task'   => 'add-rss']);
            }
            dd('1.1.0');
        };

        dd('1.0');
        $request->session()->put('rss_time', $rssTime);
        $data   = $rssModel->listRss(null, ['task'   => 'news-list-rss']);
        return view($this->pathViewController .  'index', [
            'items'   => $data
        ]);
    }

    public function getGold()
    {
        $itemsGold = Feed::getGold();
        return view($this->pathViewController .  'child-index.box-gold', [
            'itemsGold' => $itemsGold
        ]);
    }

    public function getCoin()
    {
        $itemsCoin = Feed::getCoin();
        return view($this->pathViewController .  'child-index.box-coin', [
            'itemsCoin' => $itemsCoin
        ]);
    }
}
