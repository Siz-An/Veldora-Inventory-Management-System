<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\DataExport;
use App\Models\StockRecord;
use App\Models\User;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Widgets\Box;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        $u = Admin::user();
        $company = Company::find($u->company_id);
        
        $title = $company ? $company->name . " - Dashboard" : "Dashboard";
        $currency = optional($company)->currency ?? 'USD';
    
        return $content
            ->title($title)
            ->description('Hello ' . $u->name)
            ->row(function (Row $row) use ($currency) {
                $row->column(3, function (Column $column) {
                    $count = User::where('company_id', Admin::user()->company_id)->count();
                    $box = new Box('Employees', '<h3 style="text-align:right; margin: 0; font-size: 40px; font-weight: 800" >' . $count . '</h3>');
                    $box->style('danger')->solid();
                    $column->append($box);
                });
    
                $row->column(3, function (Column $column) use ($currency) {
                    $total_sales = StockRecord::where('company_id', Admin::user()->company_id)->sum('total_sales');
    
                    $box = new Box('Todays sales', '<h3 style="text-align:right; margin: 0; font-size: 40px; font-weight: 800" >'
                        . $currency . " " . number_format($total_sales) .
                        '</h3>');
                    $box->style('danger')->solid();
                    $column->append($box);
                });
            });
    }
    
}
