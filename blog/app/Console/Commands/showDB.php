<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class showDB extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'showDB';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Show me current Database';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        // return 0;
        echo "Hello ";
        $this->info("My Current DB is : " . DB::connection()->getDatabaseName());
    }
}
